(function ($) {
	// フォーム以外で読み込まれた場合に処理を終了
	if (!$.validator) {
		return;
	}

	/** --------------------------------------------------
	 * lang
	 ** --------------------------------------------------*/
	var is_JA = false;
	var is_EN = false;
	if (document.documentElement.lang === "ja" || document.documentElement.lang.toLowerCase() === "ja-jp") {
		is_JA = true;
	} else {
		is_EN = true;
	}

	/** --------------------------------------------------
	 * error list
	 ** --------------------------------------------------*/
	let $stateGroups = $('.state-group');

	function isEmptyOrWhiteSpace(value) {
		let regex = /[^\s　]/;
		return !regex.test(value);
	}

	let isCsr = $('.sitecore-form form').hasClass('csr');
	let isCsrFirstShowValidation = true;
	function showValidationSummary() {
		if (isCsr && isCsrFirstShowValidation && is_JA) {
			isCsrFirstShowValidation = false;
			return;
		}

		var array = [];
		$('#error-bottom').empty();
		let requiredFields = $('.sitecore-form input,.sitecore-form textarea,.sitecore-form select,.sitecore-form .state-group').filter(function () {
			return $(this).data('val-required') !== undefined
		});

		function hasValidation($field) {
			let array = [];
			for (let i = 0; i < $field[0].attributes.length; i++) {
				array.push($field[0].attributes[i]);
			}
			return array.some(function (attr) { return attr.name.indexOf('data-val') >= 0; });
		}

		$('.sitecore-form input,.sitecore-form textarea,.sitecore-form select,.sitecore-form .state-group').each(function () {
			$field = $(this);
			if (!hasValidation($field)) {
				return;
			}

			let errorInfo = function () {
				let valRequiredMessage = $field.data('val-required');
				if (!valRequiredMessage || valRequiredMessage === '') {
					valRequiredMessage = $field.data('val-ischecked');
				}

				let hasRequiredValidator = valRequiredMessage !== undefined;
				if (hasRequiredValidator) {
					let fieldId = $field.attr('id');
					if (!fieldId || fieldId === '') {
						fieldId = $field.data('id');
					}

					if ($field.hasClass('remail')) {
						valRequiredMessage = is_JA
							? '「Eメールアドレス（確認用）」は必須項目です。'
							: 'Please enter "E-mail (for verification)". (Required)';
					} else {
						$label = $('label[for=' + fieldId + ']');
						if ($label.length > 0) {
							let text = $label.text().replace(/必須/, '').replace(/Required/, '').trim();
							if (is_JA) {
								valRequiredMessage = '「' + text + '」は必須項目です。';
							} else if (is_EN) {
								valRequiredMessage = 'Please enter "' + text + '". (Required)';
							}
						}
					}
				}

				if ($field.hasClass('state-group')) {
					// 電話番号、郵便番号等の複合項目
					let gid = $field.data('group-id');
					$input = $field.find('.' + gid);
					let isValid = $input.toArray().every(function (e) {
						let ariaInvalid = $(e).attr('aria-invalid')
						return ariaInvalid !== undefined && ariaInvalid === false
					});
					if (!isValid) {
						let fieldId = $field.attr('id');
						let areAllTextboxEmpty = $input.toArray().every(function (e) {
							return isEmptyOrWhiteSpace($(e).val());
						});
						if (hasRequiredValidator && areAllTextboxEmpty) {
							return { message: valRequiredMessage, id: fieldId };
						} else {
							let errorMessagePlaceId = $field.attr('aria-describedby');
							let errorMessage = $field.find('span[data-valmsg-for="' + errorMessagePlaceId + '"]').text();
							return { message: errorMessage, id: fieldId };
						}
					}
				} else {
					let ariaInvalid = $field.attr('aria-invalid');
					let isValid = ariaInvalid !== undefined && ariaInvalid === false;
					if (!isValid) {
						let fieldId = $field.attr('id');
						if (!fieldId || fieldId === '') {
							fieldId = $field.data('id');
						}
						let errorMessagePlaceId = $field.attr('aria-describedby');
						let type = $field.attr('type')
						if (type === 'radio') {
							let isCheckedInGroup = $field.parent().parent().find('input[type="' + type + '"]')
								.toArray().some(function (c) { return $(c).prop('checked'); });
							if (hasRequiredValidator && !isCheckedInGroup) {
								return { message: valRequiredMessage, id: fieldId };
							}
						} else if (type === 'checkbox') {
							let isCheckedInGroup = $field.parent().parent().parent().find('input[type="' + type + '"]')
								.toArray().some(function (c) { return $(c).prop('checked'); });
							if (hasRequiredValidator && !isCheckedInGroup) {
								return { message: valRequiredMessage, id: fieldId };
							}
						} else {
							if (hasRequiredValidator && isEmptyOrWhiteSpace($field.val())) {
								return { message: valRequiredMessage, id: fieldId };
							}
						}

						let errorMessage = $('#' + errorMessagePlaceId).text();
						return { message: errorMessage, id: fieldId };
					}
				}
			}();

			if (!errorInfo.message || errorInfo.message === '') {
				return;
			}

			array.push('<p class="error-bottom_text"><a href="#' + errorInfo.id + '" class="js-error-anchor">' + errorInfo.message + '</a></p>');
		});
		$.unique(array);
		$('#error-bottom').append(array);

		if (array.length > 0) {
			$('.sitecore-form .g-btn.-submit').addClass('-disabled').prop('disabled', true);
		} else {
			$('.sitecore-form .g-btn.-submit').removeClass('-disabled').prop('disabled', false);
		}
	}

	showValidationSummary();

	// エラー表示時にバリデーションサマリを変更する処理を追加
	let originalShowErrors = $.validator.prototype.showErrors;
	$.validator.prototype.showErrors = function (val) {
		if (!(isCsr && is_JA)) {
			originalShowErrors.call(this, val);
		} else {
			if (this.errorList.length === 0) {
				this.currentElements.parents(".form-item").removeClass('csr-error');
			} else {
				this.errorList.map(function (e) { return $(e.element).parents(".form-item") }).forEach(function (i) { i.addClass('csr-error') });
            }
			if ($('.csr-error').length === 0) {
				$('#error-bottom').removeClass('show');
			} else {
				$('#error-bottom').addClass('show');
			}

			// 送信ボタン以外からは抜ける
			if (Object.keys(this.submitted).length === 0) {
				return;
            }
		}
		showValidationSummary();
	}

	// 必須バリデーターに半角全角スペースチェックを追加
	let originalRequired = $.validator.methods['required'];
	$.validator.addMethod('required', function (value, field, _) {
		let $field = $(field);
		let isGroup = $field.parent().hasClass('state-group');
		if (isGroup) {
			$field = $field.parent();
        }

		if ($field.data('val-required') === undefined && $field.data('val-ischecked') === undefined) {
			return true;
		}

		if (isGroup) {
			let isValid = $field.find('input').toArray().every(function (e) { return $(e).valid() && $(e).val().trim() !== '' })
			if (!isValid) {
				$field.find('input').toArray().forEach(function (e, i) {
					updateErrorVisible($(e), false);
				});
            }
			return isValid;
        }

		// ページ表示直後はフォーカスアウト時に必須バリデーションが動くがエラー表示をしないためvalidを呼び出して表示する
		// ページ表示直後の判定は aria-invalid がついてるかどうかで行う
		let valid = function () {
			if ($field.attr('aria-invalid') === undefined) {
				$field.attr('aria-invalid', true);
				$field.valid();
			}
		};

		let isOriginalValid = originalRequired.call(this, value, field, _);
		if (!isOriginalValid) {
			valid();
			return false;
		}

		let type = $field.attr('type');
		let tagName = $field.prop('tagName');
		if (tagName === 'TEXTAREA' || type === 'text' || tagName === 'SELECT') {
			let isValid = !isEmptyOrWhiteSpace(value);
			if (!isValid) {
				valid();
			}
			return isValid;
		} else {
			return true;
		}
	});

	// maxlength バリデーターを削除
	$.validator.addMethod('maxlength', function () { return true; });

	/** --------------------------------------------------
	 * close alert
	 ** --------------------------------------------------*/
	var closeAlert = {
		init: function () {
			$(window).on('beforeunload', function () {
				if (is_JA) {
					return '入力内容が破棄されます。\nこのページから移動してもよろしいですか？';
				} else if (is_EN) {
					return 'The content you inputted will be discarded.\nAre you sure to move from this page?';
				}
			});
			$('#submit,#js-geocode').on('click', function () {
				$(window).off('beforeunload');
			});
		}
	}

	/** --------------------------------------------------
	 * error anchor
	 ** --------------------------------------------------*/
	var errorAnchor = {
		init: function () {
			$(document).on('click', '.js-error-anchor', function (e) {
				e.stopImmediatePropagation();
				var id = $(this).attr('href');
				$('html, body').animate({
					scrollTop: $(id).offset().top
				}, 700);
				e.preventDefault();
				return false;
			});
		}
	}


	/** --------------------------------------------------
	 * text counter
	 ** --------------------------------------------------*/
	var textCounter = {
		init: function () {
			function lengthdisp(str) {
				var wlength = str.maxLength - str.value.length;
				if (is_JA) {
					$('#js-text-count').text("最大2,000文字（残り" + wlength.toLocaleString() + "文字）");
				} else if (is_EN) {
					$('#js-text-count').text("Up to 2,000 characters (Remaining : " + wlength.toLocaleString() + ")");
				}
				return (str);
			}
			$('.count-textarea').on('keyup blur', function () {
				showValidationSummary();
				lengthdisp(this);
			});
			$(document).ready(function () {
				$('.count-textarea').toArray().forEach(function (e, i) {
					lengthdisp(e);
				});
			});
		}
	}

	/** --------------------------------------------------
	 * input control
	 ** --------------------------------------------------*/
	var inpuControl = {
		init: function () {
			$('input[type="tel"]').on('blur', function () {
				var halfVal = $(this).val().replace(/[！-～]/g,
					function (tmpStr) {
						return String.fromCharCode(tmpStr.charCodeAt(0) - 0xFEE0);
					}
				);
				$(this).val(halfVal);
			});
		}
	}

	/** --------------------------------------------------
	 * geocode
	 ** --------------------------------------------------*/
	var geocode = {
		init: function () {
			var geocoder = new google.maps.Geocoder();
			$('#js-geocode').on('click', function () {
				var address_lv1 = '';
				var lv2_1 = '';
				var lv2_2 = '';
				var lv2_3 = '';
				var lv2_4 = '';
				var lv2_5 = '';
				var lv2_6 = '';
				var zip1 = $('.zip1').val();
				var zip2 = $('.zip2').val();
				geocoder.geocode({
					'address': zip1 + zip2
				}, function (results, status) {
					if (status === 'OK') {
						var data = results[0].address_components;
						var filtered = $.grep(data,
							function (elem, index) {
								if (elem.types.indexOf('administrative_area_level_1') !== -1) {
									address_lv1 = data[index].long_name;
								} else if (elem.types.indexOf('locality') !== -1) {
									lv2_1 = data[index].long_name;
								} else if (elem.types.indexOf('sublocality_level_1') !== -1) {
									lv2_2 = data[index].long_name;
								} else if (elem.types.indexOf('sublocality_level_2') !== -1) {
									lv2_3 = data[index].long_name;
								} else if (elem.types.indexOf('sublocality_level_3') !== -1) {
									lv2_4 = data[index].long_name;
								} else if (elem.types.indexOf('sublocality_level_4') !== -1) {
									lv2_5 = data[index].long_name;
								} else if (elem.types.indexOf('sublocality_level_5') !== -1) {
									lv2_6 = data[index].long_name;
								}
							}
						);
						var address_lv2 = lv2_1 + lv2_2 + lv2_3 + lv2_4 + lv2_5 + lv2_6;
						$prefecture = $('select[data-sc-field-name="prefecture"]');
						$prefecture.find('option').each(function () {
							if (address_lv1.match($(this).html())) {
								var value = $(this).val();
								$prefecture.val(value).focus();
							}
						});
						$('input[data-sc-field-name="streetaddress"]').val(address_lv2).focus().parents('.state').removeClass('-valid');
					}
				});
				return false;
			});
		}
	}

	/** --------------------------------------------------
	 * validate
	 ** --------------------------------------------------*/
	function updateErrorMessage(isValid, message, $errorAria) {
		if (isValid) {
			$errorAria.attr('class', 'field-validation-valid');
			$errorAria.empty();
		} else {
			$errorAria.attr('class', 'field-validation-error');
			let actualMessage = message;
			let children = $errorAria.children();
			if (children.length === 0 || children[0].textContent !== actualMessage) {
				$errorAria.empty();
				$errorAria.append('<span>' + actualMessage + '</span>')
			}
		}
	}

	function updateErrorVisible($element, isValid) {
		$element.attr('aria-invalid', !isValid);
		if (isValid) {
			$element.removeClass('input-validation-error');
			$element.removeClass('valid');
		} else {
			$element.addClass('input-validation-error')
		}
	}

	var validate = {
		init: function () {
			//methods
			let phoneMethod = function (value, element) {
				let method = function () {
					let $stateGroup = $(element).parent();
					let gid = $stateGroup.data('group-id');
					let $phoneTextboxes = $('.' + gid);
					let errorLabelId = $stateGroup.attr('aria-describedby');
					let $errorAria = $stateGroup.find('span[data-valmsg-for="' + errorLabelId + '"]');
					let errorMessage = $stateGroup.data('val-phone');

					let requiredErrorMessage = $stateGroup.data('val-required');
					let hasRequiredValidator = requiredErrorMessage !== undefined;

					let inputPhoneNumber = $phoneTextboxes.toArray().reduce(function (prev, current) {
						return prev + $(current).val();
					}, '');

					if (inputPhoneNumber.length === 0) {
						let isValid = !hasRequiredValidator;
						$phoneTextboxes.toArray().forEach(function (e, i) {
							updateErrorVisible($(e), isValid);
						});
						updateErrorMessage(isValid, requiredErrorMessage, $errorAria);
						return isValid;
					}

					let allTextboxInputed = $phoneTextboxes.toArray().every(function (e) {
						return !isEmptyOrWhiteSpace($(e).val())
					});
					let nowWriting = $phoneTextboxes.toArray().some(function (e) {
						return e === document.activeElement;
					});
					let invalid = !/^([0-9０-９]+)$/.test(inputPhoneNumber)
						|| !allTextboxInputed && !nowWriting
						|| inputPhoneNumber.length <= 9 && !nowWriting

					$('.' + gid).each(function () {
						$(this).attr('aria-invalid', invalid);
						if (!invalid) {
							$(this).removeClass('input-validation-error');
						} else {
							$(this).addClass('input-validation-error')
						}
					});
					updateErrorMessage(!invalid, errorMessage, $errorAria);
					return !invalid;
				}
				if (event.type === 'blur') {
					window.setTimeout(method, 0);
					return !$(element).hasClass('input-validation-error')
				} else {
					return method();
				}
			};
			let postnumberMethod = function (value, element) {
				let method = function () {
					let $stateGroup = $(element).parent();
					let gid = $stateGroup.data('group-id');
					let $postTextboxes = $('.' + gid);
					let errorLabelId = $stateGroup.attr('aria-describedby');
					let $errorAria = $stateGroup.find('span[data-valmsg-for="' + errorLabelId + '"]');
					let errorMessage = $stateGroup.data('val-postnumber');

					let requiredErrorMessage = $stateGroup.data('val-required');
					let hasRequiredValidator = requiredErrorMessage !== undefined;

					let inputPostNumber = $postTextboxes.toArray().reduce(function (prev, current) {
						return prev + $(current).val();
					}, '');

					if (inputPostNumber.length === 0) {
						let isValid = !hasRequiredValidator;
						updateErrorMessage(isValid, requiredErrorMessage, $errorAria);
						$postTextboxes.toArray().forEach(function (e, i) {
							updateErrorVisible($(e), isValid);
						});
						return isValid;
					}

					let nowWriting = $postTextboxes.toArray().some(function (e) {
						return e === document.activeElement;
					});
					let invalid = !/^([0-9０-９]+)$/.test(inputPostNumber)
						|| !nowWriting && inputPostNumber.length < 7

					$('.' + gid).each(function () {
						$(this).attr('aria-invalid', invalid);
						if (!invalid) {
							$(this).removeClass('input-validation-error');
						} else {
							$(this).addClass('input-validation-error')
						}
					});
					updateErrorMessage(!invalid, errorMessage, $errorAria);
					return !invalid;
				}
				if (event.type === 'blur') {
					window.setTimeout(method, 0);
					return !$(element).hasClass('input-validation-error')
				} else {
					return method();
				}
			};
			let nullableSpaceMethod = function (value, element) {
				let isValid = value.length === 0 || /([^\s　])/.test(value);
				return isValid;
			};

			let countryetcMethod = function (value, element) {
				let updateErrorVisible = function ($element, isValid) {
					$element.attr('aria-invalid', !isValid);
					if (isValid) {
						$element.removeClass('input-validation-error');
						$element.removeClass('valid');
					} else {
						$element.addClass('input-validation-error')
					}
				}

				let method = function () {
					let $stateGroup = $(element).parents('.state-group');
					let gid = $stateGroup.data('group-id');
					let errorLabelId = $stateGroup.attr('aria-describedby');
					let $errorAria = $stateGroup.find('span[data-valmsg-for="' + errorLabelId + '"]');
					let errorMessage = $stateGroup.data('val-countryetc');

					let requiredErrorMessage = $stateGroup.data('val-required');
					let hasRequiredValidator = requiredErrorMessage !== undefined;

					let $country = $stateGroup.find('select');
					let $etc = $stateGroup.find('input');
					let relatedElements = [$country, $etc];

					let etcValue = $etc.val().trim();

					let isValid = false;
					if (!$country || $country.length === 0) {
						return true;
					}

					let nowWriting = relatedElements.some(function (e) {
						return e[0] === document.activeElement;
					});
					if (nowWriting) {
						isValid = true;
						updateErrorVisible($country, isValid);
						updateErrorVisible($etc, isValid);
					}
					else if ($country.prop('selectedIndex') === 0 && etcValue === '' && hasRequiredValidator) {
						isValid = false;
						updateErrorVisible($country, false);
						updateErrorVisible($etc, false);
					}
					else if ($country.val() !== 'Others' && $country.val() !== 'Other') {
						isValid = true;
						updateErrorVisible($country, true);
						updateErrorVisible($etc, true);
					}
					else {
						isValid = !(!etcValue || etcValue === '');
						updateErrorVisible($country, true);
						updateErrorVisible($etc, isValid);
					}

					updateErrorMessage(isValid, errorMessage, $errorAria);
					return isValid;
				}
				if (event.type === 'blur') {
					window.setTimeout(method, 0);
					return !$(element).hasClass('input-validation-error')
				} else {
					return method();
				}
			};

			$.validator.addMethod('phone', phoneMethod);
			$.validator.addMethod('postnumber', postnumberMethod);
			$.validator.addMethod('nullablespace', nullableSpaceMethod);

			let originalEmailMethod = $.validator.methods.email;
			$.validator.addMethod('email', function (value, element) {
				if (!value || value === '' || event.type === 'keyup') {
					return true;
				} else {
					return originalEmailMethod.call(this, value, element);
				}
			});

			$.validator.addMethod('countryetc', countryetcMethod);

			//rules
			let rules = {};
			$stateGroups.each(function () {
				let gid = $(this).data('group-id');
				let array = [];
				for (let i = 0; i < this.attributes.length; i++) {
					array.push(this.attributes[i]);
                }
				let validators = array.filter(function (attr) { return attr.name.indexOf('data-val') >= 0; });
				let innerRule = {};
				for (var i in validators) {
					let validator = validators[i];
					let splited = validator.name.split('-');
					if (splited.length !== 3) {
						continue;
					}
					let validatorId = splited[2];

					// カスタムメソッドの中で独自に required を実装するため除外
					if (validatorId === 'required') {
						continue;
					}

					if (splited[1] === 'val' && validatorId !== "") {
						innerRule[validatorId] = true;
						rules[gid] = innerRule;
					}
				}
			});

			$.validator.addClassRules(rules);
		}
	}

	/** --------------------------------------------------
	 * input control
	 ** --------------------------------------------------*/
	var reloadControl = {
		init: function () {
			var vars = {};
			var param = location.search.substring(1).split('&');
			for (var i = 0; i < param.length; i++) {
				var keySearch = param[i].search(/=/);
				var key = '';
				if (keySearch != -1) key = param[i].slice(0, keySearch);
				var val = param[i].slice(param[i].indexOf('=', 0) + 1);
				if (key != '') vars[key] = decodeURI(val);
			}

			if (vars['modify'] == 1) {
				$('input, select, textarea').each(function (index, element) {
					$(this).focus().blur();

					//繰り返しのラストで行う処理
					if (index == element.length - 1) {
						$("html,body").animate({ scrollTop: 0 }, "0");
					}
				});
			}
		}
	}

	$.extend($.validator.messages, {
		email: is_JA ? 'Eメールアドレスを正しく入力してください。' : 'Please enter your valid E-mail address.'
	});

	/** --------------------------------------------------
	 * init
	 ** --------------------------------------------------*/
	//closeAlert.init();
	errorAnchor.init();
	textCounter.init();
	inpuControl.init();
	if (is_JA) {
		geocode.init();
	}
	validate.init();

	reloadControl.init();

	$.validator.unobtrusive.adapters.addBool('phone');
	$.validator.unobtrusive.adapters.addBool('postnumber');
	$.validator.unobtrusive.adapters.addBool('nullablespace');
	$.validator.unobtrusive.adapters.addBool('countryetc');

	/** --------------------------------------------------
	 * valid mark
	 *  - セレクトボックス、テキストボックス横にマークを表示する
	 ** --------------------------------------------------*/
	function showValidMarkSelect(element) {
		let $mark = $(element).parents('.mark-input-flex').find('.valid-mark');

		let selectedIndex = $(element).prop('selectedIndex')
		if (!selectedIndex || selectedIndex === 0) {
			$mark.removeClass('show-valid-mark')
		} else {
			$mark.addClass('show-valid-mark');
		}
	}
	// セレクトボックス
	$('.form-item-input select').change(function () {
		showValidMarkSelect(this);
	});

	// テキストボックス
	let previousTextValues = {};
	function removeValidMarkTextbox (element) {
		// テキストボックスの入力中はValidマークを削除する
		// keyupのたびに保存した前回値と比較を行い、値が異なる場合はマークを削除する
		let $mark = $(element).parent().next();
		let id = $(element).attr('id');
		let textboxValue = $(element).val();
		if (previousTextValues[id] !== textboxValue) {
			$mark.removeClass('show-valid-mark')
		}
		previousTextValues[id] = textboxValue;
	}

	$('.form-item-input input').keyup(function () {
		removeValidMarkTextbox(this);
	});

	function showValidMarkTextAreaOrStateGroup (element) {
		let $formItemInput = $(element).parents('.form-item-input');
		let $stateGroup = $formItemInput.find('.state-group');
		let method = function ($element, $this) {
			$mark = $this.parents('.mark-input-flex').find('.valid-mark');

			// そもそもバリデーションがない場合、空でなければマークを表示
			if (!$element.data('val')) {
				if ($element.hasClass('input-validation-error') || $element.val() === '') {
					$mark.removeClass('show-valid-mark')
				} else {
					$mark.addClass('show-valid-mark');
				}
			}

			// バリデーションが設定されている場合はバリデーションが通っており、かつ空もしくは空白のみでなければマークを表示
			else {
				if ($element.hasClass('state-group')) {
					if ($element.find('.input-validation-error').length === 0 && $element.find('input').toArray().every(function (e) { return $(e).val().trim() !== '' })) {
						$mark.addClass('show-valid-mark');
					} else {
						$mark.removeClass('show-valid-mark')
					}
				} else {
					if (!$element.hasClass('input-validation-error') && $element.val().trim() !== '') {
						$mark.addClass('show-valid-mark');
					} else {
						$mark.removeClass('show-valid-mark')
					}
				}
			}
		}

		// 複合項目かどうかで分岐
		if ($stateGroup.length === 0) {
			method($(element), $(element));
		} else {
			// 複合項目の場合はディレイをとった後にバリデーションが動くため
			window.setTimeout(method($stateGroup, $(element)), 1000);
		}
	}

	$('.form-item-input input, .form-item-input textarea').blur(function () { showValidMarkTextAreaOrStateGroup(this) });

	// 画面初期表示時にマーク表示を動かす
	$(document).ready(function () {
		$('.form-item-input select').toArray().forEach(function (e) { showValidMarkSelect(e); });
		$('.form-item-input input, .form-item-input textarea').toArray().forEach(function (e) { showValidMarkTextAreaOrStateGroup(e); });
	});

	$("input.reset").click(function (e) {
		clearFormAll();
		return;
	});

	function clearFormAll() {
		for (var i = 0; i < document.forms.length; ++i) {
			clearForm(document.forms[i]);
		}
		$(".show-valid-mark").removeClass("show-valid-mark");
	}
	function clearForm(form) {
		for (var i = 0; i < form.elements.length; ++i) {
			clearElement(form.elements[i]);
		}
	}
	function clearElement(element) {
		switch (element.type) {
			case "hidden":
			case "submit":
			case "reset":
			case "button":
			case "image":
				return;
			case "file":
				return;
			case "text":
			case "password":
			case "textarea":
				element.value = "";
				return;
			case "checkbox":
			case "radio":
				element.removeAttribute('checked');
				element.checked = false;
				return;
			case "select-one":
			case "select-multiple":
				element.selectedIndex = 0;
				return;
			default:
		}
	}

}(jQuery));
