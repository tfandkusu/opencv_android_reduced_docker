# opencv_android_reduced_docker

Docker image to build [OpenCV](https://github.com/opencv/opencv) Android SDK.
Size of shared library `libopencv_java4.so` is reduced.
It includes only [core,imgcodecs,imgproc and java](https://github.com/tfandkusu/opencv_android_reduced_docker/blob/42041b37dd9747fe0b85eae5e989037b62c5027a/docker-compose.yml#L7) modules.
And this use static library as C++ runtime.

## Size of libopencv_java4.so

| Architecture | [Official build](https://github.com/opencv/opencv/releases/tag/4.5.5) | libc++_shared.so | This build (not needs libc++_shared.so) |
| --- | --- | --- | --- |
| arm64-v8 | 17M |  5.9M | 8.9M |
| armeabi-v7a | 11M | 4M | 5.7M |
| x86_64 | 51M  | 6.1M | 13M |
| x86 | 36M | 5.3M | 11M |

## Usage


```
docker compose build
docker compose run main
```
