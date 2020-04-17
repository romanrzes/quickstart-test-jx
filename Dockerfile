FROM scratch
EXPOSE 8080
ENTRYPOINT ["/quickstart-test-jx"]
COPY ./bin/ /