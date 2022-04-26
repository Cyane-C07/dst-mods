name = "Wetzel"

version = "1.0.0" 

description = "Objectively the best character in Don't Starve Together."
author = "petrifyyoursoul & Cyane"

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the url
forumthread = "/files/file/950-extended-sample-character/"
api_version = 10

dst_compatible = true

-- Not compatible with Don't Starve
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

-- Character mods are required by all clients
all_clients_require_mod = true

priority = -1000.025802

icon_atlas = "images/modicon.xml"
icon = "modicon.tex"

local workshop_mod = folder_name and folder_name:find("workshop-") ~= nil

if not workshop_mod then
	description = description.."\nDeveloper version"
end

server_filter_tags = {
	"character",
	"wetzel",
}

configuration_options = {}