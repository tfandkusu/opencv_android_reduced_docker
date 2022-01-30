FROM circleci/android:api-30-ndk
RUN sudo apt-get update
RUN sudo apt-get install cmake ninja-build ccache
WORKDIR /home/circleci
RUN wget https://github.com/opencv/opencv/archive/refs/tags/4.5.5.tar.gz
RUN tar xvzf 4.5.5.tar.gz
ENV BUILD_DIR /home/circleci/opencv-4.5.5/platforms/
WORKDIR ${BUILD_DIR}
COPY --chown=circleci:circleci build_sdk.patch ${BUILD_DIR}
RUN patch -u android/build_sdk.py < ${BUILD_DIR}build_sdk.patch
ENV ANDROID_SDK /opt/android/sdk/
ENV ANDROID_NDK /opt/android/android-ndk-r21e/
