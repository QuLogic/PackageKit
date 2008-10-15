# - Try to find QPackageKit
# Once done this will define
#
#  QPACKAGEKIT_FOUND - system has QPackageKit
#  QPACKAGEKIT_INCLUDE_DIR - the QPackageKit include directory
#  QPACKAGEKIT_LIB - Link these to use QPackageKit
#  QPACKAGEKIT_DEFINITIONS - Compiler switches required for using QPackageKit

# Copyright (c) 2008, Adrien Bustany, <madcat@mymadcat.com>
#
# Redistribution and use is allowed according to the terms of the GPLv2+ license.

IF (QPACKAGEKIT_INCLUDE_DIR AND QPACKAGEKIT_LIB)
    SET(QPACKAGEKIT_FIND_QUIETLY TRUE)
ENDIF (QPACKAGEKIT_INCLUDE_DIR AND QPACKAGEKIT_LIB)

FIND_PATH( QPACKAGEKIT_INCLUDE_DIR packagekit-qt/QPackageKit )

FIND_LIBRARY( QPACKAGEKIT_LIB NAMES packagekit-qt )

IF (QPACKAGEKIT_INCLUDE_DIR AND QPACKAGEKIT_LIB)
   SET(QPACKAGEKIT_FOUND TRUE)
ELSE (QPACKAGEKIT_INCLUDE_DIR AND QPACKAGEKIT_LIB)
   SET(QPACKAGEKIT_FOUND FALSE)
ENDIF (QPACKAGEKIT_INCLUDE_DIR AND QPACKAGEKIT_LIB)

SET(QPACKAGEKIT_INCLUDE_DIR ${QPACKAGEKIT_INCLUDE_DIR}/packagekit-qt)

IF (QPACKAGEKIT_FOUND)
  IF (NOT QPACKAGEKIT_FIND_QUIETLY)
    MESSAGE(STATUS "Found QPackageKit: ${QPACKAGEKIT_LIB}")
  ENDIF (NOT QPACKAGEKIT_FIND_QUIETLY)
ELSE (QPACKAGEKIT_FOUND)
  IF (QPACKAGEKIT_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could NOT find QPackageKit")
  ENDIF (QPACKAGEKIT_FIND_REQUIRED)
ENDIF (QPACKAGEKIT_FOUND)

MARK_AS_ADVANCED(QPACKAGEKIT_INCLUDE_DIR QPACKAGEKIT_LIB)

