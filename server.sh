#!/usr/bin/env bash

while :; do nc -q 1 -l 8080 <<EOF
HTTP/1.1 200 OK
Content-Type: text/html

<html>
    <body>
        <h1>
            Current date is: $(date)
        </h1>
    </body>
</html>
EOF
done
