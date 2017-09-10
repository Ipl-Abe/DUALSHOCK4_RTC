#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "DUALSHOCK4_RTC" for configuration "Debug"
set_property(TARGET DUALSHOCK4_RTC APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(DUALSHOCK4_RTC PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/components/lib/DUALSHOCK4_RTC.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "RTC112_vc12d;coil112_vc12d;omniORB421_rtd;omniDynamic421_rtd;omnithread40_rtd;advapi32;ws2_32;mswsock"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/components/bin/DUALSHOCK4_RTC.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS DUALSHOCK4_RTC )
list(APPEND _IMPORT_CHECK_FILES_FOR_DUALSHOCK4_RTC "${_IMPORT_PREFIX}/components/lib/DUALSHOCK4_RTC.lib" "${_IMPORT_PREFIX}/components/bin/DUALSHOCK4_RTC.dll" )

# Import target "DUALSHOCK4_RTCComp" for configuration "Debug"
set_property(TARGET DUALSHOCK4_RTCComp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(DUALSHOCK4_RTCComp PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/components/bin/DUALSHOCK4_RTCComp.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS DUALSHOCK4_RTCComp )
list(APPEND _IMPORT_CHECK_FILES_FOR_DUALSHOCK4_RTCComp "${_IMPORT_PREFIX}/components/bin/DUALSHOCK4_RTCComp.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
