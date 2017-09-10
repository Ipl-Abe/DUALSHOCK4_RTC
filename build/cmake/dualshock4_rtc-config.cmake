# DUALSHOCK4_RTC CMake config file
#
# This file sets the following variables:
# DUALSHOCK4_RTC_FOUND - Always TRUE.
# DUALSHOCK4_RTC_INCLUDE_DIRS - Directories containing the DUALSHOCK4_RTC include files.
# DUALSHOCK4_RTC_IDL_DIRS - Directories containing the DUALSHOCK4_RTC IDL files.
# DUALSHOCK4_RTC_LIBRARIES - Libraries needed to use DUALSHOCK4_RTC.
# DUALSHOCK4_RTC_DEFINITIONS - Compiler flags for DUALSHOCK4_RTC.
# DUALSHOCK4_RTC_VERSION - The version of DUALSHOCK4_RTC found.
# DUALSHOCK4_RTC_VERSION_MAJOR - The major version of DUALSHOCK4_RTC found.
# DUALSHOCK4_RTC_VERSION_MINOR - The minor version of DUALSHOCK4_RTC found.
# DUALSHOCK4_RTC_VERSION_REVISION - The revision version of DUALSHOCK4_RTC found.
# DUALSHOCK4_RTC_VERSION_CANDIDATE - The candidate version of DUALSHOCK4_RTC found.

message(STATUS "Found DUALSHOCK4_RTC-1.0.0")
set(DUALSHOCK4_RTC_FOUND TRUE)

find_package(<dependency> REQUIRED)

#set(DUALSHOCK4_RTC_INCLUDE_DIRS
#    "C:/Program Files (x86)/DUALSHOCK4_RTC/include/dualshock4_rtc-1"
#    ${<dependency>_INCLUDE_DIRS}
#    )
#
#set(DUALSHOCK4_RTC_IDL_DIRS
#    "C:/Program Files (x86)/DUALSHOCK4_RTC/include/dualshock4_rtc-1/idl")
set(DUALSHOCK4_RTC_INCLUDE_DIRS
    "C:/Program Files (x86)/DUALSHOCK4_RTC/include/"
    ${<dependency>_INCLUDE_DIRS}
    )
set(DUALSHOCK4_RTC_IDL_DIRS
    "C:/Program Files (x86)/DUALSHOCK4_RTC/include//idl")


if(WIN32)
    set(DUALSHOCK4_RTC_LIBRARIES
        "C:/Program Files (x86)/DUALSHOCK4_RTC/components/lib/dualshock4_rtc.lib"
        ${<dependency>_LIBRARIES}
        )
else(WIN32)
    set(DUALSHOCK4_RTC_LIBRARIES
        "C:/Program Files (x86)/DUALSHOCK4_RTC/components/lib/dualshock4_rtc.dll"
        ${<dependency>_LIBRARIES}
        )
endif(WIN32)

set(DUALSHOCK4_RTC_DEFINITIONS ${<dependency>_DEFINITIONS})

set(DUALSHOCK4_RTC_VERSION 1.0.0)
set(DUALSHOCK4_RTC_VERSION_MAJOR 1)
set(DUALSHOCK4_RTC_VERSION_MINOR 0)
set(DUALSHOCK4_RTC_VERSION_REVISION 0)
set(DUALSHOCK4_RTC_VERSION_CANDIDATE )

