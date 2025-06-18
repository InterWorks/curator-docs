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

echo "Processing Upgrading & Migration..."
# Upgrading
move_file "6_Upgrading & Migration/0_Upgrading/0_System Upgrade_1093.md" "upgrading_and_migration/upgrading"
move_file "6_Upgrading & Migration/0_Upgrading/1_Disable Curator Upgrades_1096.md" "upgrading_and_migration/upgrading"
move_file "6_Upgrading & Migration/0_Upgrading/2_Offline Upgrades (Air Gapped)_1097.md" "upgrading_and_migration/upgrading"
move_file "6_Upgrading & Migration/0_Upgrading/3_Dependency Updates_1207.md" "upgrading_and_migration/upgrading"
move_file "6_Upgrading & Migration/0_Upgrading/4_Troubleshooting Upgrades_1258.md" "upgrading_and_migration/upgrading"

# Migration
move_file "6_Upgrading & Migration/1_Migration/0_Importing and Exporting_1094.md" "upgrading_and_migration/migration"

# Backups
move_file "6_Upgrading & Migration/2_Backups/0_Curator Backup_1095.md" "upgrading_and_migration/backups"
move_file "6_Upgrading & Migration/2_Backups/1_Taking a Manual Full Backup_1372.md" "upgrading_and_migration/backups"
move_file "6_Upgrading & Migration/2_Backups/2_Manual Restoration of Curator Backup_1313.md" "upgrading_and_migration/backups"

echo "Processing Server Management..."
# System Administration
move_file "7_Server Management/0_System Administration/0_Disk Speed Metrics_1543.md" "server_management/system_administration"
move_file "7_Server Management/0_System Administration/1_Server Hardening Procedures_1559.md" "server_management/system_administration"
move_file "7_Server Management/0_System Administration/2_Filesystem Permissions_1201.md" "server_management/system_administration"
move_file "7_Server Management/0_System Administration/3_Updating Curator Logging_1328.md" "server_management/system_administration"
move_file "7_Server Management/0_System Administration/4_Linux - Cron Troubleshooting_1180.md" "server_management/system_administration"

# Architecture
move_file "7_Server Management/1_Architecture/0_API Connections Overview_1107.md" "server_management/architecture"

echo "Processing Curator API..."
# Getting Started
move_file "8_Curator API/0_Getting Started/0_Curator API Overview_1101.md" "curator_api/getting_started"
move_file "8_Curator API/0_Getting Started/1_Curator Integration Overview_1503.md" "curator_api/getting_started"

# API Docs
move_file "8_Curator API/1_API Docs/0_Integration_1102.md" "curator_api/api_docs"
move_file "8_Curator API/1_API Docs/1_Curator API_1103.md" "curator_api/api_docs"
move_file "8_Curator API/1_API Docs/2_Tableau API_1104.md" "curator_api/api_docs"
move_file "8_Curator API/1_API Docs/3_Content_1105.md" "curator_api/api_docs"
move_file "8_Curator API/1_API Docs/4_User API_1106.md" "curator_api/api_docs"
move_file "8_Curator API/1_API Docs/5_Authentication_1602.md" "curator_api/api_docs"

# Custom Integration
move_file "8_Curator API/2_Custom Integration/0_Scripts_1091.md" "curator_api/custom_integration"
move_file "8_Curator API/2_Custom Integration/1_Commands_1092.md" "curator_api/custom_integration"
move_file "8_Curator API/2_Custom Integration/2_Subscription Routing_1209.md" "curator_api/custom_integration"

echo "Processing Tutorials..."
# Tutorials
move_file "9_Tutorials/0_None/0_Frontend Quick Start - Homepage_1115.md" "tutorials/none"
move_file "9_Tutorials/0_None/1_Frontend Quick Start - Dashboard_1116.md" "tutorials/none"
move_file "9_Tutorials/0_None/2_Backend Quick Start - Styling_1117.md" "tutorials/none"
move_file "9_Tutorials/0_None/3_Backend Quick Start - Adding Content_1118.md" "tutorials/none"
move_file "9_Tutorials/0_None/4_Backend Quick Start - Adding Content (Menu and Navigation)_1119.md" "tutorials/none"
move_file "9_Tutorials/0_None/5_Backend Quick Start - Adding Content (Filters, Parameters, Tutorials & Loading Screens)_1120.md" "tutorials/none"
move_file "9_Tutorials/0_None/6_Get Started with Curator in 5 Minutes_1135.md" "tutorials/none"

