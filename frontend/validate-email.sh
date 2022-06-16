#!/bin/sh
EMAIL=$(git config user.email)
if [[ ! $EMAIL =~ ^[.[:alnum:]]+@signify\.com$ ]];
then
  echo "Your git information is not valid";
  echo "Please run:"
  echo '   git config --local user.name "<Your name in Signify>"'
  echo '   git config --local user.email "<Your alias>@signify.com"'
  exit 1;
fi;