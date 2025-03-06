RCON:RegisterCommand('VUyell', RemoteCommandFlag.RequiresLogin, function(command, args, loggedIn)
if (args == nil) then
			return {false, 'Arguments: PlayerName'}
		end
message=''
playerName=tostring(args[1])
delay=tonumber(args[2])

local messages = table.pack(table.unpack(args,3))
message=table.concat(messages," ")
NetEvents:Broadcast('VUyell',{playerName,delay,tostring(message)})
end)