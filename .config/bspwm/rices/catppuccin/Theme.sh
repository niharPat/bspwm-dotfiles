#!/usr/bin/env bash
#  ██████╗ ██╗ ██████╗███████╗
#  ██╔══██╗██║██╔════╝██╔════╝
#  ██████╔╝██║██║     █████╗  
#  ██╔══██╗██║██║     ██╔══╝  
#  ██║  ██║██║╚██████╗███████╗
#  ╚═╝  ╚═╝╚═╝ ╚═════╝╚══════╝

# Set bspwm configuration for catppuccin
set_bspwm_config() {
		bspc config border_width 2
		bspc config top_padding 35
		bspc config bottom_padding 0
		bspc config normal_border_color "#a5adcb"
		bspc config active_border_color "#ed8796"
		bspc config focused_border_color "#ed8796"
		bspc config presel_feedback_color "#7aa2f7"
		bspc config left_padding 0
		bspc config right_padding 0
		bspc config window_gap 10
}

# Reload terminal colors
set_term_config() {
		sed -i "$HOME"/.config/alacritty/fonts.yml \
		-e "s/family: .*/family: JetBrainsMono Nerd Font/g" \
		-e "s/size: .*/size: 10/g"
		
		sed -i "$HOME"/.config/alacritty/rice-colors.yml \
		-e "s/colors: .*/colors: *catppuccin/"
}

# Set compositor configuration
set_picom_config() {
		sed -i "$HOME"/.config/bspwm/picom.conf \
			-e "s/normal = .*/normal =  { fade = true; shadow = true; }/g" \
			-e "s/shadow-color = .*/shadow-color = \"#000000\"/g" \
			-e "s/corner-radius = .*/corner-radius = 0/g" \
			-e "s/\".*:class_g = 'Alacritty'\"/\"100:class_g = 'Alacritty'\"/g" \
			-e "s/\".*:class_g = 'FloaTerm'\"/\"100:class_g = 'FloaTerm'\"/g"
}

# Set dunst notification daemon config
set_dunst_config() {
		sed -i "$HOME"/.config/bspwm/dunstrc \
		-e "s/transparency = .*/transparency = 0/g" \
		-e "s/frame_color = .*/frame_color = \"#b7bdf8\"/g" \
		-e "s/frame_width = .*/frame-width = 1 /g" \
		-e "s/separator_color = .*/separator_color = \"#b7bdf8\"/g" \
		-e "s/font = .*/font = JetBrainsMono Nerd Font Medium 9/g" \
		-e "s/foreground='.*'/foreground='#c6a0f6'/g" \
		-e "s/offset = .*/offset = 20x60 /g" 
		
		sed -i '/urgency_low/Q' "$HOME"/.config/bspwm/dunstrc
		cat >> "$HOME"/.config/bspwm/dunstrc <<- _EOF_
				[urgency_low]
				timeout = 3
				background = "#24273a"
				foreground = "#b8c0e0"

				[urgency_normal]
				timeout = 6
				background = "#24273a"
				foreground = "#b8c0e0"

				[urgency_critical]
				timeout = 0
				background = "#24273a"
				foreground = "#b8c0e0"
_EOF_
}

# Launch the bar
launch_bars() {
		polybar -q cat-bar -c ${rice_dir}/config.ini &
}



### ---------- Apply Configurations ---------- ###

set_bspwm_config
set_term_config
set_picom_config
set_dunst_config
launch_bars
