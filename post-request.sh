#!/bin/bash

my_app=localhost:80

cat cow.txt

#Print twice empty echo should be illegal ...

echo ""
echo ""
echo "Current datas in database : "
curl $my_app

echo "Enter your firstname : "
read firstname

echo "Enter your lastname : "
read lastname

generate_post_data()
{
  cat <<EOF
{
  "firstname": "$firstname",
  "lastname": "$lastname"
}
EOF
}

echo "POST..."
curl -i \
-H "Accept: application/json" \
-H "Content-Type:application/json" \
-X POST --data "$(generate_post_data)" "$my_app"

echo "Following datas have been post into database : "
curl $my_app
