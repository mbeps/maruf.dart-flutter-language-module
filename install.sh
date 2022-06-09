#^ DEPENDENCIES
function title() {
	# clear
	echo $1
}

function installExtensions() {
	extensions=$1
	for extension in "${extensions[@]}"; do
		code --install-extension $extension
	done
}

function dart() {
	title "Dart (including Flutter)"
	
	extensions=(
		"Dart-Code.dart-code" 							# Dart 
		"Dart-Code.flutter" 							# Flutter
	)
	installExtensions "${extensions[@]}"
}