#!/bin/bash

docker run --rm -v ${PWD}:/module aideck-with-autotiler tools/build/make-example examples/image_processing/FaceDetection clean model build image && \
    docker run --rm -v ${PWD}:/module --device /dev/ttyUSB0 --privileged -P bitcraze/aideck tools/build/make-example examples/image_processing/FaceDetection flash