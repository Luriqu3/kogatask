








































































































































































local loadPanelName = "Restart"
local cores = {"pink", "white", "green", "red", "blue"}
local cores2 = 0

local ui = setupUI([[
Panel
  height: 20

  Button
    id: editLoad
    color: yellow
    font: verdana-11px-rounded
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    height: 23
    text: Restart
    tooltip: Clique Para Recarregar

]], parent)

ui.editLoad.onClick = function(widget)
    reload()
end

macro(250, function()
    cores2 = cores2 == #cores and 1 or cores2 + 1
    ui.editLoad:setColor(cores[cores2])
end)

UI.Separator()

local version = " RIQUE"
local nick = "Tasker".. version
local Nome = UI.Label(nick)

modules.game_textmessage.displayGameMessage("["..nick.."] BEM AO AUTO TASKER RIQUE!")

local cores = {"green", "red", "black", "green", "orange"}
local cores2 = 0
macro(50, function()
  cores2 = cores2==#cores and 0 or cores2+1 -- s2 <3
  Nome:setColor(cores[cores2]) -- s2 <3
end)

UI.Separator()

local AOL_ID = 11841

macro(3000, "Comprar Aol", function()
  if getFinger() and getFinger():getId() == AOL_ID then return end
  say("!bol")
end)




local riquescripts = addLabel("COMBO >:)", "COMBO >:)")
riquescripts:setColor("orange")


macro(250, "Follow Atk", function()
   if g_game.isOnline() and g_game.isAttacking() then
         g_game.setChaseMode(1)
           end
           end)


macro(1000, "Open bag", function()
    bpItem = getBack()
    bp = getContainer(0)

    if not bp and bpItem ~= nil then
        g_game.open(bpItem)
    end

end)





macro(200, "Combo",  function()
if g_game.isAttacking() then
say(storage.ComboText)
say(storage.Combo1Text)
say(storage.Combo2Text)
say(storage.Combo3Text)
say(storage.Combo4Text)
end

end)
addTextEdit("ComboText", storage.ComboText or "Magia 200", function(widget, text) 
storage.ComboText = text
end)
addTextEdit("Combo1Text", storage.Combo1Text or "Koga Rage", function(widget, text) storage.Combo1Text = text
end)
addTextEdit("Combo2Text", storage.Combo2Text or "Combo impact", function(widget, text) storage.Combo2Text = text
end)
addTextEdit("Combo3Text", storage.Combo3Text or "Solar Brust", function(widget, text) storage.Combo3Text = text
end)
addTextEdit("Combo4Text", storage.Combo4Text or "strong kamehameha", function(widget, text) storage.Combo4Text = text
end)











local riquescripts2 = addLabel("BUFF'S :)", "BUFF'S :)")
riquescripts2:setColor("orange")





macro(10000, function()
 say(storage.buff)
end)


UI.Label('Buff1')
addTextEdit("buff", storage.buff or "buff", function(widget, text) storage.buff = text
end)


UI.Label('Buff2')
macro(10000, function()
say(storage.buff2)
end)
addTextEdit("buff2", storage.buff2 or "buff2", function(widget, text) storage.buff2 = text
end)
        

local riquescripts2 = addLabel("Mystic :p", "Mystic :p")
riquescripts2:setColor("orange")

local castBelowHp = 50 

mysticdf = macro(100, "Defense/Kai",  function()
  if (hppercent() < castBelowHp and not hasManaShield()) then
    say('Mystic Defense') 
  end
  if (hppercent() >= castBelowHp and hasManaShield()) then
    say('Mystic Kai')
  end
end)

local panelName = "codPan"
local codPanel = setupUI([[
Panel
  id: healingPanel
  height: 50
  margin-top: 3

  Label
    id: label2
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    margin: 0 5 0 5
    text-align: center

  HorizontalScrollBar
    id: scroll1
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: prev.bottom
    margin-top: 5
    minimum: 1
    maximum: 100
    step: 1

]])

if not storage[panelName] then
    storage[panelName] = {
        hpPercent = castBelowHp 
    }
end
    
codPanel.scroll1.onValueChange = function(scroll, value)
  castBelowHp = value 
  storage[panelName].hpPercent = value 
  codPanel.label2:setText("Mystic%" .. castBelowHp)
end


codPanel.scroll1:setValue(storage[panelName].hpPercent or castBelowHp)






local configKoga = {
    ['\084\097\115\107\049'] = {cave = '\084\097\115\107\049'},
    ['\084\097\115\107\050'] = {cave = '\084\097\115\107\050'},
    ['\084\097\115\107\051'] = {cave = '\084\097\115\107\051'},
    ['\084\097\115\107\052'] = {cave = '\084\097\115\107\052'},
    ['\084\097\115\107\053'] = {cave = '\084\097\115\107\053'},
    ['\084\097\115\107\054'] = {cave = '\084\097\115\107\054'},
    ['\084\097\115\107\055'] = {cave = '\084\097\115\107\055'},
    ['\084\097\115\107\056'] = {cave = '\084\097\115\107\056'},
    ['\084\097\115\107\057'] = {cave = '\084\097\115\107\057'},
    ['\084\097\115\107\120'] = {cave = '\084\097\115\107\120'},
    ['\084\097\115\107\120\049'] = {cave = '\084\097\115\107\120\049'},
    ['\084\097\115\107\120\050'] = {cave = '\084\097\115\107\120\050'},
    ['\084\097\115\107\120\051'] = {cave = '\084\097\115\107\120\051'},
    ['\084\097\115\107\120\052'] = {cave = '\084\097\115\107\120\052'},
    ['\084\097\115\107\120\053'] = {cave = '\084\097\115\107\120\053'},
    ['\084\097\115\107\122\054'] = {cave = '\084\097\115\107\122\054'},
    ['\084\097\115\107\122\055'] = {cave = '\084\097\115\107\122\055'},
}



onTalk(function(a1, a2, a3, a4, a5, a6)
    if a1 ~= player:getName() then return; end
    if not string.find(a4, '\084\097\115\107') then return; end  
    local b1 = string.lower(a4)
    for b2, b3 in pairs(configKoga) do
        if b1:find(string.lower(b2)) then
            CaveBot.setOff()
            storage._configs.cavebot_configs.selected = b3.cave
            CaveBot.setOn()
        end
    end
end)




onTextMessage(function(c1, c2)
    if not c2:lower():find('\116\101\114\109\105\110\111\117\032\097') then return; end  
    CaveBot.gotoLabel('Voltar')
end)



onTextMessage(function(d1, d2)
    if not d2:lower():find('\114\101\099\101\098\101\117') then return; end  
    CaveBot.gotoLabel('entregou')
end)



setDefaultTab("RIQUE")







UI.Button("M A C R O S", function(newText)
UI.MultilineEditorWindow(storage.ingame_hotkeys or "", {title="RIQUEZIN!", description="Discord: riquezerah"}, function(text)
      storage.ingame_hotkeys = text
      reload()
    end)
  end)
  
  
  for _, scripts in pairs({storage.ingame_hotkeys}) do
    if type(scripts) == "string" and scripts:len() > 3 then
      local status, result = pcall(function()
        assert(load(scripts, "ingame_editor"))()
      end)
      if not status then 
        error("Ingame edior error:\n" .. result)
      end
    end
  end
