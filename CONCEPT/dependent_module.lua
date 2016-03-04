OSI = {
	LAYER=2,
	TITLE="dependent_module"
	VERSION=1.0
	AUTHOR="Chad Dunn"
	DEPENDENCIES="independent_module"
	}


function func()
	a = independent_module.func()
	--do something
	return result
end