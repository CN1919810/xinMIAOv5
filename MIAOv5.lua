local ScreenGui = Instance.new("ScreenGui")
local UI = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Key = Instance.new("TextBox")
local Start = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UI.Name = "淼卡密系统"
UI.Parent = ScreenGui
UI.Active = true
UI.BackgroundColor3 = Color3.new(0, 0, 0)
UI.BackgroundTransparency = 0
UI.BorderSizePixel = 3
UI.Position = UDim2.new(0.5, -150, 0.5, -67)
UI.Size = UDim2.new(0, 260, 0, 250)
UI.Draggable = true

Title.Name = "Title"
Title.Parent = UI
Title.BackgroundColor3 = Color3.new(68, 68, 68)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 2
Title.Position = UDim2.new(0, 0, 0.02, 0)
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "密钥系统"
Title.TextColor3 = Color3.new(0, 0, 255)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

Frame.Parent = Title
Frame.BackgroundColor3 = Color3.new(0, 0, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.07, 0, 0.9, 0)
Frame.Size = UDim2.new(0.85, 0, 0, 6)

Key.Name = "Key"
Key.Parent = UI
Key.BackgroundColor3 = Color3.new(1, 1, 1)
Key.BorderSizePixel = 0
Key.Position = UDim2.new(0.1, 0, 0.31, 0)
Key.Size = UDim2.new(0.8, 0, 0, 50)
Key.Font = Enum.Font.SourceSans
Key.PlaceholderText = "输入钥密"
Key.Text = ""
Key.TextColor3 = Color3.new(0, 0, 0)
Key.TextScaled = true
Key.TextSize = 14
Key.TextWrapped = true

Start.Name = "Start"
Start.Parent = UI
Start.BackgroundColor3 = Color3.new(0, 0, 255)
Start.BackgroundTransparency = 0
Start.BorderSizePixel = 2
Start.Position = UDim2.new(0.25, 0, 0.65, 0)
Start.Size = UDim2.new(0.5, 0, 0, 45)
Start.Font = Enum.Font.Gotham
Start.Text = "检查卡密"
Start.TextColor3 = Color3.new(0, 0, 0)
Start.TextScaled = true
Start.TextSize = 10
Start.TextWrapped = true

Start.MouseButton1Click:Connect(function()
    if Key.Text == "e5jxkftu57637jcj" then
        ScreenGui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CN1919810/MIAOv5gai/main/MIAOv5.lua"))()
    else
        game.Players.LocalPlayer:Kick("快去TB脚本裙找淼，免费的")
    end
end)

wait(3.5)

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "苗", HidePremium = false, SaveConfig = true,IntroText = "苗v5脚本", ConfigFolder = "苗v5脚本"})
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "苗脚本"; Text ="苗脚本"; Duration = 4; })

local about = Window:MakeTab({
    Name = "苗制作",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("脚本不行 别逼我倒卖（？）")
about:AddParagraph("到倒卖")

local Tab =Window:MakeTab({
	Name = "公告",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "复制作者QQ群😋",
	Callback = function()
     setclipboard("729273818")
  	end
})

Tab:AddButton({
	Name = "复制群（其实我写的😡）QQ",
	Callback = function()
     setclipboard("直接复制上一个就可以了😋😋😋😋😋😋😋")
  	end
})

OrionLib:MakeNotification({
	Name = "苗v5脚本",
	Content = "欢迎使用苗v5脚本",
	Image = "rbxassetid://4483345998",
	Time = 2
})

about:AddParagraph("是免费脚本😋","")
about:AddParagraph("是免费脚本😋","")
about:AddParagraph("是免费脚本😋","")
about:AddParagraph("是免费脚本😋","")

local Tab = Window:MakeTab({
    Name = "主要😋",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddSlider({
	Name = "速度",
	Min = 0,
	Max = 1145,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab:AddSlider({
	Name = "跳跃高度",
	Min = 0,
	Max = 1145,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

Tab:AddTextbox({
	Name = "移动速度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})
Tab:AddButton({
	Name = "飞行V3（隐藏）",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()
  	end    
})
Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddButton({
	Name = "光影V4（不建议在刀刃球上使用）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end
})

Tab:AddButton({
	Name = "防止掉线（反挂机）",
	Callback = function()
	print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		end)
  	end
})

Tab:AddButton({
	Name = "透视",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
  	end    
})

Tab:AddButton({
	Name = "吸取全部玩家",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/hQSBGsw2'))()
  	end    
})

Tab:AddButton({
	Name = "人物无敌",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})

Tab:AddButton({
	Name = "隐身(E)",
	Callback = function()
	 loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
  	end    
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab:AddButton({
	Name = "无敌",
	Callback = function()
local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
   newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
        
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    
    lp.Character:FindFirstChild "Head":Destroy()
        end
    end
})

Tab:AddToggle({
	Name = "穿墙2",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
	Name = "飞车(E)(别人看到)",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
  	end    
})

Tab:AddButton({
	Name = "跟踪玩家",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
  	end
})

Tab:AddButton({
	Name = "伪名说话",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})

Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

Tab:AddButton({
	Name = "透视",
	Callback = function()
loadstring(game:GetObjects("rbxassetid://10092697033")[1].Source)()
	end 
})

Tab:AddButton({
	Name = "转",
	Callback = function()
      	loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  	end
})

Tab:AddButton({
	Name = "隐身(E)",
	Callback = function()
	 loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
  	end    
})

Tab:AddButton({
    Name="死",
    Callback=function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
    end
})

Tab:AddButton({
	Name = "黑客",
	Callback = function()
loadstring(game: HttpGet("https://raw.githubusercontent.com/BirthScripts/Scripts/main/c00l.lua"))()
    end
})

Tab:AddButton({
	Name = "管理员",
	Callback = function()
loadstring(game: HttpGet(('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua'),true))()
    end
})

Tab:AddButton({
    Name="回满血后分服务器可能不可以能用",
    Callback=function()
        game.Players.LocalPlayer.Character.Humanoid.Health=10000
    end
})

Tab:AddButton({
	Name = "键盘",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
    end
})

Tab:AddButton({
    Name="动作",
    Callback=function()
        getgenv().she="作者小盛蓝免费请勿倒卖"
loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()
    end
})

Tab:AddButton({	
Name = "工具包",	
Callback = function()	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()	  	
     end
})

Tab:AddButton({
	Name = "透视",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
  	end    
})

Tab:AddButton({
	Name = "飞车",
	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})

Tab:AddButton({
	Name = "甩飞",
	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
	end
})

Tab:AddButton({
	Name = "无限跳",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
    end
})

local Tab = Window:MakeTab({
    Name = "忍者传奇😨",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false

})

Tab:AddButton({
    Name="不知道",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/1"))()
    end
})

Tab:AddButton({
	Name = "忍者传奇",
	Callback = function()
pcall(loadstring(game:HttpGet("https://pastebin.com/raw/2UjrXwTV")))
    end
})

Tab:AddButton({
    Name="不知道",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/5repo/main/script4.lua"))()
    end
})

local Tab = Window:MakeTab({
    Name = "极速传奇😋",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name="青脚本",
    Callback=function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/kkaaccnnbb/money/main/fix'))()
    end
})

Tab:AddButton({
	Name = "脚本二",
	Callback = function()
loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
    end
})

Tab:AddButton({
	Name = "脚本三",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
    end
})

Tab:AddButton({
	Name = "剑客v3——roblox加入群主剑客才可用",
	Callback = function()
jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
    end
})

local Tab = Window:MakeTab({
	Name = "doors",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "DOORS低回拉穿墙",
  Callback = function()
    loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
  end
})

Tab:AddButton({
  Name = "exp",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/zoophiliaphobic/POOPDOORS/main/script.lua'))()
  end
})

Tab:AddButton({
  Name = "变身",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
  end
})

Tab:AddButton({
  Name = "磁铁",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
  end
})

Tab:AddButton({
	Name = "神圣炸弹",
	    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
  end
})

Tab:AddButton({
	Name = "激光枪",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
end
})

Tab:AddButton({
  Name = "剪刀",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
  end
})

Tab:AddButton({
  Name = "骷髅钥匙",
  Callback = function ()
    local item = game:GetObjects("rbxassetid://11697889137")[1]item.Parent = game.Players.LocalPlayer.Backpack
  end
})

Tab:AddButton({
	Name = "紫色手电筒",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight"))()
end
})  

Tab:AddButton({
	Name = "手电筒（没电会有bug）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
end
})      

Tab:AddButton({
  Name = "耶稣十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi2"))()
  end
})

Tab:AddButton({
  Name = "紫光十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi3"))()
  end
})

Tab:AddButton({
  Name = "万圣节十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi4"))()
  end
})

Tab:AddButton({
  Name = "Zepsyy十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/Crucifix"))()
  end
})

Tab:AddButton({
  Name = "普通十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizizhen"))()
  end
})

Tab:AddButton({
  Name = "老六十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/W1AzELhb"))()
  end
})

