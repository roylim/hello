#!/bin/bssh

adopt() {
	echo "adopt"
# 훓어보기
	defaults write -g QLPanelAnimationDuration -float 0;killall Finder

# launchpad
	defaults write com.apple.dock springboard-show-duration -int 0;killall Dock
	defaults write com.apple.dock springboard-hide-duration -int 0;killall Dock

# mission
	defaults write com.apple.dock expose-animation-duration -float 0;killall Dock

# save dialog
	defaults write -g NSWindowResizeTime -float 0.01

# popup
	defaults write -g NSAutomaticWindowAnimationsEnabled -bool FALSE
}

cancel() {
	echo "cancel"
# 훓어보기
	defaults delete -g QLPanelAnimationDuration;killall Finder

# launchpad
	defaults delete com.apple.dock springboard-show-duration
	defaults delete com.apple.dock springboard-hide-duration;killall Dock


# mission
	defaults delete com.apple.dock expose-animation-duration;killall Dock

# save dialog
	defaults delete -g NSWindowResizeTime

# popup
	defaults delete -g NSAutomaticWindowAnimationsEnabled
}


adopt
