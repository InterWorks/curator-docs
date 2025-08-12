# Just-in-time (JIT) Provisioning

## JIT Provisioning on Curator

When paired with externally managed authentication providers (SAML, Tableau Server, Active Directory, etc.), Curator will
automatically create a user record in its own database when they first log in.

If you need to disable this, the setting can be found under **Settings** > **Security** > **Authentication Settings** >
**Customization** section > *Disable Just-in-time Provisioning of Curator Users* setting.  Be sure to click the save button.

## JIT Provisioning on Tableau

Curator can also serve as an intermediary to that process and automatically create the users on Tableau Server after a
successful authentication with Okta or other SAML identity providers.  You will still be required to manually assign any
groups, or license levels (Explorer by default), in Tableau Server.  But this allows simple authentication into Curator if
the user does not yet exist on Tableau.

To enable this, complete the steps for SAML setup ([instructions here](https://curator.interworks.com/page/kb/setupauthentication/okta-saml/1121))

Then on the backend under **Settings** > **Security** > **Authentication Settings**, open up the **SAML Advanced** section
and enable *Just-in-time (JIT) Provisioning* then Save your SAML settings.
