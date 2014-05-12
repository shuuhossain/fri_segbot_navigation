#!/bin/sh -x

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

cd "/home/fri/catkin_ws_shsl/src/skeleton_markers"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
/usr/bin/env \
    PYTHONPATH="/home/fri/catkin_ws_shsl/install/lib/python2.7/dist-packages:/home/fri/catkin_ws_shsl/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/fri/catkin_ws_shsl/build" \
    "/usr/bin/python" \
    "/home/fri/catkin_ws_shsl/src/skeleton_markers/setup.py" \
    build --build-base "/home/fri/catkin_ws_shsl/build/skeleton_markers" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/fri/catkin_ws_shsl/install" --install-scripts="/home/fri/catkin_ws_shsl/install/bin"
