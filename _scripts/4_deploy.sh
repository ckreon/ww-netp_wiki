#!/bin/bash
set -x

# Compress assets with Zopfli
_zopfli/zopfli --i1000 _site/*.xml _site/*.html _site/**/*.html _site/assets/css/*.css _site/assets/pdf/*.pdf _site/assets/fonts/* _site/assets/icons/*

# Start SSH Agent
eval `ssh-agent -s`
ssh-add ~/.ssh/netp_wiki_deploy

# Deploy to Production Server if branch is master
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