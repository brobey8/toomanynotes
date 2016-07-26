#!/bin/sh
cd /var/www/
npm install
npm run build:dll
npm start
