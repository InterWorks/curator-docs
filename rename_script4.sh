#!/bin/bash

# Function to convert filename to proper format
convert_filename() {
    local file="$1"
    # Get just the filename without path
    local filename=$(basename "$file")
    # Remove numbers at end preceded by underscore (e.g., _1089)
    filename=$(echo "$filename" | sed 's/_[0-9]*\.md$/.mdx/')
    # Convert to lowercase
    filename=$(echo "$filename" | tr '[:upper:]' '[:lower:]')
    # Replace spaces with underscores  
    filename=$(echo "$filename" | tr ' ' '_')
    # Replace special characters
    filename=$(echo "$filename" | sed 's/[()&]//g')
    # Replace multiple underscores with single
    filename=$(echo "$filename" | sed 's/__*/_/g')
    # Remove leading/trailing underscores
    filename=$(echo "$filename" | sed 's/^_//; s/_$//')
    echo "$filename"
}

# Function to move and rename file
move_file() {
    local source="$1"
    local dest_dir="$2"
    local new_name=$(convert_filename "$source")
    
    if [ -f "$source" ]; then
        echo "Moving: $source -> $dest_dir/$new_name"
        cp "$source" "$dest_dir/$new_name"
    fi
}

echo "Processing Users & Groups..."
# User Management
move_file "4_Users & Groups/0_User Management/0_Users and Groups Overview_1212.md" "users_and_groups/user_management"
move_file "4_Users & Groups/0_User Management/1_User Sync and Membership Sync Overview_1389.md" "users_and_groups/user_management"
move_file "4_Users & Groups/0_User Management/2_Reset User's Password_1243.md" "users_and_groups/user_management"
move_file "4_Users & Groups/0_User Management/3_Frontend Users_1099.md" "users_and_groups/user_management"
move_file "4_Users & Groups/0_User Management/4_Automatic License Provisioning_1160.md" "users_and_groups/user_management"
move_file "4_Users & Groups/0_User Management/5_Just-in-time (JIT) Provisioning_1175.md" "users_and_groups/user_management"
move_file "4_Users & Groups/0_User Management/6_Username Mapping_1365.md" "users_and_groups/user_management"
move_file "4_Users & Groups/0_User Management/7_Custom Attributes_1393.md" "users_and_groups/user_management"

# User Security
move_file "4_Users & Groups/1_User Security/0_Frontend User Permissions_1312.md" "users_and_groups/user_security"
move_file "4_Users & Groups/1_User Security/1_Password Change_1085.md" "users_and_groups/user_security"
move_file "4_Users & Groups/1_User Security/2_Password Reset_1086.md" "users_and_groups/user_security"
move_file "4_Users & Groups/1_User Security/3_Password Expiration and Complexity_1273.md" "users_and_groups/user_security"
move_file "4_Users & Groups/1_User Security/4_Disabling Link-preview Security_1418.md" "users_and_groups/user_security"
move_file "4_Users & Groups/1_User Security/5_User Throttling_1499.md" "users_and_groups/user_security"

echo "Processing Site Administration..."
# User Notifications
move_file "5_Site Administration/0_User Notifications/0_Third Party Cookies_1342.md" "site_administration/user_notifications"

# Backend Administrators
move_file "5_Site Administration/1_Backend Administrators/0_Overview_1098.md" "site_administration/backend_administrators"
move_file "5_Site Administration/1_Backend Administrators/1_Password Reset_1202.md" "site_administration/backend_administrators"

# Admin Email Notifications
move_file "5_Site Administration/2_Admin Email Notifications/0_System Notifications_1390.md" "site_administration/admin_email_notifications"
move_file "5_Site Administration/2_Admin Email Notifications/1_Data Manager Notifications_1496.md" "site_administration/admin_email_notifications"

# Performance (handling both directories 3 and 6)
move_file "5_Site Administration/3_Performance/0_Troubleshooting Load Times_1348.md" "site_administration/performance"
move_file "5_Site Administration/3_Performance/1_Cache Warming_1544.md" "site_administration/performance"
move_file "5_Site Administration/6_Performance/0_Troubleshooting Load Times_1348.md" "site_administration/performance" 2>/dev/null || true
move_file "5_Site Administration/6_Performance/1_Cache Warming_1544.md" "site_administration/performance" 2>/dev/null || true

# License Key
move_file "5_Site Administration/4_License Key/0_Updating License Key_1100.md" "site_administration/license_key"

# Standards Compliance
move_file "5_Site Administration/5_Standards Compliance/0_Web Accessibility_1514.md" "site_administration/standards_compliance"

echo "Done with fourth batch"
