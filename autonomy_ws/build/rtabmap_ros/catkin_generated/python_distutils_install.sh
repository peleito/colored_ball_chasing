#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/team1/autonomy_ws/src/rtabmap_ros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/team1/autonomy_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/team1/autonomy_ws/install/lib/python2.7/dist-packages:/home/team1/autonomy_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/team1/autonomy_ws/build" \
    "/usr/bin/python2" \
    "/home/team1/autonomy_ws/src/rtabmap_ros/setup.py" \
    egg_info --egg-base /home/team1/autonomy_ws/build/rtabmap_ros \
    build --build-base "/home/team1/autonomy_ws/build/rtabmap_ros" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/team1/autonomy_ws/install" --install-scripts="/home/team1/autonomy_ws/install/bin"