local player = Window:MakeTab({
	Name = "doors",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = 脚本1,
	Callback = function()
      	loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
  	end
})

player:AddButton({ 
	Name = "微山",
	Callback = function()
      	--微山doors 1.0.2
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
  	end
})

player:AddButton({ 
	Name = "开启不可能模式",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/Ukazix/impossible-mode/main/Protected_79.lua.txt'))() 
  	end
})

player:AddButton({ 
	Name = "吸铁石",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
  	end
})

player:AddButton({ 
	Name = "穿墙",
	Callback = function()
      	loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
  	end
})

player:AddButton({ 
	Name = "夜视仪",
	Callback = function()
      	_G.OnShop = true

loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
  	end
})

player:AddButton({ 
	Name = "手电筒",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
  	end
})

player:AddButton({ 
	Name = "剪刀",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
  	end
})

player:AddButton({ 
	Name = "骷髅钥匙",
	Callback = function()
      	local item = game:GetObjects("rbxassetid://11697889137")[1]item.Parent = game.Players.LocalPlayer.Backpack
  	end
})

player:AddButton({ 
	Name = "紫色手电筒（在电梯购买东西的时候使用）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight"))()
  	end
})

player:AddButton({ 
	Name = "激光枪",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
  	end
})

player:AddButton({ 
	Name = "臭猫",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()
  	end
})

player:AddButton({ 
	Name = "变身（搭配键盘r和q）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
  	end
})

player:AddButton({ 
	Name = "哈利路亚手雷",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "鲨口2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddDropdown({
	Name = "免费船只",
	Default = 脚本1,
	Options = {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine",  "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"},
	Callback = function(Value)
local ohString1 = (Value)
game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)
	end    
})

Tab:AddButton({
	Name = "自动杀鲨鱼",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "能量突击",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "能量突击",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Harley-HUB/Energy-Assault/main/Ene", true))()
    end
})

local Tab = Window:MakeTab({
    Name = "自然灾害模拟器",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({

	Name = "自然灾害模拟器",
	Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg", true))() 
end
})

Tab:AddButton({
	Name = "自然灾害",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main'))()
    end
})

local Tab = Window:MakeTab({
    Name = "代木大亨",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({

	Name = "伐木大亨",
	Callback = function()
-- Join to Discord : https://discord.gg/nightfallgui
loadstring(game:HttpGet('https://gist.githubusercontent.com/ItsEcstasy/327b705029ed89fd1be0f8382b3fb04f/raw/07c7beb24aebec0a26f4622c92b593428811db4d/Nightfall1.7-Temp'))()
	end
})

Tab:AddButton({
	Name = "青脚本",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/kkaaccnnbb/money/main/fix'))()
    end
})

local Tab = Window:MakeTab({
	Name = "动感星期五",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "script一",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ShowerHead-FluxTeam/scripts/main/funky-friday-autoplay'))()
    end
})

local Tab = Window:MakeTab({
	Name = "FE脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "C00lgui",
	Callback = function()
     loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
  	end    
})

Tab:AddButton({
	Name = "1x1x1x1",
	Callback = function()
     loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
  	end    
})

Tab:AddButton({
	Name = "动画中心",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
  	end    
})

Tab:AddButton({
	Name = "幽灵中心",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
    end
})

Tab:AddButton({
	Name = "蜘蛛侠爬墙配合键盘脚本按c",
	Callback = function()
loadstring(game:HttpGet(('https://pastebin.com/raw/2X0hKUgq'),true))()
    end
})

Tab:AddButton({
	Name = "铁拳打死你",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'),true))()
    end
})

Tab:AddButton({
	Name = "声音播放器",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/GEianeKX"))()
    end
})

Tab:AddButton({
	Name = "NA管理员",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
    end
})

local Tab = Window:MakeTab({
	Name = "By手腕",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "掰手腕",
	Callback = function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/99d16edc79729a038994f85ce7335971.lua"))()
    end
})

Tab:AddButton({
	Name = "脚本2——Key:ScriptJezz",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZhenX201/FE-Infinite-Money-All-Stats/main/source"))()
    end
})

Tab:AddButton({
	Name = "无卡",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KrzysztofHub/script/main/loader.lua"))()
    end
})

Tab:AddButton({
	Name = "无卡",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zicus-scripts/SkullHub/main/Loader.lua"))()
    end
})

Tab:AddButton({
	Name = "无卡",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/wrestle2/main/armsim"))()
    end
})

local Tab = Window:MakeTab({
    Name = "力量传奇",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name="修改力量",
    Callback=function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
    end
})

Tab:AddButton({
	Name = "力量传奇Muscle Legend",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/Roblox-Script/main/Muscle%20Legend"))()
  	end    
})

Tab:AddButton({
    Name="力量传奇",
    Callback=function()
        loadstring(game:GetObjects("rbxassetid://10048914323")[1].Source)()
    end
})

Tab:AddButton({
	Name = "杯脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/llcq"))()
    end
})

Tab:AddButton({
	Name = "剑客v3——roblox加入群组剑客才可用",
	Callback = function()
jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
    end
})

local Tab = Window:MakeTab({
    Name = "彩虹朋友",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name="彩虹朋友",
    Callback=function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Sempiller/RainbowTool/main/Turkish.lua'))();
    end
})

Tab:AddButton({
	Name = "彩虹朋友2",	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends"))()
  	end    
})

Tab:AddButton({
	Name = "模仿者",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ttjy9808/THEMIMICNEWMOBILEUINOTBETA/main/README.md"))()
    end
})

local Tab = Window:MakeTab({
	Name = "挂工厂",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "剑客v3——roblox加入群组剑客才可用",
	Callback = function()
jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
    end
})

Tab:AddButton({
	Name = "兵工厂",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init'), true))()
    end
})

Tab:AddButton({
	Name = "水下世界_白名单已被破",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/Fish/main/sx')))()
    end
})

local Tab = Window:MakeTab({
    Name = "大闹监狱（监狱人生）",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "过于牛逼，谁用谁孤儿的管理员",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/H17S32/Tiger_Admin/main/Script'))()
  	end    
})

Tab:AddButton({
	Name = "新菜单",
	Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/LiverMods/xRawnder/main/HubMoblie'))()
  	end    
})

Tab:AddButton({
	Name = "v1.3",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
  	end    
})

local Tab = Window:MakeTab({
    Name = "灭霸模拟器",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
      Name = "出生/复活的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,153,-20)
      end
})
    
Tab:AddButton({
      Name = "刷碎片/铸造的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,115,-695)
      end
      })
   
Tab:AddButton({
      Name = "商店/升级武器的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28,1061,1590)
      end
})
    
Tab:AddButton({
      Name = "时间宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(444.5,117,443.5)
      end
})
    
Tab:AddButton({
      Name = "空间宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-412,73,-444)
      end
})
    
Tab:AddButton({
      Name = "现实宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-420,13,690)
      end
})
    
Tab:AddButton({
      Name = "能量宝石怪的位置（建议开夜视）",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(433,55,-326)
      end
})
    
Tab:AddButton({
      Name = "灭霸模拟器快速自杀",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999,-4985,99999)
      end
})

local Tab = Window:MakeTab({
	Name = "其他游戏脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "力量传奇",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))() 
end
})
Tab:AddButton({
	Name = "忍者传奇",
	Callback = function()
pcall(loadstring(game:HttpGet("https://pastebin.com/raw/2UjrXwTV")))
end
})
Tab:AddButton({
	Name = "速度传奇",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/cwCdNqds"))()
end
})
Tab:AddButton({
	Name = "力量传奇（2）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/maddjester/MaddHub/main/GetKey.lua"))()
end
})
Tab:AddButton({
	Name = "伐木大亨",
	Callback = function()
loadstring(game:HttpGet('https://getexploits.com/key-system/',true))('https://da.com/936657404291084298/1006220505583460352/Script.txt')
	end
})
Tab:AddButton({
	Name = "动作",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TR1V5/TR1V5-V1/main/Main2"))()
	end
})
Tab:AddButton({
	Name = "海贼王",
	Callback = function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
	end
})
Tab:AddButton({
	Name = "破坏者迷团",
	Callback = function()
loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
	end
})
Tab:AddButton({
	Name = "兵工厂",
	Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Maikderninja/Maikderninja/main/PWNERHUB.lua"), true))()
	end
})
Tab:AddButton({
	Name = "进击的僵尸",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Zombie%20Attack", true))()
	end
})
Tab:AddButton({
	Name = "巨人模拟器",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/brownfieldd00/Roblox/main/Games/Giant%20Simulator%20Auto%20Rebirth.lua'))()
	end
})
Tab:AddButton({
	Name = "战斗勇士",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()
	end
})
Tab:AddButton({
	Name = "健壮传奇",
	Callback = function()
loadstring(game:HttpGet('https://ghostbin.co/paste/ctpa/raw'))()
	end
})
Tab:AddButton({
	Name = "HOHO",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/main/ScriptLoad.lua"))()
	end
})
Tab:AddButton({
	Name = "自然灾害模拟器",
	Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg", true))() 
end
})
Tab:AddButton({
	Name = "监狱人生",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
	end
})
Tab:AddButton({
	Name = "俄亥俄州",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/hkvHeHed",true))()
end
})
Tab:AddButton({
	Name = "bf",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua'))()
	end
})
local Tab = Window:MakeTab({
	Name = "FE",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "飞机V2",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/o45IJG3Z/raw'),true))()
	end
})
Tab:AddButton({
	Name = "蛇脚本",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
	end
})
Tab:AddButton({
	Name = "让别让别人控制自己",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/a7RTi4un/raw'),true))()
	end
})
Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})
Tab:AddButton({
	Name = "键盘",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
	end
})
Tab:AddButton({
	Name = "复仇者",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw'),true))()
	end
})
Tab:AddButton({
	Name = "鼠标",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
	end
})
Tab:AddButton({
	Name = "变怪物（可杀玩家）",
	Callback = function()
	loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
	end
})
Tab:AddButton({
	Name = "操b脚本",
	Callback = function()
	--Variables
 
 
local SimpleSexGUI = Instance.new("ScreenGui")
 
local FGUI = Instance.new("Frame")
 
local btnNaked = Instance.new("TextButton")
 
local btnSex = Instance.new("TextButton")
 
local tbxVictim = Instance.new("TextBox")
 
local lblFUCKEMALL = Instance.new("TextLabel")
 
local ImageLabel = Instance.new("ImageLabel")
 
local lbltitle = Instance.new("TextLabel")
 
local TextLabel = Instance.new("TextLabel")
 
 
 
 
 
 
 
 
--Properties
 
SimpleSexGUI.Name = "SimpleSexGUI"
SimpleSexGUI.Parent = game.CoreGui
 
 
FGUI.Name = "FGUI"
FGUI.Parent = SimpleSexGUI
FGUI.BackgroundColor3 = Color3.new(255,255,255)
FGUI.BorderSizePixel = 1
FGUI.Position = UDim2.new(0,0, 0.667, 0)
FGUI.Size = UDim2.new(0,317, 0,271)
FGUI.Draggable = true
 
 
 
lbltitle.Name = "Title"
lbltitle.Parent = FGUI
lbltitle.BackgroundColor3 = Color3.new(255,255,255)
lbltitle.BorderSizePixel = 1
lbltitle.Position = UDim2.new (0, 0,-0.122, 0)
lbltitle.Size = UDim2.new (0, 317,0, 33)
lbltitle.Visible = true
lbltitle.Active = true
lbltitle.Draggable = false
lbltitle.Selectable = true
lbltitle.Font = Enum.Font.SourceSansBold
lbltitle.Text = "一个简单的操蛋脚本!!"
lbltitle.TextColor3 = Color3.new(0, 0, 0)
lbltitle.TextSize = 20
 
 
 
 
 
btnSex.Name = "Sex"
btnSex.Parent = FGUI
btnSex.BackgroundColor3 = Color3.new(255,255,255)
btnSex.BorderSizePixel = 1
btnSex.Position = UDim2.new (0.044, 0,0.229, 0)
btnSex.Size = UDim2.new (0, 99,0, 31)
btnSex.Visible = true
btnSex.Active = true
btnSex.Draggable = false
btnSex.Selectable = true
btnSex.Font = Enum.Font.SourceSansBold
btnSex.Text = "让我们操蛋吧!!"
btnSex.TextColor3 = Color3.new(0, 0, 0)
btnSex.TextSize = 20
 
 
 
 
tbxVictim.Name = "VictimTEXT"
tbxVictim.Parent = FGUI
tbxVictim.BackgroundColor3 = Color3.new(255,255,255)
tbxVictim.BorderSizePixel = 1
tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0)
tbxVictim.Size = UDim2.new (0, 133,0, 27)
tbxVictim.Visible = true
tbxVictim.Active = true
tbxVictim.Draggable = false
tbxVictim.Selectable = true
tbxVictim.Font = Enum.Font.SourceSansBold
tbxVictim.Text = "名字"
tbxVictim.TextColor3 = Color3.new(0, 0, 0)
tbxVictim.TextSize = 20
 
lblFUCKEMALL.Name = "FUCKEMALL"
lblFUCKEMALL.Parent = FGUI
lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255)
lblFUCKEMALL.BorderSizePixel = 1
lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0)
lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27)
lblFUCKEMALL.Visible = true
lblFUCKEMALL.Font = Enum.Font.SourceSansBold
lblFUCKEMALL.Text = "操蛋和操蛋"
lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0)
lblFUCKEMALL.TextSize = 20
 
ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = FGUI
ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..."
ImageLabel.BorderSizePixel = 1
ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0)
ImageLabel.Size = UDim2.new (0, 106,0, 121)
 
 
 
 
--Scripts
 
 
btnSex.MouseButton1Click:Connect(function()
 
local player = tbxVictim.Text
local stupid = Instance.new('Animation')
stupid.AnimationId = 'rbxassetid://148840371'
hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
pcall(function()
    hummy.Parent.Pants:Destroy()
end)
pcall(function()
    hummy.Parent.Shirt:Destroy()
end)
local notfunny = hummy:LoadAnimation(stupid)
notfunny:Play()
notfunny:AdjustSpeed(10)
while hummy.Parent.Parent ~= nil do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame
end
end)
end
})
Tab:AddButton({
	Name = "香蕉枪)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
    end
})
Tab:AddButton({
	Name = "超长j巴",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
	end
})
Tab:AddButton({
	Name = "动作",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/HrXgGiND"))()
end
})
Tab:AddButton({
	Name = "重力枪",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
	end
})
Tab:AddButton({
	Name = "全(英文)",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/kEq7bdf9"))()
end
})

