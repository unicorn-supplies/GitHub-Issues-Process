echo ''
echo 'This script will remove the GitHub default labels and create the Array Digital process labels for your repo. A personal access token is required to access private repos.'

echo ''
echo -n 'GitHub Personal Access Token: '
read -s TOKEN

echo ''
echo -n 'GitHub Org/Repo (e.g. foo/bar): '
read REPO

REPO_USER=$(echo "$REPO" | cut -f1 -d /)
REPO_NAME=$(echo "$REPO" | cut -f2 -d /)

# Delete default labels
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/bug
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/duplicate
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/enhancement
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/help%20wanted
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/good%20first%20issue
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/invalid
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/question
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/wontfix

#create helper labels
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Devop","color":"04649b"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Bugfixing","color":"ff60d2"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"prio-1","color":"f26376"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"prio-2","color":"f9de72"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"prio-3","color":"58d890"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"for later","color":"d4c5f9"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Bug / Blocker","color":"EE344D"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Core app","color":"7bedc1"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Ready for testing","color":"4427ad"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"backlog","color":"ededed"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"todo","color":"ededed"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"sprint","color":"ededed"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"on staging","color":"ededed"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"on production","color":"ededed"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Required for MVP","color":"006b75"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Review required","color":"68f28c"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Client Discussion required","color":"fef2c0"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Developer Discussion required","color":"fef2c0"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"EPIC","color":"abfcc7"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
