--EXAMPLE OF CODE UTILIZING OSI/MODULES

require = os.loadAPI

function main()
	require("osi")
	osi.import("mw")
	print(mw.OSI.LAYER)
	return 0
end

main()