# Fallback homeassistant
This is a home assistant fallback system. It's used when the main home assistant is not available anymore.
The main home assistant is on a different machine, a raspberry pi 4. If it comes unavailable, this home assistant fallback will be UP.

# How it works
This docker-compose runs a simple webhook server that is listening on port 8080 waiting for a POST request that only uptimekuma will trigger.\
Indeed, Uptimekuma is the service used to monitor the uptime of the main home assistant. If it fails to "ping" the main home assistant, Uptimekuma will POST a request to the webhook.\
If Uptimekuma says that the main home assistant is DOWN, the fallback simple docker home assistant will be mounted. Otherwise, the fallback will be destroyed.\
As a result, the fallback home assistant is only UP when the main home assistant is DOWN or unreachable.
