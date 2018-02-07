from docker:latest
RUN apk add --no-cache curl jq python py-pip
RUN pip install awscli
RUN apk add --no-cache libxml2-utils
RUN apk add --no-cache bash
COPY ecs-deploy /bin/ecs-deploy
RUN chmod +x /bin/ecs-deploy
