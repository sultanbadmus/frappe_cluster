# !/bin/bash

# Use PAT or ssh for private repos.

## To use SSH keys place the private key as ssh-keys/ci and uncomment following
# mkdir -p repos ~/.ssh
# chown 0600 ssh-keys/ci
# chown 0700 ~/.ssh
# ssh-keyscan -t rsa git.example.com >> ~/.ssh/known_hosts
# eval $(ssh-agent -s)
# ssh-add ssh-keys/ci

## To clone private repos through ssh use following instead of https.
# git clone --depth 1 --branch master ssh://git@github.com/frappe/twilio-integration repos/twilio_integration

## To use PAT use PERSONAL_ACCESS_TOKEN environment variable which is set through CI secret.
# git clone --depth 1 --branch master https://username:${PERSONAL_ACCESS_TOKEN}@github.com/frappe/twilio-integration repos/twilio_integration

# Following are public repositories.

git clone --depth 1 --branch develop https://github.com/frappe/health repos/healthcare
git clone --depth 1 --branch main https://github.com/frappe/chat repos/chat
# git clone --depth 1 --branch dev ssh://git@github.com/parallelscore/Lafia-WebApp-ERPNext- repos/lafia
git clone --depth 1 --branch sultan-patch https://sultanbadmus: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@github.com/parallelscore/Lafia-WebApp-ERPNext- repos/lafia
