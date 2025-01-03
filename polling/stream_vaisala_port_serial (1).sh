#!/bin/bash

# Activate OpenRVDAS virtual environment

cd /opt/openrvdas
source venv/bin/activate

InPort=/dev/ttyUSB4
InBaud=9600
OutPort=57304
OutHost=10.100.100.30
Label1=WXTP
Label2=MET
LogDir=/home/admin_paul.mena/tmp
ConfigDir=/home/admin_paul.mena/tmp
ConfigFile=${ConfigDir}/vaisala_port.yaml

# Listen for serial input and write to log file and UDP
# Use listener with config file - no other arguments
# crank up the logging level with -v
logger/listener/listen.py --config_file ${ConfigFile} -v

#logger/listener/listen.py --serial port=${InPort},baudrate=${InBaud} --transform_prefix ${Label1} --time_format '%Y/%m/%d %H:%M:%S.%f' --transform_timestamp --transform_prefix ${Label2} --write_file ${LogDir}/serial_${Label1}.log --write_udp ${OutHost}:${OutPort} --config_file ${ConfigFile}

# No transformation
# logger/listener/listen.py --serial port=${InPort},baudrate=${InBaud} --write_file ${LogDir}/serial_${Label1}.log --write_udp ${OutHost}:${OutPort}

# Deactivate virtual environment

deactivate
