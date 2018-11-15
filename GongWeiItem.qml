import QtQuick 2.0
import QtQuick.Controls.Styles 1.4

Item {
    id : root
    width : parent.width  / 4
    height: parent.height / 4

    signal sigSelected(int tag)
    property bool isSelect : false
    property int tag

    MouseArea {
        anchors.fill: parent
        onClicked:  {

           if(false == isSelect) {
               isSelect = true
               root.sigSelected(tag)
           }
           else {
               isSelect = false
           }

           canvas.requestPaint()
   //      console.log("after  .." ,tag, isSelect)
        }
    }

    Canvas {
        id : canvas
        width : parent.width
        height: parent.height
        anchors.centerIn: parent

        onPaint:  {
      //      console.log("cccccccc")
            var ctx = canvas.getContext('2d') ;
            ctx.reset();
            ctx.rect(0,0,width, height)

            //createa rectanglepath
            if(isSelect) {
                ctx.fillStyle="#FFF0A5"
                ctx.fill()
            }


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


    function unSetSelect( tmptag ) {
       if(tmptag !== tag &&  isSelect) {
           isSelect = false ;
           canvas.requestPaint() ;
       }
    }

    function setSelect() {
        isSelect = true ;
        canvas.requestPaint() ;
    }


    //干支
    Text {
        id: label_ganzhi
        text: "戊戌"
        x : parent.width  /16
        width: parent.width  /8

        y : parent.height *2/3
        height: parent.height/3

        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.WordWrap
    }
}
