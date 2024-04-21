Param($Configuration, $Version, $OpenCVDirectory)

cmake $OpenCVDirectory -B build_$Configuration `
  -DOPENCV_FORCE_3RDPARTY_BUILD=ON `
  -DBUILD_SHARED_LIBS=OFF `
  -DBUILD_opencv_apps=OFF `
  -DBUILD_opencv_js=OFF `
  -DBUILD_ANDROID_PROJECTS=OFF `
  -DBUILD_ANDROID_EXAMPLES=OFF `
  -DBUILD_DOCS=OFF `
  -DBUILD_EXAMPLES=OFF `
  -DBUILD_PACKAGE=OFF `
  -DBUILD_PERF_TESTS=OFF `
  -DBUILD_TESTS=OFF `
  -DBUILD_WITH_DEBUG_INFO=OFF `
  -DBUILD_WITH_STATIC_CRT=OFF `
  -DBUILD_WITH_DYNAMIC_IPP=OFF `
  -DBUILD_FAT_JAVA_LIB=OFF `
  -DBUILD_ANDROID_SERVICE=OFF `
  -DBUILD_CUDA_STUBS=OFF `
  -DBUILD_JAVA=OFF `
  -DBUILD_OBJC=OFF `
  -DBUILD_opencv_python3=OFF `
  -DINSTALL_CREATE_DISTRIB=OFF `
  -DINSTALL_BIN_EXAMPLES=OFF `
  -DINSTALL_C_EXAMPLES=OFF `
  -DINSTALL_PYTHON_EXAMPLES=OFF `
  -DINSTALL_ANDROID_EXAMPLES=OFF `
  -DINSTALL_TO_MANGLED_PATHS=OFF `
  -DINSTALL_TESTS=OFF

cmake --build build_$Configuration --config $Configuration
cmake --install build_$Configuration --config $Configuration --prefix release/$Configuration
Compress-Archive release\$Configuration\* release\opencv-windows-$Version-$Configuration.zip -Verbose
