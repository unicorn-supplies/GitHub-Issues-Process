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

# Workflow
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"backlog","color":"ededed", "description": "Workflow"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"discussion required (Product)","color":"fef2c0", "description": "Workflow"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"discussion required (Devs)","color":"fef2c0", "description": "Workflow"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"todo","color":"ededed", "description": "Workflow"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"in progress","color":"ededed", "description": "Workflow"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Review required","color":"68f28c", "description": "Workflow"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"on staging","color":"ededed", "description": "Workflow"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Ready for testing","color":"4427ad", "description": "Workflow"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"on production","color":"ededed", "description": "Workflow"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"closed","color":"ededed", "description": "Workflow"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

#Teams
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Devop","color":"04649b", "description": "Who works on it?"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Frontend","color":"33e0ff", "description": "Who works on it?"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Backend","color":"0e3375", "description": "Who works on it?"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Product / Conception","color":"3085c1", "description": "Who works on it?"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Good to get started","color":"006b75", "description": "Good to jump into the project?"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

# Priorities & Roadmap
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Bug / Blocker","color":"EE344D", "description": "Priority"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"prio-1","color":"f26376", "description": "Priority"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"prio-2","color":"f9de72", "description": "Priority"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"prio-3","color":"58d890", "description": "Priority"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"for later","color":"d4c5f9", "description": "Priority"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Required for MVP","color":"006b75", "description": "Priority"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

# Topic
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Bugfixing","color":"ff60d2", "description": "Issue type"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Feature","color":"7bedc1", "description": "Issue type"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

# Size / Other dimensions
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"1","color":"abfcc7", "description": "Estimation"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"2","color":"abfcc7", "description": "Estimation"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"3","color":"abfcc7", "description": "Estimation"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"5","color":"abfcc7", "description": "Estimation"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"8","color":"abfcc7", "description": "Estimation"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"13","color":"abfcc7", "description": "Estimation"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"20","color":"abfcc7", "description": "Estimation"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"Can not be estimated","color":"abfcc7", "description": "Estimation"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"EPIC","color":"abfcc7", "description": "Estimation"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
