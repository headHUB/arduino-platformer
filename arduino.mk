# Makefile for arduino build. Uses arduino-mk
# (https://github.com/sudar/Arduino-Makefile or apt-get install arduino-mk)
# and python / python-pil for gfx conversion

# building for a 3v3 / 8MHz pro mini
BOARD_TAG = pro328

MONITOR_PORT = /dev/ttyUSB0

# source files
CPPFLAGS = -Iinclude
LOCAL_C_SRCS = font.c game.c $(wildcard avr/*.c)
LOCAL_CPP_SRCS = $(wildcard avr/*.cpp)

include /usr/share/arduino/Arduino.mk
