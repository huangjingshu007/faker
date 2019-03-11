#!/bin/bash

docker run -v $TRAVIS_BUILD_DIR:/code i386/ubuntu bash -c "
    ${INSTALL_REQUIREMENTS} \
    && cd code \
    && coverage run --source=faker setup.py test \
    && coverage report"
