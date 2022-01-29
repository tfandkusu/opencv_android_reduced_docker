# opencv_android_reduced_docker

Docker image to build [OpenCV](https://github.com/opencv/opencv) Android SDK.
Size of shared library `libopencv_java4.so` is reduced.
It includes only [core,imgcodecs,imgproc and java](https://github.com/tfandkusu/opencv_android_reduced_docker/blob/2b653c4e4f07a8f1c524884cc4e92f2ce16f5b36/build.sh#L3) modules.

## Size of libopencv_java4.so


| Architecture | [Official build](https://github.com/opencv/opencv/releases/tag/4.5.5) | This build |
| --- | --- | --- |
| arm64-v8 | 17M | 8.2M |
| armeabi-v7a | 11M | 5.3M |
| x86_64 | 51M  | 12M |
| x86 | 36M | 10M |




## Usage


```
docker compose build
docker compose run main
```

## Output

| Directory | Contents |
| --- | --- |
| output/OpenCV-android-sdk | OpenCV Android SDK |
| libc++_shared | libc++_shared.so |

