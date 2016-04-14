#!/bin/bash
set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then
    # Initialize a new git repo in _site, and push it to our server.
    cd _site
    git init
        
    git remote add deploy "deploy@159.203.216.201:/var/www/netp_wiki"
    git config user.name "Travis CI"
    git config user.email "ckreon+TravisCI@gmail.com"
    
    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying, branch is not master."
fi