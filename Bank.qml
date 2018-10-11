import QtQuick 2.0

Rectangle {
    id : thisRect
    width : parent.width  / 4
    height: parent.height / 4



    MouseArea {
        anchors.fill: parent
        onClicked:  {
            Qt.quit()
        }
    }
}
