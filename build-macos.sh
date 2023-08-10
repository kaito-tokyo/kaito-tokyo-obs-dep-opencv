#!/bin/bash
set -euo pipefail

cmake opencv -B build_$1/x86_64 \
  -DCMAKE_INSTALL_PREFIX=/usr/local \
  -DCMAKE_BUILD_TYPE=$1 \
  -DOPENCV_FORCE_3RDPARTY_BUILD=ON \
  -DCMAKE_OSX_DEPLOYMENT_TARGET=11.0 \
  -DCMAKE_OSX_ARCHITECTURES="x86_64" \
  -DBUILD_SHARED_LIBS=OFF \
  -DBUILD_opencv_apps=OFF \
  -DBUILD_opencv_js=OFF \
  -DBUILD_ANDROID_PROJECTS=OFF \
  -DBUILD_ANDROID_EXAMPLES=OFF \
  -DBUILD_DOCS=OFF \
  -DBUILD_EXAMPLES=OFF \
  -DBUILD_PACKAGE=OFF \
  -DBUILD_PERF_TESTS=OFF \
  -DBUILD_TESTS=OFF \
  -DBUILD_WITH_DEBUG_INFO=OFF \
  -DBUILD_WITH_STATIC_CRT=OFF \
  -DBUILD_WITH_DYNAMIC_IPP=OFF \
  -DBUILD_FAT_JAVA_LIB=OFF \
  -DBUILD_ANDROID_SERVICE=OFF \
  -DBUILD_CUDA_STUBS=OFF \
  -DBUILD_JAVA=OFF \
  -DBUILD_OBJC=OFF \
  -DBUILD_opencv_python3=OFF \
  -DINSTALL_CREATE_DISTRIB=OFF \
  -DINSTALL_BIN_EXAMPLES=OFF \
  -DINSTALL_C_EXAMPLES=OFF \
  -DINSTALL_PYTHON_EXAMPLES=OFF \
  -DINSTALL_ANDROID_EXAMPLES=OFF \
  -DINSTALL_TO_MANGLED_PATHS=OFF \
  -DINSTALL_TESTS=OFF \
  -DBUILD_opencv_calib3d=OFF \
  -DBUILD_opencv_core=ON \
  -DBUILD_opencv_dnn=OFF \
  -DBUILD_opencv_features2d=ON \
  -DBUILD_opencv_flann=OFF \
  -DBUILD_opencv_gapi=OFF \
  -DBUILD_opencv_highgui=OFF \
  -DBUILD_opencv_imgcodecs=ON \
  -DBUILD_opencv_imgproc=ON \
  -DBUILD_opencv_ml=OFF \
  -DBUILD_opencv_objdetect=OFF \
  -DBUILD_opencv_photo=OFF \
  -DBUILD_opencv_stitching=OFF \
  -DBUILD_opencv_video=OFF \
  -DBUILD_opencv_videoio=OFF \
  -DWITH_PNG=ON \
  -DWITH_JPEG=OFF \
  -DWITH_TIFF=OFF \
  -DWITH_WEBP=OFF \
  -DWITH_OPENJPEG=OFF \
  -DWITH_JASPER=OFF \
  -DWITH_OPENEXR=OFF \
  -DWITH_FFMPEG=OFF \
  -DWITH_GSTREAMER=OFF \
  -DWITH_1394=OFF \
  -DWITH_PROTOBUF=OFF \
  -DBUILD_PROTOBUF=OFF \
  -DWITH_CAROTENE=OFF \
  -DWITH_EIGEN=OFF \
  -DWITH_OPENVX=OFF \
  -DWITH_CLP=OFF \
  -DWITH_DIRECTX=OFF \
  -DWITH_VA=OFF \
  -DWITH_LAPACK=OFF \
  -DWITH_QUIRC=OFF \
  -DWITH_ADE=OFF \
  -DWITH_ITT=OFF \
  -DWITH_OPENCL=OFF \
  -DWITH_IPP=OFF

cmake --build build_$1/x86_64
cmake --install build_$1/x86_64 --prefix release/$1/x86_64

