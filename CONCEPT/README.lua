Name: ccOSI
Decription: Modular Framework representation of theoretical OSI Model
Goal: Attempt to standardize APIs by corresponding them to a layer in the OSI Model
Detail: --[[ 
The OSI Model is a theoretical model by which all functions of a device can be described by specifying a layer to which that function corresponds.
ccOSI implements a standard way of defining this correspondence by allowing programmers to specify a layer that their API (called modules) best fits into.
	Three types of modules exist:
		Independent
		Dependent
		Suite
       
        Independent modules are any modules which do not require another module to function properly
         this can be any standalone module and only requires the use of ccOSI by defining a table in the source code named OSI [OSI = {}]
        
        Dependent modules are modules which require an independent module to function properly
         dependent modules may also be dependent on other dependent modules

        Suite modules are not actually modules themselves but rather are a list of modules to use and then that collection of modules is given a title
--]]
Key Features: --[[
Conceptual Code [Multiple Source Code]
	Normally when you write code, it is very specific and requires unending tweaking and tayloring to get it 'just right'
	you will often use external APIs or libraries to give you a set of functions that you would otherwise have to write yourself or not be able to write and therefore void your project.
	ccOSI takes this idea and allows the programmer to not have to include a specific library or API and instead allows you to call upon an OSI layer to perform your action.
	When called, ccOSI will determine the appropriate module to use.
	This allows for Conceptual Code by which a programmer can have multiple source code files that perform the same function with one being a specific traditional way of writing the code
	and the other being infinitely more flexible. An example of this is as follows:
	
	Traditional Code using a specific osi module:
		OSI = {
			TYPE='DEPENDENT'
			DEPENDENCIES={
				L2={'rednet'}
			}
		}
		
		rednet.send(dst,data)
		
	Conceptual Code using any available module:
		--OSI's L2 default = rednet
		OSI = {
			TYPE='DEPENDENT'
		}
		
		osi.l2.send(dst,data)
--]]
How It Works: --[[

--]]