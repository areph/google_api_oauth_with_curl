URI="https://accounts.google.com/o/oauth2/v2/auth?response_type=code&client_id=$CLIENT_ID&redirect_uri=$REDIRECT_URI&scope=$SCOPE&access_type=offline"

if type "xdg-open" > /dev/null 2>&1; then
  # for Linux
  xdg-open $URI
else
  # for Other OS
  echo $URI
fi
