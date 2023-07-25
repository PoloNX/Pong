add_rules("mode.debug", "mode.release")

add_repositories("nazara-repo https://github.com/NazaraEngine/xmake-repo.git")
add_requires("nazaraengine", {debug = is_mode("debug")})

set_runtimes(is_mode("debug") and "MDd" or "MD")
set_languages("c++20")

target("Pong")
    add_files("src/**.cpp")
    add_headerfiles("src/**.hpp")
    add_packages("nazaraengine", {components = {"graphics"}})