#!/bin/sh -l

if [ -n "$CF_API" ]; then
  cf api "$CF_API"
else
  cf api "https://api.cloud.service.gov.uk"
fi

if [ -n "$CF_USERNAME" ] && [ -n "$CF_PASSWORD" ]; then
  cf auth "$CF_USERNAME" "$CF_PASSWORD"
fi

if [ -n "$CF_ORG" ] && [ -n "$CF_SPACE" ]; then
  cf target -o "$CF_ORG" -s "$CF_SPACE"
fi

sh -c "cf $*"