cmake opencv -B build_$1/arm64 \
  -DCMAKE_INSTALL_PREFIX=/usr/local \
  -DCMAKE_BUILD_TYPE=$1 \
  -DOPENCV_FORCE_3RDPARTY_BUILD=ON \
  -DCMAKE_OSX_DEPLOYMENT_TARGET=11.0 \
  -DCMAKE_OSX_ARCHITECTURES="arm64" \
  -DBUILD_SHARED_LIBS=OFF \
  -DBUILD_opencv_apps=OFF \
  -DBUILD_opencv_js=OFF \
  -DBUILD_ANDROID_PROJECTS=OFF \
  -DBUILD_ANDROID_EXAMPLES=OFF \
  -DBUILD_DOCS=OFF \
  -DBUILD_EXAMPLES=OFF \
  -DBUILD_PACKAGE=OFF \
  -DBUILD_PERF_TESTS=OFF \
  -DBUILD_TESTS=OFF \
  -DBUILD_WITH_DEBUG_INFO=OFF \
  -DBUILD_WITH_STATIC_CRT=OFF \
  -DBUILD_WITH_DYNAMIC_IPP=OFF \
  -DBUILD_FAT_JAVA_LIB=OFF \
  -DBUILD_ANDROID_SERVICE=OFF \
  -DBUILD_CUDA_STUBS=OFF \
  -DBUILD_JAVA=OFF \
  -DBUILD_OBJC=OFF \
  -DBUILD_opencv_python3=OFF \
  -DINSTALL_CREATE_DISTRIB=OFF \
  -DINSTALL_BIN_EXAMPLES=OFF \
  -DINSTALL_C_EXAMPLES=OFF \
  -DINSTALL_PYTHON_EXAMPLES=OFF \
  -DINSTALL_ANDROID_EXAMPLES=OFF \
  -DINSTALL_TO_MANGLED_PATHS=OFF \
  -DINSTALL_TESTS=OFF \
  -DBUILD_opencv_calib3d=OFF \
  -DBUILD_opencv_core=ON \
  -DBUILD_opencv_dnn=OFF \
  -DBUILD_opencv_features2d=ON \
  -DBUILD_opencv_flann=OFF \
  -DBUILD_opencv_gapi=OFF \
  -DBUILD_opencv_highgui=OFF \
  -DBUILD_opencv_imgcodecs=ON \
  -DBUILD_opencv_imgproc=ON \
  -DBUILD_opencv_ml=OFF \
  -DBUILD_opencv_objdetect=OFF \
  -DBUILD_opencv_photo=OFF \
  -DBUILD_opencv_stitching=OFF \
  -DBUILD_opencv_video=OFF \
  -DBUILD_opencv_videoio=OFF \
  -DWITH_PNG=ON \
  -DWITH_JPEG=OFF \
  -DWITH_TIFF=OFF \
  -DWITH_WEBP=OFF \
  -DWITH_OPENJPEG=OFF \
  -DWITH_JASPER=OFF \
  -DWITH_OPENEXR=OFF \
  -DWITH_FFMPEG=OFF \
  -DWITH_GSTREAMER=OFF \
  -DWITH_1394=OFF \
  -DWITH_PROTOBUF=OFF \
  -DBUILD_PROTOBUF=OFF \
  -DWITH_CAROTENE=OFF \
  -DWITH_EIGEN=OFF \
  -DWITH_OPENVX=OFF \
  -DWITH_CLP=OFF \
  -DWITH_DIRECTX=OFF \
  -DWITH_VA=OFF \
  -DWITH_LAPACK=OFF \
  -DWITH_QUIRC=OFF \
  -DWITH_ADE=OFF \
  -DWITH_ITT=OFF \
  -DWITH_OPENCL=OFF \
  -DWITH_IPP=OFF

cmake --build build_$1/arm64
cmake --install build_$1/arm64 --prefix release/$1/arm64

rm -rf release/$1/universal
mkdir -p release/$1/universal/lib/opencv4/3rdparty
cp -a release/$1/arm64/{bin,include,share} release/$1/universal
for f in libopencv_core.a libopencv_features2d.a libopencv_imgcodecs.a libopencv_imgproc.a opencv4/3rdparty/liblibpng.a opencv4/3rdparty/libzlib.a
do lipo -create release/$1/{x86_64,arm64}/lib/$f -output release/$1/universal/lib/$f
done

tar -C release/$1/universal -cvf release/opencv-macos-$1.tar.gz .