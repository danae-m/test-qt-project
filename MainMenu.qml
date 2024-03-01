import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page
{
    title: "Main Menu"
    //palette: AppThemes.current

    signal newRecipeClicked
    signal recipeBookClicked
    signal settingsClicked

    Rectangle
    {
        id: menuFrame
        width: 600
        height: 400
        color: "#fefce0"
        border.color: "#033076"
        anchors.centerIn: parent
        radius: 25

        ColumnLayout
        {
           anchors.centerIn: parent
           spacing: 10


            LargeButton
            {
                text: "New Recipe"
                buttonColor: "#fefce0"
                accentColor: "#033076"
                fontColor: "#033076"
                //font: Styles.pageFont

                onClicked: newRecipeClicked()
            }

            LargeButton
            {
                text: "Recipe Book"
                buttonColor: "#fefce0"
                accentColor: "#033076"
                fontColor: "#033076"
                //font: Styles.pageFont

                onClicked: recipeBookClicked()
            }

            LargeButton
            {
                text: "Settings"
                buttonColor: "#fefce0"
                accentColor: "#033076"
                fontColor: "#033076"
                //font: Styles.pageFont

                onClicked: settingsClicked()
            }
        }
    }
}
