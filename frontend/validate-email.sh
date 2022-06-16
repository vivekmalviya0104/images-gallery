#!/bin/sh
EMAIL=$(git config user.email)
if [[ ! $EMAIL =~ ^[.[:alnum:]]+@valtech\.com$ ]];
then
  echo "Your git information is not valid";
  echo "Please run:"
  echo '   git config --local user.name "<Your name in Valtech>"'
  echo '   git config --local user.email "<Your alias>@valtech.com"'
  exit 1;
fi;