FROM python:3.10

LABEL version="1.0.0"
LABEL repository="https://github.com/fabio-20dash/chalice-action"
LABEL homepage="https://github.com/fabio-20dash/chalice-action"
LABEL maintainer="Chris Oh <chris@5tigerjelly.com> (https://5tigerjelly.com)"

COPY entrypoint.sh /entrypoint.sh

RUN pip install --upgrade pip
RUN pip install -r /github/workspace/requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
