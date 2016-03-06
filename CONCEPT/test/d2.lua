OSI = {
	LAYER=3,
	TITLE="dependent_module_2"
	VERSION=1.0
	AUTHOR="Chad Dunn"
	DEPENDENCIES="dependent_module"
	}


function func()
	a = independent_module.func()
	b = dependent_module.func()
	--do something
	return result
end