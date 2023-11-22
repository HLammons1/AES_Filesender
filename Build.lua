-- premake5.lua
workspace "Filesender project"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Filesender_App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Core"
	include "Filesender_Core/Build-Core.lua"
group ""

include "Filesender_App/Build-App.lua"