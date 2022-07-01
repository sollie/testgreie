FROM public.ecr.aws/docker/library/alpine:latest

COPY /app /

RUN apk add bind-tools

CMD ["./script.sh"]
