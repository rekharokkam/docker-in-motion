FROM alpine

ENV ENVIRONMENT_VARIABLE="I am internally provided environment variable"
ARG ARGUMENT_VALUE="I am internally provided argument value"
ARG TO_BE_PROVIDED_ARGUMENT_VALUE

RUN touch /tmp/file1.txt \
    && echo ${TO_BE_PROVIDED_ARGUMENT_VALUE} >> /tmp/file1.txt
    