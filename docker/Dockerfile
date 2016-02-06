FROM centos:centos7

RUN yum install epel-release -y
RUN yum update -y
RUN yum install -y wget httpd python-setuptools python-pip python-devel \
                   libxslt-devel libxml2-devel zlib-devel libffi-devel \
                   openssl-devel libpqxx-devel libyaml-devel gcc \
                   postgresql-devel python-virtualenv

RUN virtualenv /www/sentry/
RUN source /www/sentry/bin/activate
RUN pip install -U sentry
RUN mkdir -p /etc/sentry /config
COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["./run.sh"]
