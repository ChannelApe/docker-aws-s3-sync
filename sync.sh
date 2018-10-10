#!/bin/ash

set -e

echo "$(date) - Start"

aws configure set default.s3.max_bandwidth $MAX_BANDWIDTH
aws configure set default.s3.max_concurrent_requests $MAX_CONCURRENT_REQUESTS
aws configure set default.s3.multipart_threshold $MULTIPART_THRESHOLD
aws configure set default.s3.multipart_chunksize $MULTIPART_CHUNKSIZE
aws s3 sync /data s3://$BUCKET$BUCKET_PATH $PARAMS

echo "$(date) End"
