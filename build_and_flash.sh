#!/bin/bash

docker run --rm -v ${PWD}:/module aideck-with-autotiler tools/build/make-example examples/image_processing/FaceDetection clean model build image && cfloader flash examples/image_processing/FaceDetection/BUILD/GAP8_V2/GCC_RISCV_FREERTOS/target.board.devices.flash.img deck-bcAI:gap8-fw -w radio://0/60/2M/E7E7E7E718

