import QtQuick 2.0
import QtQuick.Controls 2.3

Item {
    id:playerCtrl
    property int previousButton: 0
    property int playPauseButton: 1
    property int nextButton: 2
    signal clicked(int buttonid)
    Image {
        id: playerCtlBg
        source: "qrc:/graphics/resources/playCtl_Bg.png"
        anchors.fill: parent;
    }
    Row
    {
        id:ctrlRow
        anchors.horizontalCenter: playerCtlBg.horizontalCenter
        anchors.verticalCenter: playerCtlBg.verticalCenter
        spacing: 3;
        ControlButton{
            width:playerCtlBg.width/5
            height: playerCtlBg.height/2;
            text: "\uf100"
            onClicked: playerCtrl.clicked(playerCtrl.previousButton)
        }

        ControlButton{
            width:playerCtlBg.width/3
            height: playerCtlBg.height/2;
            text: "\uf144" //For Pause text: "\uf28b"
            onClicked: playerCtrl.clicked(playerCtrl.playPauseButton)
        }

        ControlButton{
            width:playerCtlBg.width/5
            height:playerCtlBg.height/2;
            text: "\uf101"
            onClicked: playerCtrl.clicked(playerCtrl.nextButton)
        }
    }
}


