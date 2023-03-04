Copy the shell scripts and `paperless.conf` file into your `paperless-ngx/` installation directory.  Edit `paperless.conf` and set the PAPERLESS_DB* options appropriately.  Change every instance of the string 'your-hostname-here' to the hostname of the machine you installed paperless-ngx on.  Set PAPERLESS_NLTK_DIR to the full path to your [NLTK data](https://www.nltk.org/data.html) directory (by default, `/home/your-username-here/nltk_data`).

Install the systemd .service files:
* `mkdir -p ~/.config/systemd/user`
* `cp *.service ~/.config/systemd/user`
* `systemctl --user enable paperless-consumer.service`
* `systemctl --user start paperless-consumer.service`
* `systemctl --user enable paperless-scheduler.service`
* `systemctl --user start paperless-scheduler.service`
* `systemctl --user enable paperless-task-queue.service`
* `systemctl --user start paperless-task-queue.service`
* `systemctl --user enable paperless-wsebserver.service`
* `systemctl --user start paperless-wsebserver.service`
* `loginctl enable-linger $(whoami)`

