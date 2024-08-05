#!/bin/bash

docker run --rm -v ${PWD}:/module --device /dev/ttyUSB0 --privileged -P bitcraze/aideck tools/build/make-example examples/image_processing/FaceDetection flash