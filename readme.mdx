# Documentation Syncing

In our project, it's crucial that our documentation stays in sync with our marketing site. This ensures that our users
always have the most up-to-date information about Curator.

## Adding a new Document

In order to add a new document, you must first [create a new item](https://curator.interworks.com/backend/interworks/datamanager/Item)
on the marketing site.  To make sure it doesn't render on the marketing site before there's content that has
been added, **do not pick the correct hierarchy**.  Instead, choose *Coming Soon* for the section.  This will ensure
the element does not display, and then choose whatever hierarchies after that you'd like.

When the documentation is generated using the artisan command (see below for more info on the command), it will ignore
any existing hierarchies on created elements and will place the item where it is located within the `/documentation`
folder.

### File naming conventions

#### Documentation order

When creating a new document markdown file, it must be pre-pended with the order number followed by an underscore in
which you want it to appear in the documentation.  For example, the first item in each section will start with "1_".

#### Documentation ID

Once you've created a new item, and have successfully hidden it using the *Coming Soon* section selection, copy the ID
of the item (found in the URL on the edit-item page) and append it to the markdown document name.

For example, if the new item's url is `https://curator.interworks.com/backend/interworks/datamanager/item/update/1566`,
the file should end with: `_1566.md`.

#### Naming convention example

If I would like my new item to be the 3rd element in this section (ensuring that I already have "1_" and "2_" created),
I would name my new file this:
`3_Fallback Image_1566.md`

- "3_" indicating it's the 3rd item in this section.
- "Fallback Image" for the title
- "_1566" indicating the data will be stored in that item ID when generating a new output.

## Why Sync?

Keeping our documentation inside of this core repository allows for automated spell-checking, link-testing and
consistent formatting.  This consistency is key to providing a seamless user experience, always available documentation
and updating documents when their corresponding features are released.

## How to Sync?

The syncing process is easy with a custom Artisan command. You can run this command to sync the documentation with the
marketing site:

```bash
php artisan portal:documentationupdate
```

The command above will output an .iwe file that contains **all groups and data manager items** from the site you're
syncing from.  This means you can seamlessly import the file without losing any data - just make sure you do it right
away!

To make things easier, here's the command, without the API key, that will allow you to update documentation on our
marketing site - all you have to do to run this command is to replace the `[api_key]` with a real key to output an .iwe file:

```bash
php artisan portal:documentationupdate https://curator.interworks.com [api_key] 19 51 52 55
```

The iwe file will be output to the following path:
`/documentation/output`

You can then retrieve that .iwe file and upload it to the target site (typically, [https://curator.interworks.com])

## Removing a new Document

Due to the complex nature of syncing data manager items with our local documentation folder structure, items that are
found in the remote site's Data Manager but not found locally will be kept.  This means that in order to remove stale
or no-longer-relevant docs, they need to be manually removed.  However, the documentation sync will output a warning
when these are found letting you know which IDs may need to be removed:

**NOTE:** These ids may also be related to pending documents that have yet to be released - such as items that are in
a new MR, but have not been added to a release, so be careful when deleting these items.  Make sure you truly want to
get rid of them.

Sample output:

```txt
The following IDs do not exist locally but exit on the source site.  They are likely as-yet
published docs, or stale docs that need deleting:
3982
```
