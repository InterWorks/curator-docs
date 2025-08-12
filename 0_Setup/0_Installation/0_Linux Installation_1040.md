# Linux Installation

## AWS EC2 Process

If you need help creating and connecting to an AWS EC2 instance from Windows using Putty, view this documentation:
[https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/putty.html](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/putty.html)

## Automated Setup

This installer works with the following distributions:

* Ubuntu 20.04, 22.04, or 24.04 **Recommended
* CentOS 8
* RedHat 8
* Amazon Linux AMI 2

**Note:** The automated installer should cover the vast majority of setups, but each server is different and may require
commands specific to your IT infrastructure.

After running the command above:

1. SSH into your web server, ensure you're using a user that has full sudo access, and run the command below:

        curl -s -o curator.sh https://api.curator.interworks.com/scripts/linux_install.sh && chmod +x ./curator.sh && ./curator.sh

2. Locate your license key (sent from InterWorks) as well as `/var/www/curator_info.txt` to retrieve user credentials.
3. Open `http://curatorexample.com/install.php` in a browser - replacing `curatorexample.com` with your site's URL.
If you're on the server you installed, you may also use `localhost`.  Keep in mind this may be an IP address or computer
name until your IT team sets up DNS.
4. Follow the steps to finalize your installation using the license key and credentials from step #1.
5. Login to the backend of Curator using the credentials from step #1 and start your configuration! The backend can be
accessed from `http://curatorexample.com/backend`.

## Network Whitelist Requirements

For installations in environments with restricted internet access or firewall configurations, the following URLs
should be whitelisted to ensure proper functionality:

### RHEL/CentOS Systems

**InterWorks API:**

* api.Curator.InterWorks.com

**EPEL Repository:**

* dl.fedoraproject.org
* download.fedoraproject.org (covers mirrors.fedoraproject.org)

**Remi Repository (PHP packages):**

* \*.remirepo.net (covers rpms.remirepo.net, repo.remirepo.net, mirrors.remirepo.net)

**Base RHEL/CentOS Repositories:**

* \*.centos.org (covers vault.centos.org, mirror.centos.org)
* download.redhat.com
* cdn.redhat.com

**CDN Networks:**

* \*.akamaiedge.net (covers \*.akamaitechnologies.com - same Akamai network)

### Ubuntu Systems

**InterWorks API:**

* api.Curator.InterWorks.com

**Ubuntu Repositories:**

* \*.archive.ubuntu.com (covers archive.ubuntu.com, us.archive.ubuntu.com, gb.archive.ubuntu.com, etc.)
* security.ubuntu.com
* ports.ubuntu.com
* changelogs.ubuntu.com

**Launchpad PPAs (for ondrej/apache2 and ondrej/php):**

* \*.launchpad.net (covers ppa.launchpad.net, launchpad.net)
* ppa.launchpadcontent.net
* keyserver.ubuntu.com

## Custom Setup

The install script can take optional parameters to set specific values at launch. This can be helpful in distributed
setups, or scripted installations.
    ```bash
        curl -o curator.sh https://api.curator.interworks.com/scripts/linux_install.sh
        chmod +x ./curator.sh
        ./curator.sh -f -h [put_your_database_host_here] -u [username for db here] -p [password_for_db_here]
        -P [database_port_here] -d [database_name_here] -l [license_key_here] -s [persistent_storage_location_here] -v [curator_version_here]```

The install script's flags are as follows:

    - -f Full Installation, this flag is required in most custom setups to avoid the in-browser installer.
    - -h The database hostname (*This is needed if using an external database host.*)
    - -u The database username  (*Default: tableau_portal*)
    - -p The database password (*This is needed if using an external database, or if you would like to specify a
    specific password when creating the local database. By default, the installer will automatically generate a secure password.*)
    - -P The database port (*This is needed if using an abnormal port for an external database. The default port is 3306.*)
    - -d The database name (*Default: tableau_portal*)
    - -l The License Key for your Curator installation. When performing a full installation, this is required.
    - -s Location of a persistent storage location (*If installing a distributed system, or on a Docker container, a
    persistent filesystem may be needed to share uploaded files across instances.*)
    - -v Specify the version of Curator to be installed (Defaults to latest version if not included. Versions older than
    **2021.08.04-05** can't be installed.)

### Advanced Setup

The automated installations install and configure LAMP environment and dependencies using standard Linux repositories.
In rare situations, a more manual installation may be required. If this is the case, consult our technicians for guidance.
