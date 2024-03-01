import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    title: "Main Menu"
    palette: AppThemes.current

    Rectangle {
        id: menuFrame
        width: 600
        height: 400
        color: AppThemes.current.window
        anchors.centerIn: parent
        radius: 25

        ColumnLayout {
           anchors.centerIn: parent
           spacing: 10


            LargeButton
            {
                text: "New Recipe"
                buttonColor: AppThemes.current.button
                accentColor: AppThemes.current.mid
                fontColor: AppThemes.current.buttonText
                //font: Styles.pageFont

                onClicked:
                {

                }
            }
        }
    }
}
