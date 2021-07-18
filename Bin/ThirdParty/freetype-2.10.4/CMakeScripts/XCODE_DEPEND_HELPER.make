# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.freetype.Debug:
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libfreetyped.a:
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libfreetyped.a


PostBuild.freetype.Release:
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libfreetype.a:
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libfreetype.a


PostBuild.freetype.MinSizeRel:
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libfreetype.a:
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libfreetype.a


PostBuild.freetype.RelWithDebInfo:
/Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libfreetype.a:
	/bin/rm -f /Users/terryjsmith/Documents/Projects/untitled-editor/Bin/libfreetype.a




# For each target create a dummy ruleso the target does not have to exist
