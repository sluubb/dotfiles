import Quickshell

Scope {
    Variants {
	model: Quickshell.screens

	LazyLoader {
	    required property ShellScreen modelData

	    id: barLoader
	    active: true

	    PanelWindow {
		screen: barLoader.modelData

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
}
