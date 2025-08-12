# Trusted Authentication (DEPRECATED)

## IMPORTANT NOTICE

Curator has **deprecated** Embed Authentication using Trusted Tickets.
Starting with Curator
 **versions released in October 2025 or later, Trusted Tickets will no longer be supported**.
To ensure uninterrupted Dashboard access, you must migrate to Connected Apps or
 another SSO method before upgrading to those versions.

For guidance on transitioning, refer to our [guide on how to setup Connected Apps](https://curator.interworks.com/page/kb/creating-integrationstableau-connection/connected-apps/3976).

---

Curator can take advantage of trusted ticket authentication.

By default, if the Tableau Server workbook views which are embedded in dashboards require a login, the user will be
prompted for their username and password the first time they view any Dashboard.  With trusted ticket authentication
enabled on the system and on the associated Tableau Server, the system will authenticate on behalf of the user.

One drawback to using trusted tickets is that there is a little more overhead to authenticate on behalf of the user
before showing the Dashboard.  Since trusted tickets are one-time use, this authentication takes place before each and
every Dashboard is shown.

This functionality requires that the Tableau Server REST API is enabled.  See the
[Enabling the REST API](https://curator.interworks.com/page/kb/setup/tableau-connection/rest-api-integration/1089)
section for more information.

## Enabling Trusted Tickets

1. Login to the backend of your Curator instance (e.g. `http://curatorexample.com/backend`).
2. Navigate to **Integrations** > **Connections** from the left-hand menu.
3. Click on your Tableau Server from the list view.
4. Expand the _Embed Authentication_ Section.
5. Select **Trusted Ticket Authentication** in the drop-down selection box for _Which authentication type will embedded
dashboards use_.
6. If you have not set up Curator as a trusted host on your Tableau Server, follow the instructions in the dialog box
that appears below the enabled button.
7. Save the Connection.

**Note:** The dialog box lists out a couple of different trusted hosts to add to Tableau Server. Those include the
server address (Outbound IP), local address, server name and hostname.  These are Curator's best guess at which hosts
requests originating from Curator will be seen by Tableau Server.  Depending on your network configuration, these may
not be correct by the time the request reaches Tableau Server.  Adjust as needed.

**Note:** If you use a reverse proxy or load balancer on the network between Curator and Tableau Server, ***DO NOT***
configure the reverse proxy or load balancer as a _trusted host_.  Reverse proxies or load balancers can be configured
instead as a _trusted gateway_ if needed.  However, it's likely that you'll need to configure the reverse proxy or load
balancer to pass through specific headers so Tableau Server can tell that the request comes from Curator.  Instructions
for these headers can be found in [Tableau's documentation](https://help.tableau.com/current/server/en-us/proxy.htm#configure-the-reverse-proxy-server)
