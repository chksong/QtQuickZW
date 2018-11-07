import QtQuick 2.11
import QtQuick.Controls 2.4


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")

    FontLoader {
        id: fixedFont
        name: "Microsoft Sans Serif"
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }

        Page2Form {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
            font.family:  fixedFont.name
        }
        TabButton {
            text: qsTr("Page 2")
            font.family:  fixedFont.name
        }
    }
}
