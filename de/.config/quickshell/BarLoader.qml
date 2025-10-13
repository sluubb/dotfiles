import QtQuick
import Quickshell

Variants {
    model: Quickshell.screens

    Loader {
	required property ShellScreen modelData

	id: bar
	active: true

	PanelWindow {
	    screen: bar.modelData

	    anchors {
		top: true
		left: true
		right: true
	    }

	    implicitHeight: 40

	    color: "transparent"

	    BarContent {}
	}
    }
}
