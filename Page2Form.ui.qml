import QtQuick 2.11
import QtQuick.Controls 2.4

Page {
    width: 600
    height: 400

    FontLoader {
        id: fixedFont
        name: "Microsoft Sans Serif"
    }

    FontLoader {
        id: webFont
        source: "http://www.princexml.com/fonts/steffmann/Starburst.ttf"
    }

    header: Label {
        text: qsTr("Page 2")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        font.family: fixedFont.name
    }

    Label {
        text: qsTr("You are on Page 2.")
        anchors.centerIn: parent
        font.family: fixedFont.name
    }


}
