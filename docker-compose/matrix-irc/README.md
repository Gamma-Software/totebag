# Generate the config file
`docker run -it --rm --mount type=volume,src=synapse-data,dst=/data -e SYNAPSE_SERVER_NAME=my.domain.name -e SYNAPSE_REPORT_STATS=yes matrixdotorg/synapse:latest generate`

# Start synapse
`docker run -d --name synapse --mount type=volume,src=synapse-data,dst=/data -p 8008:8008 matrixdotorg/synapse:latest`

# Add an admin user
`docker exec -it synapse register_new_matrix_user http://localhost:8008 -c /data/homeserver.yaml --help`

# Test setup
To quickly test the setup run an instance of element riot
`docker run -p 8089:80 vectorim/element-web`
And access it http://localhost:8089 and try to connect to your local matrix instance http://localhost:8008

# Proxy the server
rename "nginx-exemple.conf" to "nginx.conf" and modify it to fit your setup