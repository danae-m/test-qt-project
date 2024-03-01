import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window
{
    width: 1280
    height: 720
    visible: true
    title: qsTr("test")

    Loader
    {
        id: pageLoader
        anchors.fill: parent
        source: "MainMenu.qml"
    }

    Connections
    {
        target: pageLoader.item
        onSettingsClicked: pageLoader.source = "Settings.qml"
    }
}
