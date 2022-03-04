#!/bin/sh
echo Printing Environment variables
printenv

# echo Creating DB
# bundle exec rake db:schema:load

echo Migrating DB
bundle exec rake db:migrate

# echo Seeding DB
# bundle exec rake db:seed

# Remove a potentially pre-existing server.pid for Rails.
echo Removing PID
rm -f /onac-app/tmp/pids/server.pid

# while we can start it here, it's better to start it using a container command. This can be overridden by Cloud Run, which is the current plan.
# bundle exec rails server -b 0.0.0.0 -p $PORT

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"