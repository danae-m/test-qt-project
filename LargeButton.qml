import QtQuick

Rectangle
{
    id: largebutton
    property alias text: lblabel.text
    property alias font: lblabel.font
    property color buttonColor: "#000000"
    property color accentColor: "#000000"
    property color fontColor: "#000000"
    signal clicked

    width: 240
    height: 100
    implicitWidth: width
    implicitHeight: height
    color: largebutton.buttonColor
    border.color: largebutton.accentColor
    border.width: 2
    radius: 20

    Text {
        id: lblabel
        anchors.centerIn: parent
        text: "button"
        color: largebutton.fontColor
    }

    MouseArea {
            anchors.fill: parent
            onClicked: {
                largebutton.text = "Clicked!"
            }
        }
}
