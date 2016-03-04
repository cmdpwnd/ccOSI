--osi.lua

local MODULE_REQUIREMENTS = {"LAYER","TITLE","VERSION","AUTHOR","DEPENDENCIES"}

function import(...)
	modules = {...}
	for a=1,#modules do
		tostring(modules[a])
		for b=1,#MODULE_REQUIREMENTS do 
			if not modules[a].OSI[MODULE_REQUIREMENTS[b]] then error("ERROR: IMPORT_BAD_MODULE_REQUIREMENT") else
				if type(modules[a].OSI.DEPENDENCIES) == "table" and not modules[a].OSI.DEPENDENCIES == "*" --[['*' meaning independent module --]] or modules[a].OSI.DEPENDENCIES == nil or modules[a].OSI.DEPENDENCIES = false then 
					for c=1,#modules[a].OSI.DEPENDENCIES do
						--import dependencies first
						import(modules[a].OSI.DEPENDENCIES[c])
					end
				end
			end
		end
		--import module
		os.loadAPI(modules[a])
	end
end

function export(...)
	--export dependencies first
	--export module
end