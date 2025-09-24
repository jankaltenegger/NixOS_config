import "../../widgets"
import "../../config"
import Quickshell
import Quickshell.Wayland

Variants {
    model: Quickshell.screens

    WlrLayershell {
        id: win

        property var modelData
        property bool vertical: false

        screen: modelData
        namespace: "niflheim-bar"

        anchors {
            top: true
            left: true
            right: !vertical
            bottom: vertical
        }

        width: contents.implicitWidth + (vertical ? Appearance.padding.normal * 2 : 0)
        height: contents.implicitWidth + (vertical ? 0 : Appearance.padding.smaller * 2)

        Box {
            id: contents

            vertical: win.vertical
            spacing: Appearance.spacing.larger
            x: Appearance.padding.normal
            y: vertical ? Appearance.padding.normal : Appearance.padding.smaller

            OsIcon {}

            Clock {
                vertical: win.vertical
            }

            ActiveWindow {
                vertical: win.vertical
              }
        }
    }
}
