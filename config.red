; polybar/bar-bottom.polybar
[bar/bottom]
monitor = ${env:MONITOR:}
width = 100%
height = 23
offset-y = 0
bottom = true

fixed-center = true

font-0 = FuraCode Nerd Font Mono:style=medium:size=12;3
font-1 = FuraCode Nerd Font Mono:style=italic:size=12;3
font-2 = FuraCode Nerd Font Mono:style=medium:size=16;3

border-size = 8
border-color = ${colors.background}
line-size = 0
padding-left = 0
padding-right = 0
module-margin-left = 0
module-margin-right = 0
background = ${colors.background}
foreground = ${colors.background}

modules-left = i3
modules-center = 
modules-right =  filesystem memory cpu temperature battery

#### Modules ####
[module/i3]
type = internal/i3

format = <label-state> <label-mode>
index-sort=true
wrapping-scroll=false
pin-workspaces = true

label-mode-padding = 2
label-mode-foreground = ${colors.black}
label-mode-background = ${colors.blue}

label-focused = "%{T3}%{T-} %icon% %{T3}%{T-}"
label-focused-background = ${colors.yellow}
label-focused-foreground = ${colors.background}
label-focused-padding = 0

label-unfocused = "%{T3}%{T-}%{T3}%{T-}"
label-unfocused-padding = 0
label-unfocused-background = ${colors.blue}
label-unfocused-foreground = ${colors.background}

label-urgent = "%{T3}%{T-}%icon%%{T3}%{T-}"
label-urgent-padding = 0
label-urgent-background = ${colors.magenta}
label-urgent-foreground = ${colors.background}

label-visible = "%{T3}%{T-}%icon%%{T3}%{T-}"
label-visible-padding = 0
label-visible-foreground = ${colors.background}
label-visible-background = ${colors.blue}


ws-icon-0 = 1;
ws-icon-1 = 2;
ws-icon-2 = 3;﬏
ws-icon-3 = 4;ﴬ
ws-icon-4 = 5;5
ws-icon-5 = 6;6
ws-icon-6 = 7;7
ws-icon-7 = 8;8
ws-icon-8 = 9;9
ws-icon-9 = 10;阮

[module/filesystem]
type = internal/fs
interval = 25

mount-0 = /

label-mounted = %{T3}%{T-} %mountpoint%: %percentage_used%% %{T3}%{T-}
label-unmounted = 
label-mounted-background = ${colors.dark-green}
label-mounted-foreground = ${colors.background}

[module/cpu]
type = internal/cpu
interval = 2
format-prefix = "%{T3}%{T-}  "
format-underline = ${colors.cyan}
label = %percentage:2%% %{T3}%{T-}
format-background = ${colors.blue}
format-foreground = ${colors.background}

[module/memory]
type = internal/memory
interval = 2
format-prefix = "%{T3}%{T-}  "
format-underline = ${colors.dark-green}
label = %percentage_used%% %{T3}%{T-}

format-background = ${colors.dark-cyan}
format-foreground = ${colors.background}