echo "Processing Assets..."
# Assets
move_file "10_Assets/0_None/0_Windows Installer_1111.md" "assets/none"
move_file "10_Assets/0_None/1_htaccess file_1112.md" "assets/none"
move_file "10_Assets/0_None/2_Dockerfile_1113.md" "assets/none"
move_file "10_Assets/0_None/3_API Example - Creating a File (Python)_1114.md" "assets/none"
move_file "10_Assets/0_None/4_Sample Hero Images (jpgs)_1261.md" "assets/none"
move_file "10_Assets/0_None/5_Logging.php file_1327.md" "assets/none"

echo "Processing Best Practices..."
# Performance
move_file "11_Best Practices/0_Performance/0_Menu Tuning_1534.md" "best_practices/performance"
move_file "11_Best Practices/0_Performance/1_Cache Warming_1546.md" "best_practices/performance"

# Security
move_file "11_Best Practices/1_Security/0_Password Settings_1536.md" "best_practices/security"

echo "Processing remaining setup files..."
# SSL
mkdir -p setup/ssl
move_file "setup/2_SSL/0_Windows SSL (IIS) - DEPRECATED_1177.md" "setup/ssl"
move_file "setup/2_SSL/1_Force SSL_1084.md" "setup/ssl"
move_file "setup/2_SSL/2_Linux SSL_1150.md" "setup/ssl"
move_file "setup/2_SSL/3_Windows SSL_1123.md" "setup/ssl"
move_file "setup/2_SSL/4_Basic HTTP Authentication_1083.md" "setup/ssl"

# Email
mkdir -p setup/email
move_file "setup/3_Email/0_Email Configuration_1159.md" "setup/email"

# High Availability
mkdir -p setup/high_availability
move_file "setup/4_High Availability/0_High Availability_1245.md" "setup/high_availability"

# Central Dispatch
mkdir -p setup/central_dispatch
move_file "setup/5_Central Dispatch/0_Windows Central Dispatch_1199.md" "setup/central_dispatch"
move_file "setup/5_Central Dispatch/1_Linux Central Dispatch_1200.md" "setup/central_dispatch"

# Proxy Configuration
mkdir -p setup/proxy_configuration
move_file "setup/6_Proxy Configuration/0_Forward Proxy_1205.md" "setup/proxy_configuration"
move_file "setup/6_Proxy Configuration/1_Reverse Proxy_1206.md" "setup/proxy_configuration"

# Trial Quick Start Guide
mkdir -p setup/trial_quick_start_guide
move_file "setup/7_Trial Quick Start Guide/0_Getting Started_1524.md" "setup/trial_quick_start_guide"
move_file "setup/7_Trial Quick Start Guide/1_Setting Up Your Portal_3969.md" "setup/trial_quick_start_guide"
move_file "setup/7_Trial Quick Start Guide/2_Adding Your First Dashboard_1526.md" "setup/trial_quick_start_guide"
move_file "setup/7_Trial Quick Start Guide/3_Creating Your First Page_1527.md" "setup/trial_quick_start_guide"

# Authentication (additional files)
move_file "setup/authentication/2_OneLogin (SAML)_1122.md" "setup/authentication"
move_file "setup/authentication/3_Curator Users_1176.md" "setup/authentication"
move_file "setup/authentication/4_Azure AD (SAML)_1244.md" "setup/authentication"
move_file "setup/authentication/5_OneLogin (OIDC)_1334.md" "setup/authentication"
move_file "setup/authentication/6_Multifactor Authentication_1351.md" "setup/authentication"
move_file "setup/authentication/7_Signing SAML Login Requests_1417.md" "setup/authentication"
move_file "setup/authentication/8_Active Directory_1144.md" "setup/authentication"
move_file "setup/authentication/9_Windows LDAP (IIS) - DEPRECATED_1132.md" "setup/authentication"

echo "Done with final batch"
