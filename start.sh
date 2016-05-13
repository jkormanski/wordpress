#!/bin/bash -e

echo "============================================"
echo "WordPress Install Script"
echo "============================================"

#create uploads folder and set permissions
mkdir wp-content/uploads
chmod 775 wp-content/uploads
echo "Cleaning..."
#remove zip file
rm latest.tar.gz
#remove bash script
echo "========================="
echo "Installation is complete."
echo "========================="
fi
