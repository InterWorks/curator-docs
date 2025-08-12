# URL Action Overrides (Link Target)

When a URL action gets triggered in Curator, there are different settings that allow Curator to handle these actions in
a more sophisticated manner directing your users to the location they want to end up without much intervention in the
middle.  You can find a description of the available options at the bottom of this page.

## Set the Link Target

1. Login to the backend of your Curator instance (e.g. `https://www.curatorexample.com/backend`).
2. Navigate to the **Tableau** > **Dashboards** section from the left-hand menu.
3. Click the Dashboard you'd like to edit from the list page.
4. Under the "Advanced" tab, look for the *Embedded Options* section.
5. Chang the Link Target field to the desired option (see below for descriptions)
6. Click the "Save" button.

### Available Options

*Default*
By default, Curator handles the URL as defined in the Tableau Dashboard.

*Self*
The URL Action defined in the Tableau Dashboard will load within the embedded frame on the page keeping the user in the
same location.

*Parent*
The URL Action defined in the Tableau Dashboard will change the location of the current browser tab the user is on
navigating them away from the current page.

*Blank*
The URL Action defined in the Tableau Dashboard will open in a new browser tab.

*Curator Detect*
Curator will look at the value of the URL you have defined in your Dashboard's URL Action and if it is a Dashboard that
is hosted on the Tableau Server your Curator instance is connected to, it will look to see if that Dashboard is
available in the current user's navigation within Curator. If accessible, it will direct them to the Curator page where
that Dashboard is hosted in the same browser tab.  If not, it will direct them to the URL opening up a new browser tab.

*Curator Detect New Tab*
The same behavior as Curator Detect, only in both scenarios it opens up a new tab.
