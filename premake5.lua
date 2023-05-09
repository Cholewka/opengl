workspace "OpenGL"
    configurations { "Debug", "Release" }
    platforms { "Win64" }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "OpenGL"
    kind "ConsoleApp"
    language "C++"

    targetdir ("bin/" .. outputdir)
    objdir ("bin-int/" .. outputdir)

    files { "src/**.h", "src/**.cpp" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"

    filter "platforms:Win64"
        system "Windows"
        architecture "x86_64"