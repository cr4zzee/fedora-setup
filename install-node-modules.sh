services=("user" "locale" "notification" "listing" "image" "booking" "calendar" "crm" "finance" "ui-web" "ui-collaborator" "inside" "worker" "tracking" "contract" "website")

for service in ${services[*]}
do
    cd "../${service}"
    sed -i -e 's+https://bitbucket+ssh://git@bitbucket+g' package.json
    sudo chown tungtran:tungtran node_modules
    npm i
    git restore package.json
    git restore package-lock.json
done