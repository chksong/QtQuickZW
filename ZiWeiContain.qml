import QtQuick 2.0

Item {
    property int curSelect
    property int lastSelect:-1
    property var keyDict

    //第一行
     GongWeiItem {
         id: gong_si // 巳
         tag:6
         anchors.left: parent.left
         anchors.top: parent.top
     }

     GongWeiItem {
         id: gong_wu // 午
         tag:7
         anchors.left: gong_si.right
         anchors.top: parent.top
     }


     GongWeiItem {
         id: gong_wei // 未
         tag:8
         anchors.left: gong_wu.right
         anchors.top: parent.top
     }

     GongWeiItem {
         id: gong_shen // 申
         tag:9
         anchors.left: gong_wei.right
         anchors.top: parent.top
     }

     //第二行
     GongWeiItem {
         id: gong_chen // 辰
         tag:5
         anchors.left: parent.left
         anchors.top: gong_si.bottom
     }

     GongWeiItem {
         id: gong_you // 酉
         tag:10
         anchors.right: parent.right
         anchors.top: gong_shen.bottom
     }

     //第三行
     GongWeiItem {
         id: gong_mao // 卯
         tag:4
         anchors.left: parent.left
         anchors.top: gong_chen.bottom
     }

     GongWeiItem {
         id: gong_xu // 戌
         tag:11
         anchors.right: parent.right
         anchors.top: gong_you.bottom
     }

     // 第四行
     GongWeiItem {
         id: gong_yin // 寅
         tag:3
         anchors.left: parent.left
         anchors.bottom: parent.bottom
     }

     GongWeiItem {
         id: gong_chou // 丑
         tag:2
         anchors.left: gong_yin.right
         anchors.bottom: parent.bottom
     }

     GongWeiItem {
         id: gong_zi // 子
         tag:1
         anchors.left: gong_chou.right
         anchors.bottom: parent.bottom
     }

     GongWeiItem {
         id: gong_hai // 亥
         tag:12
         anchors.left: gong_zi.right
         anchors.bottom: parent.bottom
     }

     GongWeiCenter {
         id : mainCenter
         anchors.left: gong_wu.left
         anchors.top:  gong_wu.bottom
     }

     Component.onCompleted: {
         gong_zi.sigSelected.connect(forwardclick)
         gong_chou.sigSelected.connect(forwardclick)
         gong_yin.sigSelected.connect(forwardclick)
         gong_mao.sigSelected.connect(forwardclick)

         gong_chen.sigSelected.connect(forwardclick)
         gong_si.sigSelected.connect(forwardclick)
         gong_wu.sigSelected.connect(forwardclick)
         gong_wei.sigSelected.connect(forwardclick)

         gong_shen.sigSelected.connect(forwardclick)
         gong_you.sigSelected.connect(forwardclick)
         gong_xu.sigSelected.connect(forwardclick)
         gong_hai.sigSelected.connect(forwardclick)
     }

     function forwardclick(tag) {
         gong_zi.unSetSelect(tag)
         gong_chou.unSetSelect(tag)
         gong_yin.unSetSelect(tag)
         gong_mao.unSetSelect(tag)

         gong_chen.unSetSelect(tag)
         gong_si.unSetSelect(tag)
         gong_wu.unSetSelect(tag)
         gong_wei.unSetSelect(tag)

         gong_shen.unSetSelect(tag)
         gong_you.unSetSelect(tag)
         gong_xu.unSetSelect(tag)
         gong_hai.unSetSelect(tag)
     }
}
