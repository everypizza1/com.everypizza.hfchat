import QtQuick 2.3
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.5 as QQC2
import org.kde.kirigami 2.4 as Kirigami

Kirigami.FormLayout {
    id: page

    property alias cfg_downloadLocation: fileDialog.folder
    property alias cfg_sendOnEnter: sendOnEnter.checked
	property alias cfg_matchTheme: matchTheme.checked
	property alias cfg_allowClipboardAccess: allowClipboardAccess.checked

	Layout.fillHeight:true

    QQC2.CheckBox {
        id: sendOnEnter
        text: i18n("Send On Enter")
    }
    QQC2.Label {
		font.pixelSize: 12
		text:i18n("When checked pressing Enter will send the query.");
	}
	QQC2.Label {
		font.pixelSize: 8
		font.italic: true
		text:i18n("For now please reload the page with the 'Reload' Button after changing this configuration.");
	}
	
	 QQC2.CheckBox {
        id: matchTheme
        text: i18n("Match OS theme")
    }

	QQC2.CheckBox {
        id: allowClipboardAccess
        text: i18n("Allow ChatGPT system clipboard access")
    }
    QQC2.Label {
		font.pixelSize: 8
		font.italic: true
		text:i18n("This is enabled by default to allow for quick code/recipe/etc but can be disabled if you are worried about the site examining your system clipboard");
	}

	QQC2.Button {
        id: downloadLocation
        text: i18n("Select Download Path : %1 ", fileDialog.folder )
		onClicked:{
			fileDialog.open();
		}
    }
    QQC2.Label {
		font.pixelSize: 8
		font.italic: true
		text:i18n("Select the directory to download files to.");
	}

	QQC2.Label {
		font.pixelSize: 12
		text:i18n("This extention is based of of the ChatGPT Plasmoid by dark-eye.");
	}

	FileDialog {
		id:fileDialog
		selectFolder:true;
	}

}
