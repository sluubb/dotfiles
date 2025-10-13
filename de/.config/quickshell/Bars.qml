import QtQuick
import Quickshell

Variants {
    model: Quickshell.screens

    Loader {
	property ShellScreen modelData

	id: loader
	active: true

	PanelWindow {
	    screen: loader.modelData

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
