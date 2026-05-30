
document.querySelectorAll('.dropdown').forEach(function (dropdown) {
  dropdown.addEventListener('change', function () {
    var button = document.querySelector('button[data-dropdown="' + this.id + '"]');
    if (this.value) {
      button.disabled = false;
    } else {
      button.disabled = true;
    }
  });
});

document.querySelectorAll('.agree').forEach(function (button) {
  button.addEventListener('click', function () {
    var dropdownId = this.getAttribute('data-dropdown');
    var dropdown = document.getElementById(dropdownId);
    var selectedValue = dropdown.options[dropdown.selectedIndex].value;
    if (selectedValue) {
      window.open(selectedValue, '_blank');
    }
  });
});

