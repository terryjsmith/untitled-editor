# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.glfw.Debug:
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a:
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a


PostBuild.boing.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing


PostBuild.gears.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.offscreen.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen


PostBuild.particles.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles


PostBuild.sharing.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing


PostBuild.simple.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard


PostBuild.cursor.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor


PostBuild.empty.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty


PostBuild.events.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events


PostBuild.gamma.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma


PostBuild.glfwinfo.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo


PostBuild.icon.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon


PostBuild.iconify.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify


PostBuild.inputlag.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag


PostBuild.joysticks.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks


PostBuild.monitors.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors


PostBuild.msaa.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa


PostBuild.opacity.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity


PostBuild.reopen.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen


PostBuild.tearing.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads


PostBuild.timeout.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout


PostBuild.title.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title


PostBuild.triangle-vulkan.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan


PostBuild.windows.Debug:
PostBuild.glfw.Debug: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows


PostBuild.glfw.Release:
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a:
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a


PostBuild.boing.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing


PostBuild.gears.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.offscreen.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen


PostBuild.particles.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles


PostBuild.sharing.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing


PostBuild.simple.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard


PostBuild.cursor.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor


PostBuild.empty.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty


PostBuild.events.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events


PostBuild.gamma.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma


PostBuild.glfwinfo.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo


PostBuild.icon.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon


PostBuild.iconify.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify


PostBuild.inputlag.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag


PostBuild.joysticks.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks


PostBuild.monitors.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors


PostBuild.msaa.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa


PostBuild.opacity.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity


PostBuild.reopen.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen


PostBuild.tearing.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads


PostBuild.timeout.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout


PostBuild.title.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title


PostBuild.triangle-vulkan.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan


PostBuild.windows.Release:
PostBuild.glfw.Release: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows


PostBuild.glfw.MinSizeRel:
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a:
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a


PostBuild.boing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing


PostBuild.gears.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.offscreen.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen


PostBuild.particles.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles


PostBuild.sharing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing


PostBuild.simple.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard


PostBuild.cursor.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor


PostBuild.empty.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty


PostBuild.events.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events


PostBuild.gamma.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma


PostBuild.glfwinfo.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo


PostBuild.icon.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon


PostBuild.iconify.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify


PostBuild.inputlag.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag


PostBuild.joysticks.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks


PostBuild.monitors.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors


PostBuild.msaa.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa


PostBuild.opacity.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity


PostBuild.reopen.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen


PostBuild.tearing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads


PostBuild.timeout.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout


PostBuild.title.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title


PostBuild.triangle-vulkan.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan


PostBuild.windows.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows


PostBuild.glfw.RelWithDebInfo:
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a:
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a


PostBuild.boing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/boing.app/Contents/MacOS/boing


PostBuild.gears.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.offscreen.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/offscreen


PostBuild.particles.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/particles.app/Contents/MacOS/particles


PostBuild.sharing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/sharing.app/Contents/MacOS/sharing


PostBuild.simple.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/clipboard


PostBuild.cursor.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/cursor


PostBuild.empty.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/empty.app/Contents/MacOS/empty


PostBuild.events.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/events


PostBuild.gamma.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/gamma.app/Contents/MacOS/gamma


PostBuild.glfwinfo.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/glfwinfo


PostBuild.icon.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/icon.app/Contents/MacOS/icon


PostBuild.iconify.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/iconify


PostBuild.inputlag.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/inputlag.app/Contents/MacOS/inputlag


PostBuild.joysticks.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/joysticks.app/Contents/MacOS/joysticks


PostBuild.monitors.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/monitors


PostBuild.msaa.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/msaa


PostBuild.opacity.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/opacity.app/Contents/MacOS/opacity


PostBuild.reopen.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/reopen


PostBuild.tearing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/threads.app/Contents/MacOS/threads


PostBuild.timeout.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/timeout.app/Contents/MacOS/timeout


PostBuild.title.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/title.app/Contents/MacOS/title


PostBuild.triangle-vulkan.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/triangle-vulkan


PostBuild.windows.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows:\
	/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/windows.app/Contents/MacOS/windows




# For each target create a dummy ruleso the target does not have to exist
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libglfw3.a:
