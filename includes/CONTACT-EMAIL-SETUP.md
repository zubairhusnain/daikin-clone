# Contact form — SMTP setup (no Composer)

1. Copy the config file:

   ```bash
   cp includes/contact-mail.local.php.example includes/contact-mail.local.php
   ```

2. Edit `includes/contact-mail.local.php`:

   - `recipient` — where form submissions are delivered
   - `smtp.username` / `smtp.password` — usually your Gmail address + [App Password](https://myaccount.google.com/apppasswords)
   - `from_email` — same as Gmail address for Gmail SMTP

3. Open http://localhost/daikin-clone/daikin_offline/contact/ and send a test message.

The form turns on automatically once `contact-mail.local.php` exists and SMTP username/password are set.

**Gmail defaults:** host `smtp.gmail.com`, port `587`, encryption `tls`.

**SSL (port 465):** set `'port' => 465` and `'encryption' => 'ssl'`.
