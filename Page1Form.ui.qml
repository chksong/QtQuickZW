import QtQuick 2.11
import QtQuick.Controls 2.4

Page {
    id: page

    FontLoader {
        id: fixedFont
        name: "Microsoft Sans Serif"
    }

    Grid {
     //   width: parent.width ;

        id: grid
      //  spacing: 8
        rows: 4
        columns: 4
        anchors.rightMargin: 5
        anchors.leftMargin: 4
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        anchors.fill: parent

        GongItem {
        }

        GongItem {

        }

        GongItem {

        }

        GongItem {

        }

        GongItem {
        }

        Bank {
        }

        Bank {
        }

        GongItem {

        }

        GongItem {
        }

        Bank {
        }

        Bank {
        }


        GongItem {

        }


        GongItem {

        }

        GongItem {

        }
        GongItem {

        }
        GongItem {

        }
    }



    //    FontLoader {
    //        id: localFont
    //        source: "FZSTK.TTF"
    //    }
}
