import QtQuick
import QtQuick.Window
import QtQuick.Controls
//import Launch

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "#717171"
    title: qsTr("Hello World")

    Rectangle {
        id: sideMenu
        color: "#4f4f4f"
        z: 1
        x: 0
        y: 0
        width: parent.width / 4
        height: parent.height

        Component.onCompleted: {
        }

        Column {
            id: sideMenuCol
            anchors.fill: parent
            spacing: 5
            padding: 5

            Rectangle {
                id: rectangle
                width: parent.width
                height: 64
                color: "#141414"
                radius: 10
                anchors.left: parent.left
                z: 0
                anchors.leftMargin: 10

                Text {
                    id: text1
                    color: "#edffa7"
                    text: qsTr("Launch")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 18
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Rectangle {
                id: rectangle1
                width: parent.width
                height: 64
                color: "#434343"
                radius: 10
                anchors.left: parent.left
                z: 0
                Text {
                    color: "#edffa7"
                    text: qsTr("Manuever")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 18
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                anchors.leftMargin: 10
            }

            Rectangle {
                id: rectangle2
                width: parent.width
                height: 64
                color: "#434343"
                radius: 10
                anchors.left: parent.left
                z: 0
                Text {
                    color: "#edffa7"
                    text: "Mission Control"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WordWrap
                    textFormat: Text.RichText
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                anchors.leftMargin: 10
            }
        }
    }

    Rectangle {
        id: background
        color: "#141414"
        anchors.left: sideMenu.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 5
        anchors.leftMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 5
        z: 1

        Item {
            id: viewContainer
            anchors.fill: parent
            z: 1
        }
    }
}
