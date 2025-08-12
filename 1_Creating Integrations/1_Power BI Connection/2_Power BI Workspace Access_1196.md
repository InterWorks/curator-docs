# Power BI Workspace Access

## Steps

1. [Azure App Setup](https://curator.interworks.com/page/kb/creating-integrationspower-bi-connection/azure-app-setup/1194)
2. [Service Principal Setup](https://curator.interworks.com/page/kb/creating-integrationspower-bi-connection/service-principal-setup/1195)
3. **Power BI Workspace Access**
4. [Curator Connection](https://curator.interworks.com/page/kb/creating-integrationspower-bi-connection/step-4-curator-connection/1545)

## Allow service principals to use Fabric APIs

Registered apps/service principals need to be able to access Power BI APIs in order to query which workspaces, Dashboard,
reports, etc. exist in your environment when publishing content to Curator.

To enable the Power BI APIs:

1. Log in to the Power BI portal (<https://app.powerbi.com>) with an account that has access to the admin portal.
2. Navigate to the admin portal by clicking on the gear icon at the top right, or by clicking this link directly (<https://app.powerbi.com/admin-portal>).
3. Select "Tenant Settings" on the left if not already selected.
4. Scroll to the "Developer settings" section and expand the "Allow service principals to use Fabric APIs" group.
5. Click the switch to enable.  If desired, restrict access to only specific security groups (make sure the registered
app that Curator will be using is included in a security group specified here).
6. Enabling this setting may take ~15 minutes to take effect.

## Add Registered App to Power BI Workspace(s)

In order for the registered app/service principal to have access to your Power BI content, it must have permissions to
the Power BI workspace(s) you intend to use with Curator.

To add access to a workspace:

1. Log in to the Power BI portal (<https://app.powerbi.com>).
2. In the left navigation, click on “Workspaces”.
3. Hover your mouse over one of the workspaces and click on the 3 dots that appear on the right.  Choose “Workspace access”.
4. Search for the registered app/service principal name and give it the "Admin" permission.  This ensures  Curator will
have access to add any content from Power BI that your Curator admins would like to add.
5. (optional) Repeat the process for any remaining workspaces that need access.
