# Custom Views

Curator can allow users to save a Custom View of a Dashboard, which will include any applied filters and parameters, and
then load it again at a later date.

## Enable Custom Views

1. Navigate to the backend of the system (e.g. `http://curatorexample.com/backend`).
2. Log in if prompted.
3. Click on the **Settings** > **Curator** > **Portal Settings** in the left-hand side navigation.
4. Click on the "Features" tab at the top of the main page content.
5. Click to switch on the "Custom Views" setting under the "Toolbar Buttons (Tableau Actions" section and click the
"Save" button.

## Enable create/load a Custom View

1. Navigate to the frontend of the system (e.g. `http://curatorexample.com`).
2. Log in if prompted.
3. Navigate to the desired Dashboard by using the navigation menu.
4. Modify the filters, etc. as desired on the Dashboard.
5. Click on the Custom Views icon at the top right portion of the screen. Normally this is displayed on the right side
of the title bar in the Dashboard.
6. Enter a name for the new Custom View in the text box and click the "Create" button.
7. To load a different Custom View, select an existing view from the drop-down and click on the "Apply" button.

## Sharing Direct Links to Custom Views

Custom Views can be shared via direct URL links, allowing users to access specific Custom Views without manually
selecting them from the dropdown. This functionality works similar to Tableau's native Custom View sharing capabilities.

### How to share a Custom View via direct link

1. **Apply the desired Custom View** using the steps above (steps 1-7).
2. **Copy the current URL** from your browser's address bar. The URL will automatically include the Custom View parameter.
3. **Share the URL** with other users who have access to the Dashboard.

### URL Parameter Format

Custom Views are accessed through the `::custom_view` URL parameter. For example:

```txt
http://curatorexample.com/dashboard-name?::custom_view=MyCustomViewName
```

### Sharing Private Custom Views

Private Custom Views are only visible in the dropdown for the user who created them.  However, similar to
[sharing a Custom View in Tableau](https://help.tableau.com/current/pro/desktop/en-us/customview.htm#share-a-custom-view)
anyone with access to the Dashboard can see a Custom View using the direct link [outlined above](#how-to-share-a-custom-view-via-direct-link)
