import QtQuick
import QtQuick.Controls

QtObject
{
    id: appThemes

    property Palette current: classic

    readonly property Palette classic: Palette
    {
        button: "#fefce0"
        buttonText: "#033076"
        mid: "#033076"
        window: "#fefce0"
        windowText: "#033076"
    }
}
