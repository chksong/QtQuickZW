import QtQuick 2.11
import QtQuick.Controls 2.4

Page {
    id: page

    FontLoader {
        id: fixedFont
        name: "Microsoft Sans Serif"
    }

    Grid {
        id: grid
        spacing: 8
        rows: 6
        columns: 3
        anchors.rightMargin: 5
        anchors.leftMargin: 4
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        anchors.fill: parent

        GongItem {

        }

        RoundButton {
            id: roundButton3
            text: "+"
        }
    }



    //    FontLoader {
    //        id: localFont
    //        source: "FZSTK.TTF"
    //    }
}
