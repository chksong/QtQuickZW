import QtQuick 2.0

Item {
    id : thisRect
    width : parent.width  / 2
    height: parent.height / 2


    Canvas {
        id : canvas
        width : parent.width
        height: parent.height
        anchors.centerIn: parent


        onPaint:  {
            var ctx = canvas.getContext('2d') ;

            //createa rectanglepath
            ctx.rect(0,0,thisRect.width,thisRect.height)
//            //setupfillcolor
//            ctx.fillStyle="#FFF0A5"
//            //fillpath
//            ctx.fill()

            ctx.lineWidth=1
            ctx.strokeStyle="#468966"
            //strokepath
            ctx.stroke()

        }
    }

}
