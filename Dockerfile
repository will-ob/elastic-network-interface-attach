FROM ubuntu:14.04

MAINTAINER Will O'Brien "will.obrien@dibit.co"

run apt-get -y update
RUN apt-get install -y python-requests python-pip
RUN pip install boto3

ADD elastic-network-interface-attach /bin/elastic-network-interface-attach

CMD /bin/elastic-network-interface-attach
