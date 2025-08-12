# Troubleshooting Power BI Access

With Power BI connections, there is a strict separation of functionality between the frontend and the backend even
though it's all configured from the backend connection.  Any issues you run into should be investigated separately,
since one area might work fine while the other doesn't work at all, and the solutions depend on which way that is.

## Backend

Curator's integration with Power BI on the backend is deceptively simple.  There's really only one way to determine
whether it's working as expected and, luckily, only a few ways it can go wrong.

### Checking Whether the Backend is Working

To check whether the Power BI connection is working on the backend:

1. Navigate to **Backend** > **Power BI** > **Reports** (substitute Dashboard for Report here if you don't have any
Reports published in Power BI).
2. Click on the **Clear Cache** button at the top right corner of the portal to ensure Curator doesn't use any cached
results.
3. Click on the button at the top to add a new report.
4. Use the drop-downs at the top of the screen to select a workspace and a report.  If either of these fields are blank
when they shouldn't be, then continue to the section below to troubleshoot.  If you are able to select a report, then
the backend connection is working.  Skip ahead to the section on the frontend.

### Troubleshooting the Backend

The first step in troubleshooting the backend connection is to determine if Power BI is responding with errors or
whether it is responding with empty results.  To see the details on Power BI's responses, you'll need to enable
Curator's Power BI debug mode.

1. Navigate to **Backend** > **Integrations** > **Connections**, and click on your Power BI connection.
2. Enable the **Debug Mode for Power BI** switch and click the save button.  **Important*:*** The Power BI debug mode
increases the amount of logging that Curator stores. After a while, this could fill up your server. Be sure to set the
**Debug Mode Expiration** to a sensible value (default is 24 hours).
3. Follow the steps above in the **Checking Whether It Works** section.
4. Navigate to **Backend** > **Settings** > **Logs** > **Event Logs**.
5. Use the filter text box at the top right portion of the screen to search for `Power BI API Call`.
6. Click into the entries with that prefix to observe the responses from Power BI.

If the responses have error message, the solution will be specific to the error message.  If it's not obvious, reach out
to Curator support for guidance.

If the response is blank, that indicates that the connection between Curator and Power BI is established properly, but
the service principal is missing access to the workspace(s).  The solutions for this are:

1. Ensure that the registered app has been granted as an admin to at least one workspace by following the steps
[here](https://curator.interworks.com/page/kb/creating-integrationspower-bi-connection/step-3-power-bi-workspace-access/1196)
(**Add Registered App to Power BI Workspace(s)** section).
2. Ensure that the service principal can use the Fabric APIs by following the steps
[here](https://curator.interworks.com/page/kb/creating-integrationspower-bi-connection/step-3-power-bi-workspace-access/1196)
(**Allow service principals to use Fabric APIs** section).  Note that changing this setting may take a while before it
goes into effect within Power BI.
3. If the Fabric APIs are limited to specific security groups, make sure the service principal/registered app is a
member of the security groups listed.

## Frontend

### Checking Whether the Frontend is Working

Once you have established a Power BI connection and published Power BI Dashboards and/or Reports to Curator's navigation
, the next step is to have users log in to begin consuming those Dashboards and/or Reports.

If everything is set up perfectly (See
[steps 1-4](https://curator.interworks.com/page/kb/creating-integrationspower-bi-connection/step-1-azure-app-setup/1194)
), the process to access Power BI content within Curator should be:

1. Log in to Curator using whatever authentication method is configured under **Backend** > **Settings** >
**Security** > **Authentication Settings**.
2. Log in to Power BI.  *Note: If you are already authenticated to Power BI or if you are using a SSO solution that
supports it, this step may be so fast it is invisible to your users.*
3. Curator should render its navigation with all of the Curator content the user has access to based on the platform of
origin (i.e. Tableau determines access to Tableau content, ThoughtSpot determines access to ThoughtSpot content, and
Power BI determines access to Power BI content).  *Note: It is possible to further restrict access to content within
Curator, but it is not possible to loosen access beyond what the platform of origin allows.*

### Troubleshooting the Frontend

If you've gone through all of the steps and you see other Curator content but all of the Power BI content is missing
from the navigation, here are the steps you can take to troubleshoot.

#### Verify You Are Authenticated To Power BI from Curator

To verify you are actually authenticated to Power BI from Curator, you'll need to use Curator's frontend debug mode.
This feature is typically disabled by default, so you'll likely need to enable it by navigating to **Backend** >
**Settings** > **Curator** > **Portal Settings** > **General** tab > **Debug Settings** section (found below the
**Global Settings** section), toggling on the **Enable Frontend Debug setting**, and clicking on the save button.
*Note: You may want to disable this again after troubleshooting.*

Next, go to the frontend and append **`?debug=1`** to the URL.  For example, if your Curator frontend is
`https://curator.yourcompany.com/` then the address you'll want to go to is `https://curator.yourcompany.com/?debug=1`.
Note: If you happen to already have a **`?`** in the URL, then append **`&debug=1`** instead.

You should see a debug bar show up at the bottom of the screen.  Click on the Session tab and look for an entry under
**`powerbi`** > **`user`**.

If there isn't one, then something happened during log in to prevent you from being authenticated to Power BI from
Curator.  To fix this, log out of Curator and log back in.

If your session has an unexpired **`powerbi`** > **`user`** entry, then you are authenticated to Power BI, but Power BI
is telling Curator you don't have access to content there.  Proceed to the next section to troubleshoot further.

#### Checking What Power BI is Telling Curator

Curator issues API calls to Power BI using your authenticated session.  The major thing Curator is checking with these
API calls is which Dashboards and/or Reports you have access to.

To see what Power BI is responding with, you can enable the Power BI debug mode by navigating to **Backend** >
**Integrations** > **Connections** > Click on your Power BI connection, toggling on the **Debug Mode for Power BI**
setting, and clicking save.

***Important:** The Power BI debug mode increases the amount of logging that Curator stores.  After a while, this could
fill up your server.  Be sure to set the **Debug Mode Expiration** to a sensible value (default is 24 hours).*

For good measure, go ahead and click on the **Clear Cache** button at the top right section of the screen to ensure
Curator makes fresh API calls to Power BI.

Next, go back to Curator's frontend and refresh the page.

If the Power BI content still doesn't show up in the navigation as expected, then navigate to **Backend** >
**Settings** > **Logs** > **Event Logs** and look for the API calls being made to Power BI.  Click on each entry to view
the details.  It's unlikely these will be obvious or intuitive, so feel free to see these details to Curator support.

The fix for your situation will be highly dependent on what the API is telling Curator.  Reach out to Curator support if
the solution is not obvious from Power BI's response.  In the meantime, you can verify your user has access to the
Power BI Workspace and Dashboard/Report in question.
