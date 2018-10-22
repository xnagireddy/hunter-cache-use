cmake_minimum_required(VERSION 3.2)

set(
    HUNTER_CACHE_SERVERS
    "http://localhost:8081/artifactory/hunter"
    CACHE
    STRING
    "Default cache server"
)

option(HUNTER_RUN_UPLOAD "Upload cache binaries" ON)

set(
    HUNTER_PASSWORDS_PATH
    "${CMAKE_CURRENT_LIST_DIR}/cmake/Hunter/passwords.cmake"
    CACHE
    FILEPATH
    "Hunter passwords"
)

include(cmake/HunterGate.cmake)
HunterGate(
    URL "https://github.com/ruslo/hunter/archive/v0.23.34.tar.gz"
    SHA1 "70287b1ffa810ee4e952052a9adff9b4856d0d54"
)


project(foo)

hunter_add_package(PNG)
