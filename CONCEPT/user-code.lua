--EXAMPLE OF CODE UTILIZING OSI/MODULES

require = os.loadAPI

function main()
	require("osi")
	osi.import("suite_module")
	print(dependent_module.OSI.LAYER)
	func()
	return 0
end

function func()
	--do something
	return result
end

main()