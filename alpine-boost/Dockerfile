FROM alpine:3.18.2

# Actualize repositories and install C++ tools and Boost library
RUN apk update &&  \
    apk upgrade &&  \
    apk add git gcc g++ make cmake boost1.82-dev
