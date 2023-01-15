FROM public.ecr.aws/h6u7g9w5/common_runner:0.1

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]: