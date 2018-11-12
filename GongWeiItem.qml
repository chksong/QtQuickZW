import QtQuick 2.0
import QtQuick.Controls.Styles 1.4

Item {
    id : thisRect
    width : parent.width  / 4
    height: parent.height / 4

    Canvas {
        id : canvas
        width : parent.width
        height: parent.height
        anchors.centerIn: parent

        onPaint:  {
            var ctx = canvas.getContext('2d') ;

            //createa rectanglepath
            ctx.rect(0,0,thisRect.width,thisRect.height)
//           //setupfillcolor
//          ctx.fillStyle="#FFF0A5"
//           //fillpath
//          ctx.fill()

            //画边框
            ctx.lineWidth=1
            ctx.strokeStyle="#468966"





             ctx.stroke()
        }
    }

}
