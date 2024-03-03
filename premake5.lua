project "Catch2"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "extras/catch_amalgamated.cpp",
        "extras/catch_amalgamated.hpp",
    }

    includedirs {
        "extras/"
    }

    defines {
    }

    links {
    }
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

        links {
        }

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
        --staticruntime "on"

        links {
        }