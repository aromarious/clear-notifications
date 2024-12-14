#!/bin/sh
node release-update.js clear-notifications.tmpl clear-notifications {"version": "$(git tag)"}
chmod +x clear-notifications
git add .
