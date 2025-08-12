# Okta - SAML

## Provisioning Users on Okta

For provisioning users with Okta, you will need to have a user created in both Okta and Tableau Server - their
username's must match (the "Application username format" step in #4 below).

Once the user logs in, their username in Okta needs to match a username of a user on Tableau Server.

### Curator Installation

If you have not installed Curator (e.g. Apache, MySQL, PHP, and dependencies) you can do this with the commands in the
[Installation documentation](https://curator.interworks.com/page/kb/setupinstallation/linux/1040).

Also ensure you have connected to your Tableau Server instance following the
[Tableau Server connections steps](https://curator.interworks.com/page/kb/creating-integrationstableau-connection/rest-api-integration/1089).

### Tableau Setup

#### Tableau Cloud

Tableau has excellent documentation on connecting Okta to Tableau Cloud. [https://onlinehelp.tableau.com/current/online/en-us/saml_config_okta.htm](https://onlinehelp.tableau.com/current/online/en-us/saml_config_okta.htm)

Make sure to follow the additional setup steps in the Tableau Cloud documentation.

If a Tableau login button appears where a Dashboard should be after configuring SAML, be sure to follow the steps to
enable iFrame embedding in the following document:
[https://help.tableau.com/current/online/en-us/saml_config_okta.htm#optional-enable-iframe-embedding](https://help.tableau.com/current/online/en-us/saml_config_okta.htm#optional-enable-iframe-embedding)

#### Tableau Server

To ensure that after a user signs in to SAML via Curator they do not have to re-sign in to the embedded Tableau Server
Dashboard (Note: this will only work in conjunction with changing iFrame settings on Okta in step #3 as well):

On your Tableau Server run the command below:

    ```bash
    tsm configuration set -k wgserver.saml.iframed_idp.enabled -v true
    ```

Next, either run:

    ```bash
    tsm pending-changes apply
    tsm restart
    ```

Or open TSM in your browser and click Pending Changes at the top of the page then click 'Apply Changes and Restart'.

### Enable iFrames for Tableau's Okta App

In the Okta system, ensure you have turned ON iFrame embedding by going to "Settings->Customization". The Tableau
Documentation has this marked as "optional": _it is not optional for Curator installs unless you are satisfied with
forcing your users log in twice to access Tableau content on Curator_

### Okta App Setup

Create a new Application. Navigate to Applications -> Create New App.
**Note: This will be in addition to the one you already setup for Tableau Cloud**

We recommend naming this app either "Curator" or your preferred name for your branded analytics site.

When filling out the details for the application:

- For the **Single sign-on URL** paste in the URL to the homepage of Curator
- For **Audience URI (SP Entity ID)** put in the Curator URL without the trailing /, or http/https
- Select **Email** (or the format that matches Tableau Server usernames) as the "Application username format"
- Add an additional attribute of **username** with the value "user.email" (or the format that matches Tableau Server
usernames)

### Curator Setup

In the SP settings for Curator in Okta, navigate to the "Sign On" tab and click "Identity Provider metadata" to generate
a XML metadata file. If this link isn't present you can scroll down and click the "View SAML setup instructions" button
on the right-hand side of the screen.
In the Curator backend settings, go to the **Settings** > **Security** > **Authentication Settings** tab. From the
authentication list select "SAML". You can use the "Import SAML Metadata" button to import the XML file you generated
from Okta. Alternatively, you can manually enter the information:

- For the **Entity ID** put the "Audience URI (SP Entity ID)" you filled in before.
- For the **SignOn URL**, put the "Identity Provider Single Sign-On URL" URL found in the setup section.
- For the **IdP ID**, put the "Identity Provider Issuer" from the setup section.
- For the **SignOut URL**, put the URL of the application `/login/signout` (i.e.
[https://mydomain.okta.com/login/signout](https://mydomain.okta.com/login/signout))
- Open the "SAML Advanced" section. For the **Certificate**, open the metadata XML file, copy the certificate text, and
paste it in the field.

### Optional Setup

You may want to select a few options to make the login process more streamlined. First, set the Curator application to
"Auto-launch" in the "edit application" section on Okta.

You may also wish to hide the Tableau Cloud icon from users. You can do this in the edit application area for the
Tableau Cloud app. Under "App Settings", select "Do not display application icon to users".

You can also select a custom sign-out page to point the user back to Curator so that they don't end up in a weird Okta
loop. To do this, go to Settings->Customization->Signout Page. Make the signout page the URL of your Curator URL.
