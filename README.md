Template registry docker.

1) Clone git
2) You can have error with bash/sh client, if you get an error then fix the makefile:
   password:
        @bash -c ' \
        read -p "Enter username: " username; \
        read -s -p "Enter password: " password; \
        echo; \
        docker run registry:2.6 htpasswd -Bbn $$username $$password > htpasswd'
3) Pick up the container and go to domain: 5000
