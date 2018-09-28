import QtQuick 2.11
import QtQuick.Controls 2.4

Page {
    id: page

    FontLoader {
        id: fixedFont
        name: "Arial"
    }

    FontLoader {
        id: localFont
        source: "C:\Windows\Fonts\FZSTK.TTF"
    }

    Grid {
        id: grid
        x: 41
        y: 56
        width: 538
        height: 400
    }

    Button {
        id: button
        x: 147
        y: 193
        text: qsTr("宋")
        font.family: localFont.name
        font.pixelSize: 25
    }

    Button {
        id: button1
        x: 64
        y: 84
        text: qsTr("Button")
        font {
            family: localFont.name
            pixelSize: 25
        }
    }
}
