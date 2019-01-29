# Ran from ~
brew  install $(echo "opencv\n cv\n  opencv@3 \n opencv@2") 
sudo easy_install pip
sudo easy_install virtualenv
sudo easy_install virtualenvwrapper
sudo pip install virtualenv virtualenvwrapper
sudo easy_install numpy

brew install cmake pkg-config  jpeg libpng libtiff openexr  eigen tbb



cd ~/repos
git clone https://github.com/opencv/opencv_contrib




cd ~/repos

git clone https://github.com/opencv/opencv

cd opencv
mkdir -p build 
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=~/repos/opencv_contrib/modules \
    -D PYTHON2_LIBRARY=YYY \
    -D PYTHON2_INCLUDE_DIR=ZZZ \
    -D PYTHON2_EXECUTABLE=$VIRTUAL_ENV/bin/python \
    -D BUILD_opencv_python2=ON \
    -D BUILD_opencv_python3=OFF \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D INSTALL_C_EXAMPLES=OFF \
    -D BUILD_EXAMPLES=ON ..

echo "USE THE OUTPUT OF TEHSE COMAMNDS FOR THE NEXT"
ls /usr/local/Cellar/python/2.7.*/Frameworks/Python.framework/Versions/2.7/lib/python2.7/config/libpython2.7.dylib
/usr/local/Cellar/python/2.7.12_2/Frameworks/Python.framework/Versions/2.7/lib/python2.7/config/libpython2.7.dylib

echo "USE THE OUTPUT OF TEHSE COMAMNDS FOR THE NEXT"
ls -d /usr/local/Cellar/python/2.7.*/Frameworks/Python.framework/Versions/2.7/include/python2.7/
/usr/local/Cellar/python/2.7.12_2/Frameworks/Python.framework/Versions/2.7/include/python2.7/

### https://www.pyimagesearch.com/2016/11/28/macos-install-opencv-3-and-python-2-7/


cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=~/repos/opencv_contrib/modules \
    -D PYTHON2_LIBRARY=/usr/local/Cellar/python/2.7.12_2/Frameworks/Python.framework/Versions/2.7/lib/python2.7/config/libpython2.7.dylib \
    -D PYTHON2_INCLUDE_DIR=/usr/local/Cellar/python/2.7.12_2/Frameworks/Python.framework/Versions/2.7/include/python2.7/ \
    -D PYTHON2_EXECUTABLE=$VIRTUAL_ENV/bin/python \
    -D BUILD_opencv_python2=ON \
    -D BUILD_opencv_python3=OFF \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D INSTALL_C_EXAMPLES=OFF \
    -D BUILD_EXAMPLES=ON ..

make -j4



sudo make install


# VERIFY
cd /usr/local/lib/python2.7/site-packages/
ls -l cv2.so 



cd ~/.virtualenvs/cv/lib/python2.7/site-packages/
ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so



# FOR PYTHON 3 you should jsut swith these two lines 
#    -D BUILD_opencv_python2=ON \
#    -D BUILD_opencv_python3=OFF \

# Py 3 
# https://www.pyimagesearch.com/2016/12/05/macos-install-opencv-3-and-python-3-5/