set(artifactory_reader_key "AKCp5bCBKXM8QXopQPoPshC1PfqJDBtRC4Yhf82bKZ6cgEB9RJgBHS6ZA7bkgQjChS7XG64x9")
set(artifactory_writer_key "AKCp5bCBKXM8RxibkzgP43Pc5ss3zCoBinUEbpKTqVdWy4hAHWvsJ6DEvDhg9TF4goq3a6wQa")

set(server "http://localhost:8081/artifactory/hunter")

hunter_cache_server_password(
    SERVER "${server}"
    HTTPHEADER "X-JFrog-Art-Api: ${artifactory_reader_key}"
    SUB_SHA1_SUFFIX
)

hunter_upload_password(
    SERVER "${server}"
    HTTPHEADER "X-JFrog-Art-Api: ${artifactory_writer_key}"
    SUB_SHA1_SUFFIX
)


