import QtQuick 2.11
import QtQuick.Window 2.11

import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3

import QtQuick.Controls 1.4
import QtQuick.Controls 2.4




ApplicationWindow {
    visible: true
    width: 640
    height: 600
    title: qsTr("Tabs")

    MessageDialog {
          id: aboutDialog
          icon: StandardIcon.Information
          title: qsTr("About")
          text: "Qt Quick UI Forms"
          informativeText: qsTr("This example demonstrates how to separate the implementation of an application from the UI using ui.qml files.")
      }


     Dialog {
            id: dateDialog
            title: "Choose a date"
            standardButtons: StandardButton.Save | StandardButton.Cancel

            onAccepted: console.log("Saving the date " +
                calendar.selectedDate.toLocaleDateString())

            Calendar {
                id: calendar
                onDoubleClicked: dateDialog.click(StandardButton.Save)
            }
        }

      Action {
          id: copyAction
          text: qsTr("&Copy")
          shortcut: StandardKey.Copy
          enabled: (!!activeFocusItem && !!activeFocusItem["copy"])
          onTriggered: activeFocusItem.copy()
      }

      Action {
          id: cutAction
          text: qsTr("Cu&t")
          shortcut: StandardKey.Cut
          enabled: (!!activeFocusItem && !!activeFocusItem["cut"])
          onTriggered: activeFocusItem.cut()
      }

      Action {
          id: pasteAction
          text: qsTr("&Paste")
          shortcut: StandardKey.Paste
          enabled: (!!activeFocusItem && !!activeFocusItem["paste"])
          onTriggered: activeFocusItem.paste()
      }

      menuBar: MenuBar {
          Menu {
              title: qsTr("&File")
              MenuItem {
                  text: qsTr("Test...")
                  onTriggered: dateDialog.open()
              }
              MenuItem {
                  text: qsTr("E&xit")
                  onTriggered: Qt.quit()
              }
          }
          Menu {
              title: qsTr("&Edit")
              MenuItem {
                  action: cutAction
              }
              MenuItem {
                  action: copyAction
              }
              MenuItem {
                  action: pasteAction
              }
          }

          Menu {
              title: qsTr("&Help")
              MenuItem {
                  text: qsTr("About...")
                  onTriggered: aboutDialog.open()
              }
          }
      }



    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }

        ZiWeiForm {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }


        TabButton {
            text: qsTr("Page 2")

        }
    }
}
