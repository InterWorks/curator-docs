# API Connections Overview

To use Tableau REST API calls we need access to a Tableau Site or Server Admin account. Curator’s API calls
need a user that has high-level permissions to check another user’s permissions, access all Dashboard
projects on Tableau Server, check Tableau Group membership, and more. Tableau documents permissions in greater detail here.

When a user tries to login to the front end of Curator, we must check if that user has access to the Tableau
Server Site we have set in the Tableau Server Settings area of the backend. Curator uses the stored Site
Server admin account to ask Tableau Server if the user has access to the Tableau Server site. If the user is
on the site, then it will allow them to login to the front end of Curator. From there, Curator must check to
see what dashboards a user has access to see.

Curator requires you to select a default Tableau Server Site to authenticate against. If a user is not a
member of the chosen Tableau Server Site, and instead a member of a different Tableau Server Site, then the
user won’t be allowed to login. Therefore, we recommend having a default site that has all users and groups
on it for authentication. If you are using a Tableau Site Admin for the backend API calls, then the above
scenario will also apply. If the Site Admin is not a Site Admin of another site, then they won’t be able to
access content/users from another Tableau Sever Site. They will not have permission to use API calls on a
different site and will not be able to set up content from those Tableau Sites.
The graphic below is an example of the frontend user login flow where we have a Tableau Server Admin account for API Calls

![API EX 1](https://curator.interworks.com/file/api-ex1)

The next graphic is an example of when a Tableau Site/Server Admin uses an API call for a Tableau Server Site
they are admin of:

![API EX 2](https://curator.interworks.com/file/api-ex2)

This graphic is an example of an incorrect configuration where a Tableau Site Admin uses an API call for a
Tableau Server Site they are not an Administrator of:

![API EX 3](https://curator.interworks.com/file/api-ex3)

The final graphic is an example of Curator checking if a user has view access to a Dashboard:

![API EX 4](https://curator.interworks.com/file/api-ex4)