Tab:AddButton({
	Name = "飞行V3（隐藏）",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()
  	end    
})
Tab:AddButton({
	Name = "甩飞别人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})
Tab:AddButton({
	Name = "透视",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
  	end    
})
Tab:AddButton({
	Name = "吸取全部玩家",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/hQSBGsw2'))()
  	end    
})
Tab:AddButton({
	Name = "人物无敌",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})
Tab:AddButton({
	Name = "隐身(E)",
	Callback = function()
	 loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
  	end    
})
Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})
Tab:AddButton({
	Name = "飞车(E)(别人看到)",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "中心脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "不知道",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/TUPERX/TUPERX/Main/MenuBF/README.md'))()
   	end
})
Tab:AddButton({
	Name = "X中枢",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt"))()
   	end
})
 Tab:AddButton({
	Name = "脚本Break in",
	Callback = function()	
loadstring(game:HttpGet('https://raw.githubusercontent.com/SHAREHACK/script/main/fusion1'))()
   	end
})
 
Tab:AddButton({
	Name = "主X集线器",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BlodyXHub/Xeniel_All/main/ForAll"))()
   	end
})
 
Tab:AddButton({
	Name = "中心",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/StringV2/StringHub/main/BF.txt", true))()
   	end
})
 Tab:AddButton({
	Name = "HOHO",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
   	end
})
 
Tab:AddButton({
	Name = "PL",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/WindowsXp12/BlxzeRBLX/main/BLxzeHub.lua"))()
   	end
})
 
Tab:AddButton({
	Name = "中心1",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/2XHUB-UPDBIG/main/README.md', true))()
   	end
})
 
Tab:AddButton({
	Name = "X中心",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/sxnumz/Script/main/SxnumzHubFree.txt'))();
   	end
})
 
Tab:AddButton({
	Name = "不可用",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrMaxNaJaEz/New-MrMaxNaJa-NaJa/main/README.md"))()
   	end
})
 
Tab:AddButton({
	Name = "东中心",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Brineeee/EastHub/main/lua"))()
   	end
})
 
Tab:AddButton({
	Name = "千叶中心",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/KindIhave/ChibaHuB/main/Chiba-BF.txt'))()
   	end
})
 
Tab:AddButton({
	Name = "纳尔中心",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xOne2/One-x-HUB/main/README.md"))()
   	end
})
 
Tab:AddButton({
	Name = "ZHP",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", true))()
   	end
})
Tab:AddButton({
	Name = "中心3",
	Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Putaya/HITBOXKAK/main/PutayaFree"), true))()
   	end
})

