FROM amazon/dynamodb-local

# Maintainer
MAINTAINER Ares team <umbrella-ares@cisco.com>

ENV DEBIAN_FRONTEND noninteractive

RUN curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py --user

ENV PATH="~/.local/bin:${PATH}"

RUN pip install awscli --upgrade --user

COPY dynamo_table_syntax.json run_dynamo.sh /home/dynamodblocal/

ENTRYPOINT []

CMD ["/bin/sh", "-c", "/home/dynamodblocal/run_dynamo.sh"]