local Rostruct = loadstring(game:HttpGetAsync("https://github.com/richie0866/Rostruct/releases/download/v1.1.11/Rostruct.lua"))()

local package = Rostruct.open("Thallium/")
package:build("src/", { Name = "Thallium" })
package:start()