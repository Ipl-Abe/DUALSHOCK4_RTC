#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "DUALSHOCK4_RTC" for configuration "Release"
set_property(TARGET DUALSHOCK4_RTC APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DUALSHOCK4_RTC PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/components/lib/DUALSHOCK4_RTC.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "RTC112_vc12;coil112_vc12;omniORB421_rt;omniDynamic421_rt;omnithread40_rt;advapi32;ws2_32;mswsock"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/components/bin/DUALSHOCK4_RTC.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS DUALSHOCK4_RTC )
list(APPEND _IMPORT_CHECK_FILES_FOR_DUALSHOCK4_RTC "${_IMPORT_PREFIX}/components/lib/DUALSHOCK4_RTC.lib" "${_IMPORT_PREFIX}/components/bin/DUALSHOCK4_RTC.dll" )

# Import target "DUALSHOCK4_RTCComp" for configuration "Release"
set_property(TARGET DUALSHOCK4_RTCComp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DUALSHOCK4_RTCComp PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/components/bin/DUALSHOCK4_RTCComp.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS DUALSHOCK4_RTCComp )
list(APPEND _IMPORT_CHECK_FILES_FOR_DUALSHOCK4_RTCComp "${_IMPORT_PREFIX}/components/bin/DUALSHOCK4_RTCComp.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
