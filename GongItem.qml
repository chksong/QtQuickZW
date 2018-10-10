import QtQuick 2.4

Rectangle {
    width:  100
    height: 100

    Text {
        text: qsTr("text")
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked:  {
            Qt.quit()
        }
    }
}
