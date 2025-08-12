# Authentication Methods Overview

When using Curator to embed content from other applications (e.g. Tableau, PowerBI) Curator relies on those systems to
authorize a user to see and interact with content that is embedded in Curator.

By default, Curator is set up to "pass through" this task to embedded content, and has no Authentication system enabled.
However, Curator can utilize the authentication systems that your embedded content also relies on.  This creates a
seamless browsing experience wherein Curator shows/hides content based on the source-system's permissions (rather than
managing them inside Curator).  *Curator does not have mechanisms to grant users access to content that they do not have
access to within the source-system itself.*

By setting up Curator's Authentication Type to match your source-systems authentication, you can more seamlessly manage
access to content in one location: in the source-system itself.  However, if you would like to manage content in Curator
that does not contain source-system content (e.g. pages), you can restrict content based on Groups (either those
retrieved from SAML or Tableau Server) through the restrict-access settings on the Menu system.

## Changing Authentication Settings

Curator can use multiple different methods to authenticate users to the frontend.  Each method may require additional
setup, so be sure to check out the For details on each option see the descriptions at the bottom of this page.

To set the authentication method:

1. Login to the backend of your Curator instance (e.g. `http://curatorexample.com/backend`).
2. Navigate to the **Settings** > **Security** > **Authentication Settings** section from the left-hand menu.
3. In the General tab, select the desired authentication type and click the "Save" button.

## Authentication Type Options

First things first, if you have not
[enabled the Tableau Server REST API](https://curator.interworks.com/page/kb/setuptableau-connection/rest-api-integration/1089),
be sure to do that.  Without that enabled, Pass-Through (aka Security Disabled) will be the only available option.

**Pass-Through (Security Disabled)**
This turns off authentication to the frontend and makes all links and pages public.  The user is still
required to authenticate directly to the Tableau Server for any underlying views in a Dashboard which
requires a login.

**Active Directory**
Users authenticate seamlessly with Microsoft Active Directory.  See details on setting up Active Directory Users.

**SAML**
This allows user accounts to authenticate using your SAML Identity Provider (IdP).  Follow
[these instructions](https://curator.interworks.com/page/kb/setupauthentication/okta-saml/1121)
to learn how to set up Curator to use SAML as your IdP.

**OAuth/OpenID**
This allows user accounts to authenticate using your OAuth provider.

**Tableau Server**
This allows user accounts to authenticate directly with a Tableau Server using their local Tableau Server username and password.

**Curator Users**
This allows users to be created and stored locally on the site. For Tableau Cloud customers you can use Curator as your
SAML Host (IdP), in which case you would set up your Tableau Server to look at the portal for SAML authentication.
