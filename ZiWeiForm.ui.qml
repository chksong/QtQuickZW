import QtQuick 2.11
import QtQuick.Controls 2.4

Page {

   //第一行
    GongWeiItem {
        id: gong_si // 巳
        anchors.left: parent.left
        anchors.top: parent.top
    }

    GongWeiItem {
        id: gong_wu // 午
        anchors.left: gong_si.right
        anchors.top: parent.top
    }


    GongWeiItem {
        id: gong_wei // 未
        anchors.left: gong_wu.right
        anchors.top: parent.top
    }

    GongWeiItem {
        id: gong_shen // 申
        anchors.left: gong_wei.right
        anchors.top: parent.top
    }

    //第二行
    GongWeiItem {
        id: gong_chen // 辰
        anchors.left: parent.left
        anchors.top: gong_si.bottom
    }

    GongWeiItem {
        id: gong_you // 酉
        anchors.right: parent.right
        anchors.top: gong_shen.bottom
    }

    //第三行
    GongWeiItem {
        id: gong_mao // 卯
        anchors.left: parent.left
        anchors.top: gong_chen.bottom
    }

    GongWeiItem {
        id: gong_xu // 戌
        anchors.right: parent.right
        anchors.top: gong_you.bottom
    }

    // 第四行
    GongWeiItem {
        id: gong_yin // 寅
        anchors.left: parent.left
        anchors.bottom: parent.bottom
    }

    GongWeiItem {
        id: gong_chou // 丑
        anchors.left: gong_yin.right
        anchors.bottom: parent.bottom
    }

    GongWeiItem {
        id: gong_zi // 子
        anchors.left: gong_chou.right
        anchors.bottom: parent.bottom
    }

    GongWeiItem {
        id: gong_hai // 亥
        anchors.left: gong_zi.right
        anchors.bottom: parent.bottom
    }

    GongWeiCenter {
        id : mainCenter
        anchors.left: gong_wu.left
        anchors.top:  gong_wu.bottom
    }

}

