if IsValid(TESTP) then TESTP:Remove() end

local frame = vgui.Create("DFrame")
frame:SetSize(300, 300)
frame:SetTitle("DTileLayout Example")
frame:MakePopup()
frame:Center()

local layout = vgui.Create("DTileLayout", frame)
layout:SetBaseSize(32) -- Tile size
layout:Dock(FILL)

//Draw a background so we can see what it's doing
layout:SetDrawBackground(true)
layout:SetBackgroundColor(Color(0, 100, 100))

layout:MakeDroppable("unique_name") -- Allows us to rearrange children
layout:SetBorder(1000)
for i = 1, 32 do
	layout:Add(Label(" Label " .. i))
end

TESTP = frame
TESTT = layout