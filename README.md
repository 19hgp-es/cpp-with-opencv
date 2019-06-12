# cpp-with-opencv
tutorial with setting opencv

## VERSION LIsts.

`cmake==3.11.0`
`opencv==4.1.0`

## Patch Note

- You Must Check c++ standard library c++11 version. Check example Makefile.

- When build opencv4.1.0, Check `OPENCV_GENERATE_PKGCONFIG=ON`. This generate pkgconfig folder and this related to g++ opencv compilation

- If you compile at NON-cuda environment, for example, VMWARE, VBOX, check `WITH_CUDA=OFF`.
