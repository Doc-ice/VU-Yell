Events:Subscribe('Extension:Loaded', function()
    WebUI:Init()
	WebUI:Show()
	WebUI:BringToFront()
end)
NetEvents:Subscribe('VUyell', function(data)
myPlayer=PlayerManager:GetLocalPlayer()
splayer=tostring(data[1])
if myPlayer.name == splayer then
local Execute = 'setyell("'..data[3]..'");'
    WebUI:ExecuteJS(Execute)
    WebUI:ExecuteJS("show()")
    local timeDelayed = 0
    Events:Subscribe('Engine:Update', function(deltaTime) 
        timeDelayed = timeDelayed + deltaTime
        if timeDelayed >= data[2] then
            WebUI:ExecuteJS("fade()")
            timeDelayed = 0
            Events:Unsubscribe('Engine:Update')
        end
    end)
	end
	if  splayer=='ALLPLAYERS' then
local Execute = 'setyell("'..data[3]..'");'
    WebUI:ExecuteJS(Execute)
    WebUI:ExecuteJS("show()")
    local timeDelayed = 0
    Events:Subscribe('Engine:Update', function(deltaTime) 
        timeDelayed = timeDelayed + deltaTime
        if timeDelayed >= data[2] then
            WebUI:ExecuteJS("fade()")
            timeDelayed = 0
            Events:Unsubscribe('Engine:Update')
        end
    end)
	end
end)
