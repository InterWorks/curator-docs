# Favorites

Curator has the ability to mark dashboards as favorites.  Favorited dashboards will show up first on the home page once
the user logs in.

This functionality requires any authentication method other than "Pass-Through".  See the [Authentication Methods](https://curator.interworks.com/page/kb/setupauthentication/authentication-methods-overview/1088)
section for more information.

If the Tableau REST API is enabled, the favorites will also synchronize across to the Tableau Server where possible.
See the [Enabling the REST API](https://curator.interworks.com/page/kb/creating-integrationstableau-connection/rest-api-integration/1089)
section for more information.

You can also display the number of favorites a Dashboard has. This number shows up in both the Dashboard action-buttons
area when viewing a Dashboard and on the homepage when showing Dashboard tiles.

***To enable favorites:***

1. Navigate to the backend of the system (e.g. `http://curatorexample.com/backend`).
2. Log in if prompted.
3. Click on the **Settings** > **Curator** > **Portal Settings** in the left-hand side navigation.
4. Click on the "Features" tab at the top of the main page content.
5. Click to expand the "Toolbar Buttons (Tableau Actions)" section and then click to toggle on the "Favorites" setting.
Finally, click the "Save" button.

***To favorite a Dashboard:***

1. Navigate to the frontend of the system (e.g. `http://curatorexample.com`).
2. Log in if prompted.
3. Navigate to the desired Dashboard by using the navigation menu.
4. Click on the star icon at the top right portion of the screen. Normally this is displayed on the right side of the
title bar in the Dashboard.

***To show the number of favorites:***

1. Navigate to the backend of the system (e.g. `http://curatorexample.com/backend`).
2. Log in if prompted.
3. Click on the **Settings** > **Curator** > **Portal Settings** in the left-hand side navigation.
4. Click on the "Features" tab at the top of the main page content.
5. Make sure the switch is on for the "Favorites" setting under the "Toolbar Buttons (Tableau Actions)" section.
6. Click to switch on the "Show Number of Favorites" setting under "Favorites" and click the "Save" button.
