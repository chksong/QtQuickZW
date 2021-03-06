import QtQuick 2.4

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


    Canvas {
        id : canvas
        width : parent.width
        height: parent.height
        anchors.centerIn: parent

        onPaint:  {
            var ctx = canvas.getContext('2d') ;

            //createa rectanglepath
            ctx.rect(0,0,thisRect.width,thisRect.height)
            //setupfillcolor
            ctx.fillStyle="#FFF0A5"
            //fillpath
            ctx.fill()

            ctx.lineWidth=0.5
            ctx.strokeStyle="#468966"
            //strokepath
            ctx.stroke()

        }
    }
}
