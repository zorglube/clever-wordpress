#!/bin/bash
# Create the S3 bucket on Cellar

pip install s3cmd

cat > .s3cfg << EOF
[default]
access_key = $CELLAR_ADDON_KEY_ID
secret_key = $CELLAR_ADDON_KEY_SECRET
host_base = $CELLAR_ADDON_HOST
host_bucket = $CELLAR_ADDON_HOST
use_https = True
EOF

s3cmd mb s3://$CELLAR_ADDON_BUCKET -c .s3cfg
