--EXAMPLE INDEPENDENT MODULE

OSI = {
	LAYER=1,
	TITLE="independent_module"
	VERSION=1.0
	AUTHOR="Chad Dunn"
	DEPENDENCIES="*" -- If dependent, it should list the module by TITLE in a table. Ex. DEPENDENCIES = {"something"}
	}

function func()
	--do something
	return result
end