Tab:AddButton({
	Name = "邪恶",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Natthawat69/EvilHub-FREE/main/Script.lua"))()
   	end
})
Tab:AddButton({
	Name = "项目",
	Callback = function()
loadstring(game:HttpGet"https://rawscripts.net/raw/Project-Meow_421")()
   	end
})
Tab:AddButton({
	Name = "主",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/destylol/masterhubv311/itachi/Main.lua"))()
   	end
})
Tab:AddButton({
	Name = "OUW",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/slightten/ouwHub/main/ouwHub'))()
   	end
})
Tab:AddButton({
	Name = "SMZ",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Frerfgzz/free-script/main/SMZHUBv2BETA"))()
   	end
})
Tab:AddButton({
	Name = "岩浆中心",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/accountnop/magmaisgay/main/magma", true))()
   	end
})
 Tab:AddButton({
	Name = "标志武器",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/dhsHESsm'))()
   	end
})
Tab:AddButton({
    Name = "能力中心",
    Callback = function()
        local SET_UP = CustomLoader("能力中心|加载...", "json", {
            URL = "https://raw.githubusercontent.com/Hanabi112/Ability-Hub-Free-Script/main/Abiliity-Hub.json";
        })();
    end,
})
 
Tab:AddButton({
	Name = "元仓库",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/x2FIWz/SCRIPT/main/MOBILE/METAWARE.lua'))()
  	end
})

local player = Window:MakeTab({
	Name = "巴掌",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = 脚本1,
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomScriptr3/gggggggg/main/lolez.txt", true))()
  	end
})

player:AddButton({ 
	Name = 脚本2,
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
  	end
})

player:AddButton({ 
	Name = 脚本3,
	Callback = function()
      	loadstring(game:HttpGet("https://scriptblox.com/raw/UPDATE-Slap-Battles-OP-RC-HUB-9830"))()
  	end
})

player:AddButton({ 
	Name = 脚本4,
	Callback = function()
      	loadstring(game:HttpGet("https://scriptblox.com/raw/Slap-Battles-Scriptmaster-Hub-10755"))()
  	end
})

player:AddButton({ 
	Name = "大逃杀",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
  	end
})

local player = Window:MakeTab({
	Name = "hoho",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = 脚本1,
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/main/ScriptLoad.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "我的餐厅",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = 脚本1,
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/roblox-scripts/main/mr.lua"))()
  	end
})
local player = Window:MakeTab({
	Name = "成为跑酷忍者",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = 脚本1,
	Callback = function()
        -------hit sub and like! THNKYOU!  -JA1R4 GAMING----


loadstring(game:HttpGet("https://raw.githubusercontent.com/Min1273/n-to/main/README.md"))()
  	end
})

local player = Window:MakeTab({
	Name = "起床",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1（搭配键盘左shift使用）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  	end
})

local player = Window:MakeTab({
	Name = "强壮传奇",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = 脚本1,
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/1337xyz/robloxscripts/master/ThickLegends.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "bf",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "自动拿宝箱",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/SHAREHACK/bloxfruit/main/autochest'))()
  	end
})
player:AddButton({ 
	Name = 脚本1,
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/BLCK"))()
  	end
})
player:AddButton({ 
	Name = 脚本2,
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'))()
  	end
})

local player = Window:MakeTab({
	Name = "造船寻宝",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "脚本1",
	Callback = function()
      	loadstring(game:HttpGet('https://ppearl.vercel.app'))()
  	end
})

player:AddButton({
	Name = "复制密钥",
	Callback = function()
     setclipboard("Pearl_876tsdfhba67sdbhyaggv2")
  	end
})

player:AddButton({ 
	Name = "脚本2",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/XRoLLu/UWU/main/BUILD%20A%20BOAT%20FOR%20TREASURE.lua'))()
  	end
})

local Tab = Window:MakeTab({
    Name = "忍者传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle(
    {
        Name = "自动挥舞",
        Default = false,
        Callback = function(x)
            autoswing = x
            if autoswing then
                swinging()
            end
        end
    }
)
Tab:AddToggle(
    {
        Name = "自动售卖",
        Default = false,
        Callback = function(x)
            autosell = x
            if autosell then
                selling()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "存满了自动售卖",
        Default = false,
        Callback = function(x)
            autosellmax = x
            if autosellmax then
                maxsell()
            end
        end
    }
)

local Section = Tab:AddSection({
	Name = "自动购买功能"
})

Tab:AddToggle(
    {
        Name = "自动购买剑",
        Default = false,
        Callback = function(x)
            autobuyswords = x
            if autobuyswords then
                buyswords()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买腰带",
        Default = false,
        Callback = function(x)
            autobuybelts = x
            if autobuybelts then
                buybelts()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买称号（等级）",
        Default = false,
        Callback = function(x)
            autobuyranks = x
            if autobuyranks then
                buyranks()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买忍术",
        Default = false,
        Callback = function(x)
            autobuyskill = x
            if autobuyskill then
                buyskill()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买（全部打开就行）",
        Default = false,
        Callback = function(x)
            autobuyshurikens = x
            if autobuyshurikens then
                buyshurikens()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "解锁所有岛",
        Callback = function()
            for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
                if v then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
                    wait(.5)
                end
            end
        end
    }
)

local Tab = Window:MakeTab({
    Name = "各大脚本👍👍👍",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "小云V1.0.4)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/XiaoYunbarkV1.0.4.lua"))()
end
})

Tab:AddButton({
	Name = "小云V1.0.6)真剧本多",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/XiaoYun_currentedition_beta.lua"))()
end
})

Tab:AddButton({
	Name = "☁脚本",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/Xiaos______________________________________________________________Yun__________________________________________________________________________betaV2.2------------------------------------------------------------------------------------jsja.lua"))()
  	end
})

Tab:AddButton({
    Name="XC",
    Callback=function()
        getgenv().XC="作者XC"
loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
    end
})

Tab:AddButton({
    Name="龙脚本",
    Callback=function()
        getgenv().long = "龙脚本，加载时间长请耐心"
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\108\121\121\97\105\110\105\47\108\111\110\47\109\97\105\110\47\108\105\115\119\109\34\41\41\40\41")()
    end
})

Tab:AddButton({
	Name = "复制usa卡密",
	Callback = function()
     setclipboard("USA AER")
  	end
})

Tab:AddButton({
  Name = "USA（卡密：USA AER）",
  Callback = function()
    getgenv().USA="作者莫羽免费请勿倒卖"loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
  end
})

Tab:AddButton({
	Name = "复制青脚本卡密",
	Callback = function()
     setclipboard("Green2023scriptkeyroblox")
  	end
})

Tab:AddButton({
  Name = "青脚本",
  Callback = function()
--支持游戏自然,doors,Evade,lifting simulator,x20 lifting simulator有3个没加上(懒)
local Green = "作者天隊QQ3585189460"
local key = "卡密在QQ群665141481"
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\121\117\97\110\49\49\52\53\49\52\47\53\56\52\48\47\109\97\105\110\47\53\52\49\56\56\46\108\117\97\39\41\41\40\41\10")()
  end
})

Tab:AddButton({
    Name="水下",
    Callback=function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\106\115\105\100\106\100\110\110\115\110\115\110\115\47\115\106\115\105\100\106\100\110\110\115\110\115\110\115\47\109\97\105\110\47\82\69\65\68\77\69\46\109\100\34\41\41\40\41")()
    end
})

Tab:AddButton({
    Name="导管",
    Callback=function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
    end
})

Tab:AddButton({
    Name="鸭",
    Callback=function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()
    end
})

Tab:AddButton({
    Name="几把苗v1（无用）",
    Callback=function()
loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8736/473026?sign=Zy9IJu6oUjkHmDPw1YUPatfSBasClFJz3Y5TcmOofGY%3D%3A0"))()
    end
})

Tab:AddButton({
    Name="剑客v3333333👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍",
    Callback=function()
jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
    end
})

Tab:AddButton({
    Name="晴",
    Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/llllll/main/%E5%91%83%E7%A0%B4%E8%A7%A3%E7%8B%97"))()
    end
})

Tab:AddButton({
    Name="鲨",
    Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sharksharksharkshark/shark-shark-shark-shark-shark/main/shark-scriptlollol.txt",true))()
    end
})

local Tab = Window:MakeTab({
  Name = "FE变身脚本",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })

Tab:AddButton({
	Name = "FE SANS（不像）",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/i0yEjAry"))()
end
})

Tab:AddButton({
	Name = "FE Reaper",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/5rVDct9n"))()
end
})

Tab:AddButton({
	Name = "FE死侍",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/NVvdEySK"))()
end
})

Tab:AddButton({
	Name = "FE Knife",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/uAnpMVZR"))()
end
})

Tab:AddButton({
	Name = "Void BOSS",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/uP0MV6As"))()
end
})

Tab:AddButton({
	Name = "变大变小真的奇妙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/yRyNgpGE"))()
end
})

Tab:AddButton({
	Name = "FE PUNCH",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/gBrRFj8K"))()
end
})

Tab:AddButton({
	Name = "FE DEATH",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/sUcgGXkC"))()
end
})

Tab:AddButton({
	Name = "炸服",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/eU2wngHG"))()
end
})

Tab:AddButton({
	Name = "FE Giant AXE",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/lrjtanrp/raw'),true))()
end
})

Tab:AddButton({
	Name = "FE Saitama",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/HgbE1e6E"))()
end
})

Tab:AddButton({
	Name = "FE giant eye",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/nXEnZrdH"))()
end
})

