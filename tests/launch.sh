docker build -t ft_server .
docker run --rm -ti -p 8080:80 -p 443:443 -e INDEX=1 ft_server
