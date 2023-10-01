import QtQuick
import QtQuick.Controls 6.3

Item {
    id: root
    property int itemWidth: 400
    property int itemHeight: 300

    width: itemWidth
    height: itemHeight

    Rectangle {
        id: rectangle
        color: "#868686"
        anchors.fill: parent

        Column {
            id: column
            width: 200
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            anchors.leftMargin: 0

            Row {
                id: row
                width: parent.width
                height: 35
                topPadding: 5
                leftPadding: 5
                spacing: 5

                Text {
                    id: text1
                    text: qsTr("Ap [km]:")
                    anchors.top: sbxApHeight.top
                    anchors.bottom: sbxApHeight.bottom
                    font.pixelSize: 14
                    verticalAlignment: Text.AlignVCenter
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                }

                SpinBox {
                    id: sbxApHeight
                    editable: true
                    to: 999999
                    font.pointSize: 10
                }
            }

            Row {
                id: row1
                width: parent.width
                height: 35
                leftPadding: 5
                spacing: 5
                topPadding: 5
                Text {
                    text: qsTr("Inc: ")
                    anchors.top: sbxApHeight.top
                    anchors.bottom: sbxApHeight.bottom
                    font.pixelSize: 14
                    verticalAlignment: Text.AlignVCenter
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                }

                SpinBox {
                    editable: true
                    to: 90
                    font.pointSize: 10
                }
            }
        }
    }
}
