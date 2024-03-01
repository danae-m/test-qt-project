cmake_minimum_required(VERSION 3.16)

project(RecipeManagerQQ VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appRecipeManagerQQ
    main.cpp
)

qt_policy(SET QTP0001 OLD)

qt_add_qml_module(appRecipeManagerQQ
    URI RecipeManagerQQ
    VERSION 1.0
    QML_FILES Main.qml
    QML_FILES AppThemes.qml
    QML_FILES LargeButton.qml
    QML_FILES SmallButton.qml
    QML_FILES AppThemesPrivate.qml
    QML_FILES MainMenu.qml
    QML_FILES Settings.qml
    QML_FILES TinyButton.qml
    QML_FILES PageTitle.qml
    QML_FILES Header.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appRecipeManagerQQ PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appRecipeManagerQQ
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appRecipeManagerQQ
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appRecipeManagerQQ
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
