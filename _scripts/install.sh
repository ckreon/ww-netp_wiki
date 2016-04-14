#!/bin/bash
set -x # Show the output of the following commands (useful for debugging)
    
# Import the SSH deployment key
openssl aes-256-cbc -K $encrypted_3a7b766da08b_key -iv $encrypted_3a7b766da08b_iv -in _deploy/netp_wiki_deploy.enc -out _deploy/netp_wiki_deploy -d
rm _deploy/netp_wiki_deploy.enc # Don't need it anymore
chmod 600 _deploy/netp_wiki_deploy
mv _deploy/netp_wiki_deploy ~/.ssh/netp_wiki_deploy

# Install NPM Packages
npm install

# Install Zopfli
git clone https://github.com/google/zopfli.git _zopfli
cd _zopfli
make
chmod +x zopfli
cd ..