Tab:AddButton({
	Name = "FE帅气小刀刀",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/PTQQGkYG"))()
end
})

Tab:AddButton({
	Name = "FE月亮之刃",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/rTSxZGSQ"))()
end
})

Tab:AddButton({
	Name = "Among us（逆天）",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/f1LTmTPZ"))()
end
})

local Tab = Window:MakeTab({
	Name = "其它脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "餐厅大亨2",
	Callback = function()
	loadstring(game:httpget("https://raw.githubusercontent.com/LabibKazi858/Scripts/main/Restaurant%20Tycoon%202", true))()
	end
})

Tab:AddButton({
	Name = "北约蜂群模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://rahttps://rahttps://raw.githubusercontent.com/USA868/USA--/main/.github/%E5%B7%A5%E4%BD%9C%E6%B5%81%E7%A8%8B/1%E6%9D%96%E4%BA%BA%E4%BD%BF%E7%94%A8?token=GHSAT0AAAAAACB6LLQWA5JNQNNWTP47AOWSZCLYRTQ"))()
	end
})

Tab:AddButton({
	Name = "服务器模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/1Kj71cJM"))();
		end
})

Tab:AddButton({
	Name = "北约苦力怕",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githttps://raw.githubusercontent.com/USA868/USA--/main/%E8%8B%A6%E5%8A%9B%E6%80%95%E6%9D%80%E6%89%8B(ZERO%E6%B1%89%E5%8C%96)%20(1).txt?token=GHSAT0AAAAAACB6LLQWG2CFCYA27H5D33DSZCMVNZQ"))()
		end
})

Tab:AddButton({
	Name = "脚本搜索",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"))()
	end
})

Tab:AddButton({
	Name = "幸运战场",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
	end
})

Tab:AddButton({
	Name = "DX",
	Callback = function()
	loadstring(game:HttpGet("https://github.com/DocYogurt/lolololololololololololololollolololololololololololololollolololololololololololololollolololololol/raw/main/lolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololol.lua"))()
	end
})

Tab:AddButton({
	Name = "饥饿的艺术家",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperRegex/RobloxScripts/main/DrawingScript.lua"))()
	end
})

Tab:AddButton({
	Name = "监狱人生",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
	end
})

Tab:AddButton({
	Name = "脚本F",
	Callback = function()		loadstring(game:HttpGet('loadstring(game:HttpGet("https://raw.githubusercontent.com/Wangzhehaoh/fly-away/main/how%20didb%20mOD"))()'))()
	end
})

Tab:AddButton({
	Name = "胭脂模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/USA868/USA--/main/%E5%8C%97%E7%BA%A6%E8%84%82%E8%82%AA?token=GHSAT0AAAAAACB6LLQXW62E3GRGCTS3O4RCZCMUN2Q"))()
		end
})

Tab:AddButton({
	Name = "脚本中心1.5",
	Callback = function()		loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()'))()
	end
})

Tab:AddButton({
	Name = "隐身（按E）",
	Callback = function()
		loadstring(game:HttpGet('http://pan.rlyun.asia/api/v3/file/get/15096/%E9%9A%90%E8%BA%AB?sign=e_W9VovlrlZFy_OwwmQSLn6POQ6FwtWXFvrb2lBaJq8%3D%3A0'))()
	end
})

Tab:AddButton({
	Name = "BOL",
	Callback = function()
	loadstring(game:HttpGet("https://github.com/ScriptKiddyQuinn/Blox-Hub-Version-1.3/blob/main/Blox%20Hub%20Version%201.3", true))()
	end
})

