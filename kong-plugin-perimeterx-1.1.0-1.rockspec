-- This file was automatically generated for the LuaDist project.

package = "kong-plugin-perimeterx"

version = "1.1.0-1"

supported_platforms = {"linux", "macosx"}
-- LuaDist source
source = {
  tag = "1.1.0-1",
  url = "git://github.com/LuaDist-testing/kong-plugin-perimeterx.git"
}
-- Original source
-- source = {
--     url = "git://github.com/PerimeterX/perimeterx-kong-plugin.git",
--     tag = "v1.1.0"
-- }

description = {
  summary = "PerimeterX Kong plugin",
  homepage = "http://www.perimeterx.com",
  license = "MIT/PerimeterX"
}

dependencies = {
    "perimeterx-nginx-plugin == 2.13"
}

local pluginName = "perimeterx"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}