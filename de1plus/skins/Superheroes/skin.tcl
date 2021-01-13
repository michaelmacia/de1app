
##############################################################################################################################################################################################################################################################################
# DECENT ESPRESSO EXAMPLE SKIN FOR NEW SKIN DEVELOPERS
##############################################################################################################################################################################################################################################################################

# you should replace the JPG graphics in the 2560x1600/ directory with your own graphics. 
source "[homedir]/skins/default/standard_includes.tcl"


# the standard behavior when the DE1 is doing something is for tapping anywhere on the screen to stop that. This "source" command does that.
source "[homedir]/skins/default/standard_stop_buttons.tcl"


# example of loading a custom font (you need to indicate the TTF file and the font size)
#load_font "Northwood High" "[skin_directory]/sample.ttf" 60
#add_de1_text "off" 1280 500 -text "An important message" -font {Northwood High} -fill "#2d3046" -anchor "center"


##############################################################################################################################################################################################################################################################################
# text and buttons to display when the DE1 is idle

load_font "kkdspk" "[skin_directory]/kkdspk.ttf" 20

# these 3 text labels are for the three main DE1 functions, and they X,Y coordinates need to be adjusted for your skin graphics
add_de1_text "off" 426 1355  -text [translate "ESPRESSO"] -font {kkdspk} -fill "#000000" -anchor "center" 
add_de1_text "off" 1017 1412  -text [translate "STEAM"] -font {kkdspk} -fill "#000000" -anchor "center" 
add_de1_text "off" 1496 1455 -text [translate "WATER"] -font {kkdspk} -fill "#000000" -anchor "center" 
add_de1_text "off" 2223 1428  -text [translate "SETTINGS"] -font {kkdspk} -fill "#000000" -anchor "center" 


# these 3 buttons are rectangular areas, where tapping the rectangle causes a major DE1 action (steam/espresso/water)
add_de1_button "off" "say [translate {espresso}] $::settings(sound_button_in);start_espresso" 45 440 615 1555
add_de1_button "off" "say [translate {steam}] $::settings(sound_button_in);start_steam" 650 440 1245 1555
add_de1_button "off" "say [translate {water}] $::settings(sound_button_in);start_water" 1275 440 1892 1555


# these 2 buttons are rectangular areas for putting the machine to sleep or starting settings.  Traditionally, tapping one of the corners of the screen puts it to sleep.
add_de1_button "off" "say [translate {sleep}] $::settings(sound_button_in);start_sleep" 1340 70 2280 360
add_de1_button "off" {show_settings} 1930 455 2500 1555

##############################################################################################################################################################################################################################################################################
