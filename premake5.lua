project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    architecture "x64"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "imgui_tables.cpp"
    }
    
    filter "system:windows"
        systemversion "latest"
        staticruntime "On"
    
    filter "system:macosx"
		pic "On"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
        
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"