# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\birdi\CLionProjects\Daybreak

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug

# Include any dependencies generated for this target.
include libs\glfw\examples\CMakeFiles\wave.dir\depend.make

# Include the progress variables for this target.
include libs\glfw\examples\CMakeFiles\wave.dir\progress.make

# Include the compile flags for this target's objects.
include libs\glfw\examples\CMakeFiles\wave.dir\flags.make

libs\glfw\examples\CMakeFiles\wave.dir\wave.c.obj: libs\glfw\examples\CMakeFiles\wave.dir\flags.make
libs\glfw\examples\CMakeFiles\wave.dir\wave.c.obj: ..\libs\glfw\examples\wave.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libs/glfw/examples/CMakeFiles/wave.dir/wave.c.obj"
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\wave.dir\wave.c.obj /FdCMakeFiles\wave.dir\ /FS -c C:\Users\birdi\CLionProjects\Daybreak\libs\glfw\examples\wave.c
<<
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug

libs\glfw\examples\CMakeFiles\wave.dir\wave.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave.dir/wave.c.i"
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe > CMakeFiles\wave.dir\wave.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\birdi\CLionProjects\Daybreak\libs\glfw\examples\wave.c
<<
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug

libs\glfw\examples\CMakeFiles\wave.dir\wave.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave.dir/wave.c.s"
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\wave.dir\wave.c.s /c C:\Users\birdi\CLionProjects\Daybreak\libs\glfw\examples\wave.c
<<
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug

libs\glfw\examples\CMakeFiles\wave.dir\glfw.rc.res: libs\glfw\examples\CMakeFiles\wave.dir\flags.make
libs\glfw\examples\CMakeFiles\wave.dir\glfw.rc.res: ..\libs\glfw\examples\glfw.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building RC object libs/glfw/examples/CMakeFiles/wave.dir/glfw.rc.res"
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples
	C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x86\rc.exe $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) /foCMakeFiles\wave.dir\glfw.rc.res C:\Users\birdi\CLionProjects\Daybreak\libs\glfw\examples\glfw.rc
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug

libs\glfw\examples\CMakeFiles\wave.dir\__\deps\glad_gl.c.obj: libs\glfw\examples\CMakeFiles\wave.dir\flags.make
libs\glfw\examples\CMakeFiles\wave.dir\__\deps\glad_gl.c.obj: ..\libs\glfw\deps\glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libs/glfw/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.obj"
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\wave.dir\__\deps\glad_gl.c.obj /FdCMakeFiles\wave.dir\ /FS -c C:\Users\birdi\CLionProjects\Daybreak\libs\glfw\deps\glad_gl.c
<<
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug

libs\glfw\examples\CMakeFiles\wave.dir\__\deps\glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave.dir/__/deps/glad_gl.c.i"
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe > CMakeFiles\wave.dir\__\deps\glad_gl.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\birdi\CLionProjects\Daybreak\libs\glfw\deps\glad_gl.c
<<
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug

libs\glfw\examples\CMakeFiles\wave.dir\__\deps\glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave.dir/__/deps/glad_gl.c.s"
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\wave.dir\__\deps\glad_gl.c.s /c C:\Users\birdi\CLionProjects\Daybreak\libs\glfw\deps\glad_gl.c
<<
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug

# Object files for target wave
wave_OBJECTS = \
"CMakeFiles\wave.dir\wave.c.obj" \
"CMakeFiles\wave.dir\glfw.rc.res" \
"CMakeFiles\wave.dir\__\deps\glad_gl.c.obj"

# External object files for target wave
wave_EXTERNAL_OBJECTS =

libs\glfw\examples\wave.exe: libs\glfw\examples\CMakeFiles\wave.dir\wave.c.obj
libs\glfw\examples\wave.exe: libs\glfw\examples\CMakeFiles\wave.dir\glfw.rc.res
libs\glfw\examples\wave.exe: libs\glfw\examples\CMakeFiles\wave.dir\__\deps\glad_gl.c.obj
libs\glfw\examples\wave.exe: libs\glfw\examples\CMakeFiles\wave.dir\build.make
libs\glfw\examples\wave.exe: libs\glfw\src\glfw3d.lib
libs\glfw\examples\wave.exe: libs\glfw\examples\CMakeFiles\wave.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable wave.exe"
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples
	"C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\wave.dir --manifests  -- C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\wave.dir\objects1.rsp @<<
 /out:wave.exe /implib:wave.lib /pdb:C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples\wave.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:windows /ENTRY:mainCRTStartup ..\src\glfw3d.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug

# Rule to build all files generated by this target.
libs\glfw\examples\CMakeFiles\wave.dir\build: libs\glfw\examples\wave.exe

.PHONY : libs\glfw\examples\CMakeFiles\wave.dir\build

libs\glfw\examples\CMakeFiles\wave.dir\clean:
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples
	$(CMAKE_COMMAND) -P CMakeFiles\wave.dir\cmake_clean.cmake
	cd C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug
.PHONY : libs\glfw\examples\CMakeFiles\wave.dir\clean

libs\glfw\examples\CMakeFiles\wave.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\birdi\CLionProjects\Daybreak C:\Users\birdi\CLionProjects\Daybreak\libs\glfw\examples C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples C:\Users\birdi\CLionProjects\Daybreak\cmake-build-debug\libs\glfw\examples\CMakeFiles\wave.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : libs\glfw\examples\CMakeFiles\wave.dir\depend

