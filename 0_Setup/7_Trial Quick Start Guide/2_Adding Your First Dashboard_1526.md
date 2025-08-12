# Adding Your First Dashboard

Click on **Integrations → Connections**

Click on **New Connection button**

* **Name**
  * Name your connection
* **Slug**
  * This slug (url extension) will auto-generate but can be customized
* **Description**
* **Platform**
  * Options include: Tableau, Power BI, ThoughtSpot
  * After selecting an option, fill out the platform specific connection information and credentials

## Tableau

### Tableau Server

1. **Enter Site name** (e.g. <https://analytics.acme.com>)
1. **Enter Service Account credentials or Personal Access Token**. To enter Personal Access Token, follow the below steps:
    1. Log onto your Tableau Server
    1. Click account icon on top right of screen (by default, will by a circle with your initials in it)
    1. Select My Account Settings
    1. Scroll to Personal Access Token
    1. Enter a Name for your Token and click Create Token

Additional information on Personal Access Tokens can be found in [Tableau’s documentation](https://help.tableau.com/current/pro/desktop/en-us/useracct.htm#create-and-revoke-personal-access-tokens).

### Tableau Cloud

1. **Select the Tableau Cloud Host region** (found in the server url)
1. **Enter the Site name** (found in the server url after logging in)
1. **Enter your Personal Access Token**
1. **To enter Personal Access Token, follow the below steps:**
    1. Log onto your Tableau Server
    1. Click account icon on top right of screen (by default, will by a circle with your initials in it)
    1. Select My Account Settings
    1. Scroll to Personal Access Token
    1. Enter a Name for your Token and click Create Token

Additional information on Personal Access Tokens can be found in [Tableau’s documentation](https://help.tableau.com/current/pro/desktop/en-us/useracct.htm#create-and-revoke-personal-access-tokens).

#### Power BI

**Enter your Tenant ID in Azure**. To find your Tenant ID, follow this [documentation](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/how-to-find-tenant).

#### ThoughtSpot

1. Enter your ThoughtSpot URL
1. Enter your ThoughtSpot credentials

## Adding a Dashboard From Your Server

Once you have established a connection to your server you can begin adding individual Dashboard connections. For our
example we will follow along with a Tableau Dashboard but the instructions are similar for other BI platforms.

1. **Click Tableau** (or your BI Platform Option) → **Dashboards**
1. **Click the New Dashboard Button**

Select desired Server, Site, Project, Workbook, and Dashboard then click create to establish a connection.
![Dashboard dropdowns](https://curator.interworks.com/file/adding-dashboard-from-server-1)

Connect dashboards will be listed in the Tableau → Dashboard menu:
![Dashboard list](https://curator.interworks.com/file/box-notes-image-2023-08-07-133321)

## Adding a Menu Link to the Navigation

After a connection to a Dashboard has been established, the simplest method is to add a menu link to the navigation pane
at the top of your environment.
![homepage hero image and menu](https://curator.interworks.com/file/box-notes-image-2023-08-07-123206)

Click **Content → Navigation**

1. Select New Menu Link
1. Select your Dashboard Link Type
1. Select your Dashboard
1. Select Create

Once you create the link you will be brought to a page that displays the navigation hierarchy. You can control the
navigation pane’s order and drop down menus here:
![navigation reorder view](https://curator.interworks.com/file/box-notes-image-2023-08-07-124312)
After you have decided on hierarchy, navigate to the front end and see your new navigation menu items that lead to your dashboards:
![homepage hero image and menu](https://curator.interworks.com/file/box-notes-image-2023-08-07-124522)
