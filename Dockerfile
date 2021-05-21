FROM centos/python-38-centos7
COPY ./docker-entrypoint.sh /
WORKDIR /working
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["bash"]
