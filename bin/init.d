#! /bin/sh
# For running as a daemon process on Debian

case "$1" in
    start)
        echo "Starting opencanary"
        # run application you want to start
        python /usr/local/sbin/example.py &
        ;;
    stop)
        echo "Stopping example"
        # kill application you want to stop
        killall python
        ;;
    *)
        echo "Usage: /etc/init.d/example{start|stop}"
        exit 1
        ;;
esac

exit 0
