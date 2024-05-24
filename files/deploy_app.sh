#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="https://raw.githubusercontent.com/mango0422/hashicat-app/main/files/ProFit_member.jpg" height="600" ></img></center>
  <center><h2>Meow World!</h2></center>
  Welcome to team ProFit! We're glad to see you.<br/>
  We'll be
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
