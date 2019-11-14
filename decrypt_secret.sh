#!/bin/sh

# Decrypt the file
# --batch to prevent interactive command --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$secret_key" \
--output google_auth.development.json google_auth.development.json.gpg
