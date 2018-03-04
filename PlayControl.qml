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
        source: "qrc:/graphics/resources/title_bg.PNG"
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
            height: playerCtlBg.height;
            //anchors.verticalCenter: ctrlRow
            text: "\uf100"
            fontcolor: "#f4c20d"
            fontsize: 60
            onClicked: playerCtrl.clicked(playerCtrl.previousButton)
        }

        ControlButton{
            id:playpauseCtrl
            width:playerCtlBg.width/3
            fontsize: 60
            height: playerCtlBg.height;
            text: "\uf144" //For Pause text: "\uf28b"
            fontcolor: "#3cba54"
            onClicked: {
                //TODO: This need to be in Sync with real player , for now okay
                if(playpauseCtrl.text==="\uf144")
                    playpauseCtrl.text="\uf28b"
                else
                    playpauseCtrl.text="\uf144"
                playerCtrl.clicked(playerCtrl.playPauseButton)
            }
        }

        ControlButton{
            width:playerCtlBg.width/5
            height: playerCtlBg.height;
            text: "\uf04d"
            fontcolor: "#db3236"
            fontsize: 60 //stop
            //onClicked: playerCtrl.clicked(playerCtrl.nextButton)
        }

        ControlButton{
            width:playerCtlBg.width/5
            height: playerCtlBg.height;
            text: "\uf101"
            fontcolor: "#f4c20d"
            fontsize: 60
            onClicked: playerCtrl.clicked(playerCtrl.nextButton)
        }
    }
}


