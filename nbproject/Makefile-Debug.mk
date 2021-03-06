#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/PointCloudCapture.o \
	${OBJECTDIR}/src/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-lboost_system -lOpenNI -lpcl_common -lpcl_io /opt/ros/hydro/lib/libopencv_core.so /opt/ros/hydro/lib/libopencv_highgui.so

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/transformfinder

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/transformfinder: /opt/ros/hydro/lib/libopencv_core.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/transformfinder: /opt/ros/hydro/lib/libopencv_highgui.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/transformfinder: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/transformfinder ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/src/PointCloudCapture.o: src/PointCloudCapture.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Iinclude -I/usr/include/pcl-1.7 -I/opt/ros/hydro/include -I/usr/include/eigen3 -I/usr/include/ni -I/usr/include/vtk-5.8 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/PointCloudCapture.o src/PointCloudCapture.cpp

${OBJECTDIR}/src/main.o: src/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Iinclude -I/usr/include/pcl-1.7 -I/opt/ros/hydro/include -I/usr/include/eigen3 -I/usr/include/ni -I/usr/include/vtk-5.8 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main.o src/main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/transformfinder

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
