# Linux - Cron Troubleshooting

Curator runs regularly scheduled tasks on Linux using the web-server's cron.  This takes care of things like status
checks, scheduled reports, user-syncing along with a host of other very important items.  Rarely this setup can be done
incorrectly on installation, so we've provided some steps for resolving common issues related to the cron.

## Cron Troubleshooting

### Permissions Error

1. Log on to the webserver that is running Curator.
2. In the terminal, login as root user by typing in `su - root`
3. View the cron by typing in `crontab -e`
4. If there is content in the crontab file, check to see if the root user is running anything related to Curator.
For example, look for "artisan" or "php" commands.
5. If these are found, copy these lines and place them somewhere you can reference later - then delete the lines from
this and press `esc` then type `:wq` to save the empty file.
6. Find the user running your web-server.  If you are unsure, you can find this on the **Settings** > **Curator** >
**Status** page on the backend of Curator.
7. Ensuring you're still logged in as root, edit the crontab file associated with your server-run-as user you found in
the previous step.  For example, if your user was "apache" you would type
`crontab -e -u apache` and press enter.  This will open the crontab file.  Press `i` to enter "insert mode" and paste in
the contents from step #5.  Then press `esc` and type `:wq` to save the empty file.

NOTE: If the contents of all your cron files are empty, then revisit step #7 above (ensuring you're still logged in as
root) and paste in the contents below while in insert mode:
`* * * * * php /var/www/html/artisan schedule:run >> /dev/null 2>&1`

### Test Cron

In order to make sure your cron schedule is running properly, you can manually fire the cron task via Curator's API
using the steps below.  If you do not receive a 'success' response then you may need to adjust your environment configuration:

1. Follow instructions in the
[Auto Generate API Links](https://curator.interworks.com/page/kb/curator-api/getting-started/curator-api-overview/1101)
 section and ensure the dropdowns are set to **Portal** and **cron** respectively.
2. Click the preview link generated
3. Link will open in new tab and should display a "success" message
