#!/bin/sh

pm2 update
pm2 start test.js
pm2 save
npm install --silent
nodejs exporter.js
