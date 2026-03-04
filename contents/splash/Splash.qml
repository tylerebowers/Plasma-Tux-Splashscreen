import QtQuick 2.15

Rectangle {
    id: root
    color: "black"
    property int stage

    readonly property int screenW: (typeof screenSize !== "undefined" && screenSize.width > 0) ? screenSize.width : Screen.width
    readonly property int screenH: (typeof screenSize !== "undefined" && screenSize.height > 0) ? screenSize.height : Screen.height
    width: screenW
    height: screenH

    Image {
        id: tux
        anchors.centerIn: parent
        source: Qt.resolvedUrl("images/tux.jpg")   // put tux.jpg in contents/splash/images/
        fillMode: Image.PreserveAspectFit
        smooth: true
        asynchronous: true
        width: parent.width * 0.15
        height: (implicitWidth > 0) ? width * (implicitHeight / implicitWidth) : width
    }
}
