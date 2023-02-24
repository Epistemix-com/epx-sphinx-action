FROM sphinxdoc/sphinx:5.2.2

LABEL "maintainer"="Andrew Lane <andrew.lane@epistemix.com>"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    git pandoc

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
