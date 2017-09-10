# Install script for directory: C:/Users/fumi0/workspace/DUALSHOCK4_RTC/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/DUALSHOCK4_RTC")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "component" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/Debug/DUALSHOCK4_RTC.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/Release/DUALSHOCK4_RTC.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/MinSizeRel/DUALSHOCK4_RTC.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/RelWithDebInfo/DUALSHOCK4_RTC.lib")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "component" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/bin" TYPE SHARED_LIBRARY FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/Debug/DUALSHOCK4_RTC.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/bin" TYPE SHARED_LIBRARY FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/Release/DUALSHOCK4_RTC.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/bin" TYPE SHARED_LIBRARY FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/MinSizeRel/DUALSHOCK4_RTC.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/bin" TYPE SHARED_LIBRARY FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/RelWithDebInfo/DUALSHOCK4_RTC.dll")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "component" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/bin" TYPE EXECUTABLE FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/Debug/DUALSHOCK4_RTCComp.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/bin" TYPE EXECUTABLE FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/Release/DUALSHOCK4_RTCComp.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/bin" TYPE EXECUTABLE FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/MinSizeRel/DUALSHOCK4_RTCComp.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/bin" TYPE EXECUTABLE FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/RelWithDebInfo/DUALSHOCK4_RTCComp.exe")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/components/lib/DUALSHOCK4_RTC/DUALSHOCK4_RTCDepends.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/components/lib/DUALSHOCK4_RTC/DUALSHOCK4_RTCDepends.cmake"
         "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/CMakeFiles/Export/components/lib/DUALSHOCK4_RTC/DUALSHOCK4_RTCDepends.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/components/lib/DUALSHOCK4_RTC/DUALSHOCK4_RTCDepends-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/components/lib/DUALSHOCK4_RTC/DUALSHOCK4_RTCDepends.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/lib/DUALSHOCK4_RTC" TYPE FILE FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/CMakeFiles/Export/components/lib/DUALSHOCK4_RTC/DUALSHOCK4_RTCDepends.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/lib/DUALSHOCK4_RTC" TYPE FILE FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/CMakeFiles/Export/components/lib/DUALSHOCK4_RTC/DUALSHOCK4_RTCDepends-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/lib/DUALSHOCK4_RTC" TYPE FILE FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/CMakeFiles/Export/components/lib/DUALSHOCK4_RTC/DUALSHOCK4_RTCDepends-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/lib/DUALSHOCK4_RTC" TYPE FILE FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/CMakeFiles/Export/components/lib/DUALSHOCK4_RTC/DUALSHOCK4_RTCDepends-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/lib/DUALSHOCK4_RTC" TYPE FILE FILES "C:/Users/fumi0/workspace/DUALSHOCK4_RTC/build/src/CMakeFiles/Export/components/lib/DUALSHOCK4_RTC/DUALSHOCK4_RTCDepends-release.cmake")
  endif()
endif()

