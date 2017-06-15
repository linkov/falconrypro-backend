#!/bin/bash
ssh linkov1@198.58.114.122 << EOF
	cd projects/falconrypro/production/falconrypro-backend/falconrypro
	git checkout master
	git reset --hard origin/master
	git pull
	bundle install
	bundle --deployment
	rake RAILS_ENV=production db:migrate
	rake RAILS_ENV=production assets:precompile
	touch tmp/restart.txt
EOF
