# URL Redirects

## Introduction

URL Redirects allow Curator administrators to create system-wide redirects for users when URLs change. This is
especially useful when moving between analytics systems, renaming pages, or restructuring your site organization.

The redirect system automatically handles user navigation, ensuring that bookmarks and external links continue to work
even after URL changes.

## Accessing URL Redirects

1. Log into your Curator backend as an administrator.
2. Navigate to **Settings** > **Curator** > **Redirects**.
3. Click **New Redirect** to create a new redirect rule.

## Understanding Redirect Types

### Exact Match

An **Exact Match** redirect will redirect users from one specific URL to another specific URL.

**Use Case:** You've renamed a specific Dashboard or page and want to redirect users from the old URL to the new one.

**Example:**

- **Redirect From:** `/dashboard/old-dashboard`
- **Redirect To:** `/dashboard/new-dashboard`
- **Result:** Users visiting `/dashboard/old-dashboard` will automatically be redirected to `/dashboard/new-dashboard`

### Find/Replace

A **Find/Replace** redirect finds specific text in URLs and replaces it with different text.

**Use Case:** You've reorganized your site structure and need to update multiple URLs that contain common text patterns.

**Example:**

- **Find Text:** `old`
- **Replacement Text:** `new`
- **Result:** Any URL containing "old" will have that text replaced with "new"
  - `/dashboard/old-dashboard` becomes `/dashboard/new-dashboard`

## Creating a Redirect

### Step 1: Choose Redirect Type

Select either **Exact** or **Find/Replace** based on your needs:

- Choose **Exact** when redirecting specific URLs
- Choose **Find/Replace** when updating multiple URLs with common patterns

### Step 2: Configure Source and Destination

#### For Exact Match

- **Redirect From:** Enter the old URL (e.g., `/backend/old-page` or `https://curatorexample.com/backend/old-page`)
- **Redirect To:** Enter the new URL (e.g., `/backend/new-page` or `https://curatorexample.com/backend/new-page`)

#### For Find/Replace

- **Find Text:** Enter the text pattern to find in URLs
- **Replacement Text:** Enter the text to replace it with

### Step 3: Configure Domain Settings

Enable **Adjust Domain** if you need to redirect users to a completely different domain.

**Example Use Case:** Moving from `https://curatorexample.interworks.com/` to `https://curatortest.interworks.com/`

- **Redirect From:** `https://curatorexample.interworks.com/`
- **Redirect To:** `https://curatortest.interworks.com/`
- **Adjust Domain:**  Enabled

## Advanced Features

### Dashboard Redirects

**Tip:** Want to redirect to a Dashboard on Curator if it exists, or Tableau if not?

Use the subscription endpoint: `/subscription/t/{site}/views/{workbook}/{dashboard}`

This special endpoint automatically routes users to the appropriate location based on availability.

### Cross-Platform Redirects

The redirect system works seamlessly between different analytics platforms:

- Redirect from Tableau Server to Curator
- Redirect from old Tableau locations to new ones
- Redirect between different Curator installations

## Managing Existing Redirects

### Viewing Redirects

The redirect management page displays:

- **ID:** Unique identifier for each redirect
- **Type:** Either "exact" or "find_replace"
- **From:** The source URL or text pattern
- **To:** The destination URL or replacement text
- **Adjust Domain:** Whether cross-domain redirection is enabled

### Editing and Deleting

- Click on any redirect to edit its settings
- Use the delete button to remove redirects that are no longer needed
- Changes take effect immediately

## Best Practices

1. **Test Your Redirects:** After creating redirects, test them by visiting the old URLs to ensure they work correctly.

2. **Use Exact Match for Specific URLs:** When redirecting individual pages or dashboards, use exact match for precise control.

3. **Use Find/Replace for Bulk Changes:** When reorganizing site structure, find/replace can update multiple URLs efficiently.

## Troubleshooting

### Common Issues

**Redirect Not Working:**

- Verify the "Redirect From" URL exactly matches what users are accessing
- Check that the "Redirect To" URL is valid and accessible
- Ensure the redirect type (exact vs. find/replace) is appropriate for your use case

**Cross-Domain Redirects:**

- Ensure "Adjust Domain" is enabled for redirects to different domains
- Verify that the target domain is accessible to your users
- Test cross-domain redirects thoroughly

### Getting Help

If you encounter issues with URL redirects:

1. Check the redirect configuration for typos or incorrect settings
2. Test the redirect in an incognito/private browser window