Tab:AddButton({
	Name = "音乐",
	Callback = function()		
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/music.lua"))()
    end
})
Tab:AddButton({
	Name = "轰炸（封号风险）",
	Callback = function()		
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/%E8%BD%B0%E7%82%B8.lua"))()
    end
})
Tab:AddButton({
	Name = "回答或死亡",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/jaeelin/S-Ware/main/S-WARE'))()
	end
})
Tab:AddButton({
	Name = "兵工厂",
	Callback = function()
		loadstring(game:HttpGet('http://pan.rlyun.asia/api/v3/file/get/15369/%E4%B9%92%E5%B7%A5%E5%8E%82?sign=pDWgMBQ_m8pjcTS9-o8N1zvCmYmc6LsQVjeDaypp0bw%3D%3A0'))()
	end
})
Tab:AddButton({
	Name = "鲨口求生",
	Callback = function()		
	loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
	end
})
Tab:AddButton({
	Name = "变大变小",
	Callback = function()	
	loadstring(game:HttpGet("http://pan.rlyun.asia/api/v3/file/get/18187/%E5%8F%98%E5%A4%A7%E5%8F%98%E5%B0%8F?sign=nR9TjQacuB58vmwKApyTIaWJykPqbr3KNPusu_MqNbg%3D%3A0"))()
	end
})
Tab:AddButton({
	Name = "bf神龙",
	Callback = function()		
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", true))()
    end
})
Tab:AddButton({
	Name = "技能大战2卡密：lMXJsryGVIajsQrMJmaVde3MIUoHCa",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/VxleLUA/Dynamic-Offical/main/System/GameChecker.lua"))()
	end
})
Tab:AddButton({
	Name = "军事大亨 查找干扰器",
	Callback = function()
	loadstring(game:HttpGet("https://oopshub.vercel.app/scripts/MT_event_Hacker.lua"))()
	end
})
Tab:AddButton({
	Name = "帝国中心（荐）",
	Callback = function()	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/aerocontentdeliverynetwork/3456465f7453x447r76h86856233423645756354b/master/loader.lua"))()
	end
})
Tab:AddButton({
	Name = "eyabe新版",
	Callback = function()	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Wangzhehaoh/fly-away/main/---EF---fluxus%20debtsesgh%20%E6%AC%A2%E8%BF%8E%E6%9D%A5%E5%88%B0%E8%84%9A%E6%9C%ACEF%20%E6%B5%8B%E8%AF%95%E7%89%88"))()
		end
})
Tab:AddButton({
	Name = "派系防御大亨",
	Callback = function()
	game:GetService("ReplicatedStorage").PlayerMoneyUpdate[game:GetService("Players").LocalPlayer.Name]:FireServer(999999999)
	end
})
Tab:AddButton({
	Name = "军事大亨",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/q94czk7E",true))()
	end
})
Tab:AddButton({
	Name = "通用ESP",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
	end
})
Tab:AddButton({
	Name = "导弹模拟器",
	Callback = function()	
	loadstring(game:HttpGet('https://raw.githubusercontent.com/KodaLINEN/NukeSim/main/Main'))()
	end
})	
Tab:AddButton({
	Name = "备用战场（自动闪避）",
	Callback = function()	
	
--[Made by ThroughTheFireAndFlames#9925]
--[https://www.roblox.com/games/8573962925/Alternate-Battlegrounds-apil-fools]--

getgenv().AutoExecute = true 

getgenv().Keybind = "V"
getgenv().Distance = 35

getgenv().Aura = true 
getgenv().Sounds = true

getgenv().LookAtNearestPlayer = false
getgenv().LookAtDistance  = 25
getgenv().LookAtKeybind = "V" 

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/AB/main/Ui"))();
	end
})
Tab:AddButton({
	Name = "矿车",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Holdmyhacks/scripts/main/scripts", true))()
	end
})
Tab:AddButton({
	Name = "通用脚本",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/raw-scriptpastebin/raw/main/B_Genesis'))()
	end
})
Tab:AddButton({
	Name = "宠物模拟器",
	Callback = function()
	-- key from https://discord.gg/u7JNWQcgsU
getgenv().key = "projectWBIsAwesomeG8J7GJ678PY"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Muhammad6196/Project-WD/main/Main.lua"))()
    end
})

Tab:AddButton({
	Name = "伐木大亨2（翻译）",
	Callback = function()
		loadstring(game:HttpGet('http://pan.rlyun.asia/api/v3/file/get/15754/%E4%BC%90%E6%9C%A8?sign=cLaJaGOk-K27o0mPP7U3iELEvkgLCTCbTO90pUdHlBk%3D%3A0'))()
	end
})

Tab:AddButton({
	Name = "我的世界",
	Callback = function()	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0craftblox", true))()
		end
})

Tab:AddButton({
    Name = "德意志的啤酒馆大暴动",
    Callback = function()    
        local plr = game:GetService'Players'.LocalPlayer; local plrs = plr.Parent
        local Services = loadstring(game:HttpGet('https://raw.githubusercontent.com/fheahdythdr/FloppaMods/main/Utilities/Services.lua'))()

        local KillAll, PushDist, PushNearby = false, 50, false

        local function GetPlayerHead(plr)
            for i, v in pairs(plr:GetChildren()) do
                if not v:IsA('BasePart') then continue end

                if v.Name == 'Head' then
                    return v
                end
            end
        end

        local function GetClosestPlayer()
            local currentClosest = {}

            for i, v in next, plrs:GetPlayers() do
                if v ~= plr and plr.Character:FindFirstChild'Head' ~= nil and v.Character ~= nil then
                    --if v.Team ~= plr.Team then
                        local RootPart = GetPlayerHead(v.Character)
                        if RootPart == nil then continue end
                        pcall(function()
                            if RootPart ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < PushDist and not currentClosest.distance and not v.Character.Protection.Value then
                                currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                                currentClosest.instance = v
                            end
                            if RootPart ~= nil and currentClosest.distance ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < currentClosest.distance and not v.Character.Protection.Value then
                                currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                                currentClosest.instance = v
                            end
                        end)
                    --end
                end
            end

            return currentClosest
        end

        local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/ui-libraries-vozoid/main/venus/source.lua", true))()

        local main = library:Load({Name = "Xylite", Theme = "Dark", SizeX = 400, SizeY = 300, ColorOverrides = {
            MainFrame = Color3.fromRGB(82, 10, 124),
            TabBackground = Color3.fromRGB(68, 21, 122),
            TabToggleDisabled = Color3.fromRGB(55, 2, 136),
            ButtonMouseOver = Color3.fromRGB(151, 54, 180),
            ToggleEnabled = Color3.fromRGB(181, 84, 210),
            ToggleEnabledMouseOver = Color3.fromRGB(151, 54, 180),
            SliderMouseOver = Color3.fromRGB(130, 94, 185),
            SliderFill = Color3.fromRGB(74, 25, 148),
            SliderFillSliding = Color3.fromRGB(104, 55, 178),
            DropdownMouseOver = Color3.fromRGB(90, 68, 124),
            DropdownContent = Color3.fromRGB(70, 48, 104)
        }})

        local vTab = main:Tab('Remote Abusing')
        local vSec = vTab:Section({Name = 'Main', column = 1})

        local queueteleport = syn.queue_on_teleport or fluxus.queue_on_teleport or queue_on_teleport or nil

        vSec:Toggle({Name = "Kill All", Callback = function(val)
            KillAll = val
        end})

        vSec:Toggle({Name = "Push All in Radius", Callback = function(val)
            PushNearby = val
        end})

        vSec:Slider({Name = "Push Radius", Min = 10, Max = 300, Default = 50, Callback = function(val)
            PushDist = val
        end})

        vSec:Button({Name = "Rejoin", Callback = function()
            queueteleport('task.wait(5) loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/FloppaMods/main/Xylite/Chaos%20at%20the%20Bistro.lua"))()')
            task.wait(1)
            game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId)
        end})

        if game:GetService("Workspace"):FindFirstChild("WorldLimit") then
            local WorldFallPrevention = Instance.new("Part", workspace)
            WorldFallPrevention.Position = game:GetService("Workspace"):FindFirstChild("WorldLimit").Position - Vector3.new(0, 7.5, 0)
            WorldFallPrevention.Anchored = true
            WorldFallPrevention.Size = Vector3.new(1000, 3, 1000)

            game:GetService("Workspace"):FindFirstChild("WorldLimit"):Destroy()
        end

        task.spawn(function()
            while task.wait(0.1) do
                if KillAll then
                    workspace.Gravity = 0
                    for _,v in next, plrs:GetPlayers() do
                        pcall(function()
                            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v ~= plr and not v.Character.Protection.Value then
                                while v.Character.Humanoid.Health > 0 do
                                    task.wait(0.1)
                                    workspace[plr.Name].HumanoidRootPart.CFrame = v.Character.Torso.CFrame + (Vector3.new(0, -4.5, 0))
                                    workspace[plr.Name].PrimaryPart.AssemblyLinearVelocity  = Vector3.zero
                                    workspace[plr.Name].PrimaryPart.AssemblyAngularVelocity = Vector3.zero
                                    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                                    local ohString1 = "right"

                                    game:GetService("ReplicatedStorage").Events.Swing:FireServer(ohString1)

                                    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                                    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                                    local ohInstance1 = v.Character.Torso
                                    local ohString2 = "player"
                                    local ohNumber3 = 1

                                    game:GetService("ReplicatedStorage").Events.Hit:FireServer(ohInstance1, ohString2, ohNumber3)
                                end
                            end
                        end)
                    end
                else
                    workspace.Gravity = 192
                end
            end
        end)

        task.spawn(function()
            while Services["RunService"].RenderStepped:Wait() do
                if PushNearby then
                    local closest = GetClosestPlayer()
                    if closest.distance then
                        local ohString1 = "push"
                        game:GetService("ReplicatedStorage").Events.Swing:FireServer(ohString1)
                        local ohInstance1 = closest.instance.Character.Torso
                        local ohString2 = "push"
                        local ohNumber3 = 1
                        game:GetService("ReplicatedStorage").Events.Hit:FireServer(ohInstance1, ohString2, ohNumber3)
                    end
                end
            end
        end)
    end
})

Tab:AddButton({
	Name = "美术生在啤酒馆大暴动",
	Callback = function()
	--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local plr = game:GetService'Players'.LocalPlayer; local plrs = plr.Parent

local KillAll, PushDist, PushNearby, ThrowClosestPropAtClosestPlayer, CurrentProp, kwprop, KillTarget, ksp, kspprop = false, 50, false, ThrowClosestPropAtClosestPlayer, nil, false, {}, false, false

local function GetPlayerHead(plr)
    for i, v in pairs(plr:GetChildren()) do
        if v:IsA('BasePart') then 
            if v.Name == 'Head' then
                return v
            end
        end
    end
end

local function GetClosestPlayer(range)
    local currentClosest = {}

    for i, v in next, plrs:GetPlayers() do
        if v ~= plr and plr.Character:FindFirstChild'Head' ~= nil and v.Character ~= nil then
            --if v.Team ~= plr.Team then
                local RootPart = GetPlayerHead(v.Character)
                if RootPart ~= nil then
                    pcall(function()
                        if RootPart ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < range and not currentClosest.distance and not v.Character.Protection.Value then
                            currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                            currentClosest.instance = v
                        end
                        if RootPart ~= nil and currentClosest.distance ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < currentClosest.distance and not v.Character.Protection.Value then
                            currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                            currentClosest.instance = v
                        end
                    end)
                end
            --end
        end
    end

    return currentClosest
end

local function GetClosestPlayerFromTable(range, tbl)
    local currentClosest = {}

    for i,x  in next, tbl do
        local v = plrs[x]
        if v ~= plr and plr.Character:FindFirstChild'Head' ~= nil and v.Character ~= nil then
            --if v.Team ~= plr.Team then
                local RootPart = GetPlayerHead(v.Character)
                if RootPart ~= nil then
                    pcall(function()
                        if RootPart ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < range and not currentClosest.distance and not v.Character.Protection.Value then
                            currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                            currentClosest.instance = v
                        end
                        if RootPart ~= nil and currentClosest.distance ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < currentClosest.distance and not v.Character.Protection.Value then
                            currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                            currentClosest.instance = v
                        end
                    end)
                end
            --end
        end
    end

    return currentClosest
end

local function GetClosestProp(range)
    local currentClosest = {}

    for i, v in next, workspace.Furniture:GetDescendants() do
        if v.Parent.Name == "Chairs" or v.Parent.Name == "Throwable" then
            --if v.Team ~= plr.Team then
            --pcall(function()
                local RootPart = v:FindFirstChildOfClass("Part")
                if (plr.Character.Head.Position - RootPart.Position).Magnitude < range and not currentClosest.distance then
                    currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                    currentClosest.instance = v
                end
                if currentClosest.distance ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < currentClosest.distance then
                    currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                    currentClosest.instance = v
                end
            --end)
            --end
        end
    end

    return currentClosest
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/venus/source.lua", true))()

local main = library:Load({Name = "Xylite", Theme = "Dark", SizeX = 500, SizeY = 500, ColorOverrides = {
    MainFrame = Color3.fromRGB(82, 10, 124),
    TabBackground = Color3.fromRGB(68, 21, 122),
    TabToggleDisabled = Color3.fromRGB(55, 2, 136),
    ButtonMouseOver = Color3.fromRGB(151, 54, 180),
    ToggleEnabled = Color3.fromRGB(181, 84, 210),
    ToggleEnabledMouseOver = Color3.fromRGB(151, 54, 180),
    SliderMouseOver = Color3.fromRGB(130, 94, 185),
    SliderFill = Color3.fromRGB(74, 25, 148),
    SliderFillSliding = Color3.fromRGB(104, 55, 178),
    DropdownMouseOver = Color3.fromRGB(90, 68, 124),
    DropdownContent = Color3.fromRGB(70, 48, 104)
}})

local vTab = main:Tab('Remote Abusing')
local vSec = vTab:Section({Name = 'Main', column = 1})
--local experimental = main:Tab("Experimental")
--local experimentalt = experimental:Section({Name = "Main", column = 1})

local queueteleport = syn.queue_on_teleport or fluxus.queue_on_teleport or queue_on_teleport or nil

vSec:Toggle({Name = "Kill All", Callback = function(val)
    KillAll = val
end})

vSec:Toggle({Name = "Push All in Radius", Callback = function(val)
    PushNearby = val
end})

vSec:Slider({Name = "Push Radius", Min = 10, Max = 300, Default = 50, Callback = function(val)
    PushDist = val
end})

vSec:Toggle({Name = "Throw Nearby Prop At Nearby Player", Callback = function(val)
    ThrowClosestPropAtClosestPlayer = val
end})

vSec:Button({Name = "Drop Prop", Callback = function()
    if CurrentProp then
        local ohInstance1 = CurrentProp
        local ohString2 = "drop"
        local ohTable3 = {
            ["BreakGrip"] = false
        }

        game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2, ohTable3)
    end
end})

vSec:Toggle({Name = "Kill All with Props", Callback = function(val)
    kwprop = val
end})

vSec:Label("Players To Kill")

local PlayerDropdown = vSec:Dropdown({Default = "", Content = {}, MultiChoice = true, Callback = function(chosen)
    KillTarget = chosen
end})

vSec:Toggle({Name = "Kill Specified Players", Callback = function(val)
    ksp = val
end})

vSec:Toggle({Name = "Kill Specified Players with Props", Callback = function(val)
    kspprop = val
end})

vSec:Button({Name = "Clear Specified Players", Callback = function()
    PlayerDropdown:Set({})
    KillTarget = {}
end})

vSec:Button({Name = "Rejoin", Callback = function()
    if queueteleport then queueteleport('task.wait(5) loadstring(game:HttpGet("https://rawscripts.net/raw/Chaos-at-the-Bistro-funny-popular-no-antiche-game-10661"))()') end
    task.wait(1)
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId)
end})

if game:GetService("Workspace"):FindFirstChild("WorldLimit") then
    local WorldFallPrevention = Instance.new("Part", workspace)
    WorldFallPrevention.Position = game:GetService("Workspace"):FindFirstChild("WorldLimit").Position - Vector3.new(0, 20, 0)
    WorldFallPrevention.Anchored = true
    WorldFallPrevention.Size = Vector3.new(1000, 15, 1000)

    game:GetService("Workspace"):FindFirstChild("WorldLimit"):Destroy()
end

plrs.PlayerAdded:Connect(function(player)
    local players = game.Players:GetChildren()
    local PlayerList = {}

    for i,v in pairs(players) do
        table.insert(PlayerList,v.Name)
    end

    local backup = KillTarget
    KillTarget = {}
    local exists = {}
    local new = {}

    PlayerDropdown:Refresh(PlayerList)
    PlayerDropdown:Set({})
    for _, v in next, backup do
        if players[v] then exists[v] = true table.insert(KillTarget, v) else exists[v] = false end
    end
    for i, v in next, exists do
        if v == true then table.insert(new, i) end
    end

    PlayerDropdown:Set(new)
end)

plrs.PlayerRemoving:Connect(function()
    task.wait(1)
    local players = game.Players:GetChildren()
    local PlayerList = {}

    for i,v in pairs(players) do
        table.insert(PlayerList,v.Name)
    end
    local backup = KillTarget
    KillTarget = {}
    local exists = {}
    local new = {}

    PlayerDropdown:Refresh(PlayerList)
    PlayerDropdown:Set({})
    for _, v in next, backup do
        if players[v] then exists[v] = true table.insert(KillTarget, v) else exists[v] = false end
    end
    for i, v in next, exists do
        if v == true then table.insert(new, i) end
    end

    PlayerDropdown:Set(new)
end)

do
    local players = game.Players:GetChildren()
    local PlayerList = {}

    for i,v in pairs(players) do
        table.insert(PlayerList,v.Name)
    end
    PlayerDropdown:Refresh(PlayerList)
    PlayerDropdown:Set({})
end

task.spawn(function()
    while task.wait(0.1) do
        if KillAll then
            workspace.Gravity = 0
            for _,v in next, plrs:GetPlayers() do
                pcall(function()
                    if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v ~= plr and not v.Character.Protection.Value then
                        while v.Character.Humanoid.Health > 0 do
                            task.wait(0.1)
                            workspace[plr.Name].HumanoidRootPart.CFrame = v.Character.Torso.CFrame + (Vector3.new(0, -4.5, 0))
                            workspace[plr.Name].PrimaryPart.AssemblyLinearVelocity  = Vector3.zero
                            workspace[plr.Name].PrimaryPart.AssemblyAngularVelocity = Vector3.zero
                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            local ohString1 = "right"

                            game:GetService("ReplicatedStorage").Events.Swing:FireServer(ohString1)

                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            local ohInstance1 = v.Character.Torso
                            local ohString2 = "player"
                            local ohNumber3 = 1

                            game:GetService("ReplicatedStorage").Events.Hit:FireServer(ohInstance1, ohString2, ohNumber3)
                        end
                    end
                end)
            end
        else
            workspace.Gravity = 192
        end
    end
end)

task.spawn(function()
    while task.wait(0.1) do
        if ksp and KillTarget[1] then
            workspace.Gravity = 0
            for _,pl in next, KillTarget do
                pcall(function()
                    local v = plrs[pl]
                    if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v ~= plr and not v.Character.Protection.Value then
                        while v.Character.Humanoid.Health > 0 do
                            task.wait(0.1)
                            workspace[plr.Name].HumanoidRootPart.CFrame = v.Character.Torso.CFrame + (Vector3.new(0, -4.5, 0))
                            workspace[plr.Name].PrimaryPart.AssemblyLinearVelocity  = Vector3.zero
                            workspace[plr.Name].PrimaryPart.AssemblyAngularVelocity = Vector3.zero
                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            local ohString1 = "right"

                            game:GetService("ReplicatedStorage").Events.Swing:FireServer(ohString1)

                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            local ohInstance1 = v.Character.Torso
                            local ohString2 = "player"
                            local ohNumber3 = 1

                            game:GetService("ReplicatedStorage").Events.Hit:FireServer(ohInstance1, ohString2, ohNumber3)
                        end
                    end
                end)
            end
        else
            workspace.Gravity = 192
        end
    end
end)

task.spawn(function()
    while game:GetService"RunService".RenderStepped:Wait() do
        if PushNearby then
            local closest = GetClosestPlayer(PushDist)
            if closest.distance then
                local ohString1 = "push"
                game:GetService("ReplicatedStorage").Events.Swing:FireServer(ohString1)
                local ohInstance1 = closest.instance.Character.Torso
                local ohString2 = "push"
                local ohNumber3 = 1
                game:GetService("ReplicatedStorage").Events.Hit:FireServer(ohInstance1, ohString2, ohNumber3)
            end
        end
    end
end)

task.spawn(function()
    while task.wait(0.1) do
        if ThrowClosestPropAtClosestPlayer then
            local ClosestProp, ClosestPlayer = GetClosestProp(25), GetClosestPlayer(25)
            if ClosestProp.instance and ClosestPlayer.instance then
                -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                CurrentProp = ClosestProp.instance
                local ohInstance1 = ClosestProp.instance
                local ohString2 = "pickup"

                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2)
                
                task.wait(0.5)

                -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                local ohInstance1 = ClosestProp.instance
                local ohString2 = "throw"

                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2)

                task.wait(0.25)

                local ohInstance1 = ClosestProp.instance
                local ohString2 = "hit"
                local ohTable3 = {
                    ["Hit"] = ClosestPlayer.instance.Character,
                    ["Life"] = 0
                }

                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2, ohTable3)
            
            end
        end
    end
