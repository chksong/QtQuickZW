import QtQuick 2.0
import QtQuick.Controls.Styles 1.4

Item {
    id : thisRect
    width : parent.width  / 4
    height: parent.height / 4

    //干支
    Text {
        id:ganzhi
        text: "戊戌"
        x : parent.width  /16
        width: parent.width  /8

        y : parent.height *2/3
        height: parent.height/3

        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.WordWrap
    }


    Canvas {
        id : canvas
        width : parent.width
        height: parent.height
        anchors.centerIn: parent

        onPaint:  {
            var ctx = canvas.getContext('2d') ;

            //createa rectanglepath
            ctx.rect(0,0,width, height)
//            ctx.fillStyle="#FFF0A5"
//            ctx.fill()

            //画最外边框
            ctx.lineWidth=1
            ctx.strokeStyle="red"
            ctx.stroke()

            //画线条
            ctx.strokeStyle="black"
            ctx.beginPath()
            ctx.moveTo(0,  height*2/3)
            ctx.lineTo(width,height*2/3)

            ctx.moveTo(width/4 ,  height*2/3)
            ctx.lineTo(width/4,height)

            ctx.moveTo(width*3/4 ,  height*2/3)
            ctx.lineTo(width*3/4,   height)

            ctx.moveTo(width/4 ,  height*5/6)
            ctx.lineTo(width*3/4, height*5/6)
            ctx.closePath()

            ctx.fillStyle = "steelblue"
           // ctx.fill()
            ctx.stroke()
        }
    }

}
