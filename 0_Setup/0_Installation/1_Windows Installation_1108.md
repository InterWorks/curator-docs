# Windows Installation

## Automated Setup

1. Download the installer for Windows (Apache) by clicking [here](https://api.curator.interworks.com/CuratorSetup.exe).
2. From the web server, right-click and Run as Administrator
3. If you would like to change the install path, click "Options", otherwise proceed through the installation steps.
4. Locate your license key (sent from InterWorks) as well as info.txt (and/or info.json) in the webroot directory to
retrieve user credentials.
5. Open `http://curatorexample.com/install.php` in a browser - replacing `curatorexample.com` with your site's URL.
If you're on the server you installed, you may also use `localhost`.  Keep in mind this may be an IP address or computer
name until your IT team sets up DNS.
6. Follow the steps to finalize your installation using the license key and credentials from step #1.
7. Login to the backend of Curator using the credentials from step #1 and start your configuration! The backend can be
accessed from `http://curatorexample.com/backend`.

### Log Locations

These paths are dependant on your installation location, but these are the default paths:

* Apache: `C:\InterWorks\httpd_errors.log`
* PHP: `C:\InterWorks\php_errors.log`
* Installation Log: `C:\InterWorks\install.log`

### Other Information

These paths are dependant on your installation location, but these are the default paths:

* Webroot: `C:\InterWorks\htdocs`
* HTTPD Config: `C:\InterWorks\web.conf`
* PHP.ini: `C:\InterWorks\php.ini`
* Start Process: `C:\InterWorks\start.bat` (Also desktop shortcut)
* Stop Process: `C:\InterWorks\stop.bat` (Also desktop shortcut)
* Apache Location: `C:\InterWorks\libs\Apache24`
* Database Location: `C:\InterWorks\libs\MariaDB`
* PHP Location: `C:\InterWorks\libs\PHP`