end)

task.spawn(function()
    while task.wait(0.2) do
        if kspprop and KillTarget[1] then
            workspace.Gravity = 0
            for _,pl in next, KillTarget do
                pcall(function()
                    local v = plrs[pl]
                    if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v ~= plr and not v.Character.Protection.Value then
                        local ClosestProp = GetClosestProp(500)
                        if ClosestProp.instance then
                            while v.Character.Humanoid.Health > 0 do
                                    -- This script was

local Tab = Window:MakeTab({
	Name = "一路向西",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "防摔",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040712770")[1].Source)()
	end
})
Tab:AddButton({
	Name = "防套",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040719318")[1].Source)()
	end
})
Tab:AddButton({
	Name = "范围",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040722920")[1].Source)()
	end
})
Tab:AddButton({
	Name = "无后座，无限，超级",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040701935")[1].Source)()
	end
})

Tab:AddButton({
	Name = "小云V1.0.4)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/XiaoYunbarkV1.0.4.lua"))()
end
})
Tab:AddButton({
	Name = "小云V1.0.6)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/XiaoYun_currentedition_beta.lua"))()
end
})
Tab:AddButton({
	Name = "云脚本2.0",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/Xiao______________________________________________________________Yun__________________________________________________________________________betaV2.0.lua"))()
end
})

Tab:AddButton({
	Name = "微山白脚本",
	Callback = function()
	白脚本0.0.5(微山工作室)[已修复]loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\75\113\117\97\68\70\53\120\34\41\41\40\41\10")()
	end
})

