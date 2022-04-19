name = " Wayne"

version = "1.0.2"
version_compatible = "1.0.2"

description = "Version: "..version
author = "POWD3d4, CunningFox"

forumthread = ""
api_version = 10

dst_compatible = true
all_clients_require_mod = true

priority = -1000.025802

icon_atlas = "images/modicon.xml"
icon = "modicon.tex"

local workshop_mod = folder_name and folder_name:find("workshop-") ~= nil

if not workshop_mod then
	description = description.."\nDeveloper version"
end

server_filter_tags = {
	"wayne",
}

local opt_EnabledDisabled = 
{
	{description = "Enabled", data = true},
	{description = "Disabled", data = false},
}
local opt_Empty = {{description = "", data = 0}}
local function Title(title, hover)
	return {
		name=title,
		--label=title,
		hover=hover,
		options=opt_Empty,
		default=0,
	}
end
local SEPARATOR = Title("")

configuration_options =
{
	Title("General", ""),

	{
		name = "wayne_font_shake",
		label = "Enable Wayne's shaking font?",
		options = opt_EnabledDisabled, 
		default = true,
	},
	
	Title("Mods in Menu", ""),

	{
		name = "wayne_main_menu",
		label = "Enable custom main menu banner?",
		options = opt_EnabledDisabled, 
		default = true,
	},
}