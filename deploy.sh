#!/bin/bash

# builds and deploys app to S3

middleman build --clean
middleman s3_sync
rm -rf build