Tab:AddButton({
	Name = "bf",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "10",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-HUB/HUB/main/Mobile-V2"))()
	end
})
Tab:AddButton({
	Name = "9",
	Callback = function()
		loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\101\115\116\120\101\109\99\104\117\97\47\97\103\97\103\97\103\97\113\47\109\97\105\110\47\85\105\47\104\104\104\46\108\117\97\34\41\41\40\41\10")()
	end
})
Tab:AddButton({
	Name = "7",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/BlodyXHub/ZeusHub/main/Loading_Ui"))()
	end
})
Tab:AddButton({
	Name = "6",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", true))()
	end
})
Tab:AddButton({
	Name = "5",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/STRAW%20HUB%20RELEASE", true))()
	end
})
Tab:AddButton({
	Name = "4",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Sixnumz/ZamexMobile/main/Zamex_Mobile.lua'))()
	end
})

local Section = Tab:AddSection({
	Name = "超级大力士模拟器"
})
 
Tab:AddButton({
	Name = "传送到开始区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.86943817138672, 11.751949310302734, -198.07127380371094)
  	end    
})
 
Tab:AddButton({
	Name = "传送到健身区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.60747528076172, 11.751947402954102, -10.266206741333008)
  	end    
})
 
Tab:AddButton({
	Name = "传送到食物区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.86384582519531, 11.751947402954102, 228.9690399169922)
  	end    
})
 
Tab:AddButton({
	Name = "传送到街机区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.99887084960938, 11.751949310302734, 502.90997314453125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到农场区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.6707763671875, 11.751947402954102, 788.5997314453125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到城堡区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.87281036376953, 11.84177017211914, 1139.7509765625)
  	end    
})
 
Tab:AddButton({
	Name = "传送到蒸汽朋克区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.63227081298828, 11.841767311096191, 1692.7890625)
  	end    
})
 
Tab:AddButton({
	Name = "传送到迪斯科区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.69613647460938, 16.015085220336914, 2505.213134765625)
  	end    
})
 
Tab:AddButton({
	Name = "传送到太空区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.42948150634766, 11.841769218444824, 3425.941650390625)
  	end    
})
 
Tab:AddButton({
	Name = "传送到糖果区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.55805969238281, 11.841663360595703, 4340.69921875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到实验室区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.00920867919922, 11.841663360595703, 5226.60205078125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到热带区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80.26090240478516, 12.0902681350708, 6016.16552734375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到恐龙区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.4753303527832, 25.801530838012695, 6937.779296875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到复古区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.81867218017578, 12.89099407196045, 7901.74755859375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到冬季区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.47243881225586, 11.841662406921387, 8983.810546875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到深海区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.36250305175781, 26.44820213317871, 9970.0849609375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到狂野西部区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.69414520263672, 15.108586311340332, 10938.654296875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到豪华公寓区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.75145721435547, 11.313281059265137, 12130.349609375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到宝剑战斗区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.25597381591797, 11.408829689025879, 12945.57421875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到童话区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121.14932250976562, 11.313281059265137, 14034.50390625)
  	end    
})
 
Tab:AddButton({
	Name = "传送到桃花区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.2142333984375, 11.813281059265137, 15131.861328125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到厨房区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.78338623046875, 21.76291847229004, 16204.9755859375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到下水道区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.36086654663086, 12.25178050994873, 17656.04296875)
  	end    
})
 
 
local Tab = Window:MakeTab({
	Name = "忍者传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
 Tab:AddButton({
	Name = "北约",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/USA868/USA--/main/%E5%BF%8D%E8%80%85%E5%8C%97%E7%BA%A6%E6%B1%89%E5%8C%96.txt.bak?token=GHSAT0AAAAAACB6LLQWNTHNEXWB573LYAQCZCMX6RA"))()
	end
})

local Section = Tab:AddSection({
	Name = "忍者传奇"
})
 
Tab:AddButton({
	Name = "传送到出生点",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到附魔岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到星界岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207.2932891845703, 2013.88037109375, 237.36672973632812)
  	end    
})
 
Tab:AddButton({
	Name = "传送到神秘岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)
  	end    
})
 
Tab:AddButton({
	Name = "传送到太空岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)
  	end    
})
 
Tab:AddButton({
	Name = "传送到冻土岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)
  	end    
})
 
Tab:AddButton({
	Name = "传送到永恒岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882812, 13680.037109375, 73.3861312866211)
  	end    
})
 
Tab:AddButton({
	Name = "传送到沙暴岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)
  	end    
})
 
Tab:AddButton({
	Name = "传送到雷暴岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)
  	end    
})
 
Tab:AddButton({
	Name = "传送到远古炼狱岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289062, 28256.294921875, 69.3790283203125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到午夜暗影岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到神秘灵魂岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)
  	end    
})
 
Tab:AddButton({
	Name = "传送到冬季奇迹岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)
  	end    
})
 
Tab:AddButton({
	Name = "传送到黄金大师岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539062, 52607.765625, 56.69411849975586)
  	end    
})
 
Tab:AddButton({
	Name = "传送到龙传奇岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)
  	end    
})
 
Tab:AddButton({
	Name = "传送到赛博传奇岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到天岚超能岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)
  	end    
})
 
Tab:AddButton({
	Name = "传送到混沌传奇岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
  	end    
})
 
Tab:AddButton({
	Name = "传送到灵魂融合岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)
  	end    
})
 
Tab:AddButton({
	Name = "传送到黑暗元素岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)
  	end    
})
 
Tab:AddButton({
	Name = "传送到内心和平岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)
  	end    
})
 
Tab:AddButton({
	Name = "传送到炽烈漩涡岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882812)
  	end    
})
 
Tab:AddButton({
	Name = "传送到35倍金币区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2938232421875, 91245.765625, 120.54232788085938)
  	end    
})
 
Tab:AddButton({
	Name = "传送到死亡宠物",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4593.21337890625, 130.87181091308594, 1430.2239990234375)
  	end    
})

local Tab = Window:MakeTab({
	Name = "DOORS",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "门",
	Callback = function()
loadstring(game:HttpGet("https://github.com/DocYogurt/free/raw/main/long"))()
end
})
Tab:AddButton({
	Name = "自动完成",
	Callback = function()
	loadstring(game:HttpGet('https://reddyhub.xyz/loader.html'))()
end
})
Tab:AddButton({
	Name = "不坤到什么名字",
	Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/poopdoors_edited/main/poopdoors_edited.lua"),true))()
end
})
Tab:AddButton({
	Name = "穿墙(无拉回)",
	Callback = function()
loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
end
})
Tab:AddButton({
	Name = "变身(阿巴怪提供)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
end
})
Tab:AddButton({
	Name = "微山2.3.2(依旧是阿巴怪提供)",
	Callback = function()
--微山doors 2.3.2(愚人节快乐)
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
end
})

local Tab = Window:MakeTab({
	Name = "蜂群模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "蜂",
	Callback = function()	
	loadstring(game:HttpGet("https://roblox.servegame.com/roblox_bss/chocmoc.lua"))()
		end
})

local Tab = Window:MakeTab({
	Name = "宠物X",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "云宠物",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/T34M-V0ID/cloud-hub/main/cloud"))()
	end
})

local Tab = Window:MakeTab({
	Name = "脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "操人脚本",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/bzmhRgKL'))()
	end
})
Tab:AddButton({
	Name = "动感星期五",
	Callback = function()	
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ShowerHead-FluxTeam/scripts/main/funky-friday-autoplay'))()
		end
})
Tab:AddButton({
	Name = "白脚本(已修复)",
	Callback = function()
_G["白脚本作者修狗"]="xdjhadgdsrfcyefjhsadcctyseyr6432478rudghfvszhxcaheey"loadstring(game:HttpGet(('https://raw.githubusercontent.com/wev666666/baijiaobengV2.0beta/main/%E7%99%BD%E8%84%9A%E6%9C%ACbeta'),true))() 
end
})
Tab:AddButton({
	Name = "踢人",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua'))()
	end
})

local about = Window:MakeTab({
    Name = "2b🖐️🖐️🖐️公告",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("我是女的吗？","")
about:AddParagraph("????????","")
about:AddParagraph("oc是女的","")
about:AddParagraph("但是人是男的！","")
about:AddParagraph("6","")
about:AddParagraph("我要被超！！！（？）","")
about:AddParagraph("以后会继续搞脚本👍","")
about:AddParagraph("世面上有很多都是改版陈脚本😋","")
about:AddParagraph("但是咱不是😋😋😋","")
about:AddParagraph("👁️👁️👁️","")
about:AddParagraph("😡😡😡😡","")
about:AddParagraph("🥵🥵🥵","")
about:AddParagraph("🤓🤓🤓","")
about:AddParagraph("🥵🥵🥵🥵🥵🥵🥵🥵","")
about:AddParagraph("🖐️🌝✌️","")