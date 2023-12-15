{ pkgs ? import <nixpkgs> { } }: {
  home.packages = [ pkgs.gtkwave ];

  home.file.".gtkwaverc".text = ''
    dragzoom_threshold 0
    sst_dbl_action_type insert

    use_standard_trace_select no
    highlight_wavewindow yes
    fill_waveform yes
    alt_wheel_mode yes
    vcd_preserve_glitches no
    vcd_preserve_glitches_real no

    ignore_savefile_pane_pos no
    ignore_savefile_pos no
    ignore_savefile_size no

    ruler_origin 0
    ruler_step 0
    disable_ae2_alias no
    keep_xz_colors no
    disable_auto_comphier yes

    strace_repeat_count 1
    enable_fast_exit yes
    disable_empty_gui off
    analog_redraw_skip_count 20
    splash_disable on
    hide_sst off
    sst_dynamic_filter on
    use_standard_clicking on
    use_toolbutton_interface on
    use_pango_fonts on
    use_scrollwheel_as_y off
    scale_to_time_dimension *
    zoom_dynamic off
    zoom_dynamic_end off

    vlist_spill off
    vlist_prepack off
    vlist_compression 4

    hier_max_level 0
    force_toolbars 0
    cursor_snap 8
    zoom_pow10_snap on

    dynamic_resizing 0
    hpane_pack 1

    use_maxtime_display 0

    enable_vcd_autosave 0
    use_roundcaps 1

    use_nonprop_fonts yes
    enable_horiz_grid yes
    use_big_fonts no
    constant_marker_update yes
    show_grid yes
    show_base_symbols no

    atomic_vectors yes
    vcd_explicit_zero_subscripts no

    disable_mouseover no
    clipboard_mouseover yes

    # color additions
    color_baseline 3a3e46
    color_grid     3a3e46
    color_grid2    4b505b
    color_high     98c379
    color_highfill 70a54a
    color_low      98c379
    color_1        98c379
    color_1fill    70a54a
    color_0        98c379
    color_1fill    70a54a
    color_trans    98c379
    color_mid      98c379

    color_value  abb2bf
    color_vbox   98c379
    color_vtrans a3be8c

    color_x        e06c75
    color_xfill    d32d3a
    color_u        e06c75
    color_ufill    d32d3a
    color_w        e5c07b
    color_wfill    d8a16b
    color_dash     7f848e
    color_dashfill 5a5e66

    color_umark  61afef
    color_mark   55a9ee

    color_time   abb2bf
    color_timeb  3a3e46

    color_brkred 61afef
    color_gmstrd ac3bce

    color_normal 282c34
    # Signal font color
    color_black 282c34
    # Signal selected font color
    color_white abb2bf
    # Signal selected bg color
    color_dkblue 55a9ee
    # Signal bg color
    color_ltblue 1c8ce8
    color_dkgray 3a3e46
    color_mdgray 4b505b
    color_ltgray 5c6370

    color_red    e06c75
    color_orange d19a66
    color_yellow e5c07b
    color_green  98c379
    color_blue   61afef
    color_indigo 56b6c2
    color_violet c678dd

    # menu accelerators
    accel "/File/Open New Window" <Control>N
    accel "/File/Open New Tab" <Control>T
    accel "/File/Reload Waveform" <Control>R
    accel "/File/Export/Write VCD File As" (null)
    accel "/File/Export/Write LXT File As" (null)
    accel "/File/Export/Write TIM File As" (null)
    accel "/File/Close" <Control>D
    accel "/File/<separator>" (null)
    accel "/File/Print To File" <Control>P
    accel "/File/Grab To File" (null)
    accel "/File/<separator>" (null)
    accel "/File/Read Save File" <Control>E
    accel "/File/Write Save File" <Control>W
    accel "/File/Write Save File As" <Shift><Control>W
    accel "/File/<separator>" (null)
    accel "/File/Read Sim Logfile" L
    accel "/File/<separator>" (null)
    accel "/File/Read Verilog Stemsfile" (null)
    accel "/File/<separator>" (null)
    accel "/File/Read Tcl Script File" (null)
    accel "/File/<separator>" (null)
    accel "/File/Quit" <Control>Q
    accel "/Edit/Set Trace Max Hier" (null)
    accel "/Edit/Toggle Trace Hier" H
    accel "/Edit/<separator>" (null)
    accel "/Edit/Insert Blank" B
    accel "/Edit/Insert Comment" C
    accel "/Edit/Insert Analog Height Extension" (null)
    accel "/Edit/Cut" D
    accel "/Edit/Copy" Y
    accel "/Edit/Paste" P
    accel "/Edit/Delete" Delete
    accel "/Edit/<separator>" (null)
    accel "/Edit/Alias Highlighted Trace" A
    accel "/Edit/Remove Highlighted Aliases" <Shift>A
    accel "/Edit/<separator>" (null)
    accel "/Edit/Expand" Tab
    accel "/Edit/Combine Down" <Shift>J
    accel "/Edit/Combine Up" <Shift>K
    accel "/Edit/<separator>" (null)
    accel "/Edit/Data Format/Hex" <Alt>X
    accel "/Edit/Data Format/Decimal" <Alt>D
    accel "/Edit/Data Format/Signed Decimal" (null)
    accel "/Edit/Data Format/Binary" <Alt>B
    accel "/Edit/Data Format/Octal" <Alt>O
    accel "/Edit/Data Format/ASCII" (null)
    accel "/Edit/Data Format/Time", (null)
    accel "/Edit/Data Format/Enum", (null)
    accel "/Edit/Data Format/BitsToReal" (null)
    accel "/Edit/Data Format/RealToBits/On" (null)
    accel "/Edit/Data Format/RealToBits/Off" (null)
    accel "/Edit/Data Format/Right Justify/On" <Alt>J
    accel "/Edit/Data Format/Right Justify/Off" <Shift><Alt>J
    accel "/Edit/Data Format/Invert/On" <Alt>I
    accel "/Edit/Data Format/Invert/Off" <Shift><Alt>I
    accel "/Edit/Data Format/Reverse Bits/On" <Alt>V
    accel "/Edit/Data Format/Reverse Bits/Off" <Shift><Alt>V
    accel "/Edit/Data Format/Translate Filter File/Disable" (null)
    accel "/Edit/Data Format/Translate Filter File/Enable and Select" (null)
    accel "/Edit/Data Format/Translate Filter Process/Disable" (null)
    accel "/Edit/Data Format/Translate Filter Process/Enable and Select" (null)
    accel "/Edit/Data Format/Transaction Filter Process/Disable" (null)
    accel "/Edit/Data Format/Transaction Filter Process/Enable and Select" (null)
    accel "/Edit/Data Format/Analog/Off" (null)
    accel "/Edit/Data Format/Analog/Step" (null)
    accel "/Edit/Data Format/Analog/Interpolated" (null)
    accel "/Edit/Data Format/Analog/Interpolated Annotated" (null)
    accel "/Edit/Data Format/Analog/Resizing/Screen Data" (null)
    accel "/Edit/Data Format/Analog/Resizing/All Data" (null)
    accel "/Edit/Data Format/Range Fill/With 0s" (null)
    accel "/Edit/Data Format/Range Fill/With 1s" (null)
    accel "/Edit/Data Format/Range Fill/Off" (null)
    accel "/Edit/Data Format/Gray Filters/To Gray" (null)
    accel "/Edit/Data Format/Gray Filters/From Gray" (null)
    accel "/Edit/Data Format/Gray Filters/None" (null)
    accel "/Edit/Color Format/Normal" (null)
    accel "/Edit/Color Format/Red" (null)
    accel "/Edit/Color Format/Orange" (null)
    accel "/Edit/Color Format/Yellow" (null)
    accel "/Edit/Color Format/Green" (null)
    accel "/Edit/Color Format/Blue" (null)
    accel "/Edit/Color Format/Indigo" (null)
    accel "/Edit/Color Format/Violet" (null)
    accel "/Edit/Color Format/Cycle" (null)
    accel "/Edit/Color Format/<separator>" (null)
    accel "/Edit/Color Format/Keep xz Colors" (null)
    accel "/Edit/Show-Change All Highlighted" (null)
    accel "/Edit/Show-Change First Highlighted" <Control>F
    accel "/Edit/<separator>" (null)
    accel "/Edit/Time Warp/Warp Marked" (null)
    accel "/Edit/Time Warp/Unwarp Marked" (null)
    accel "/Edit/Time Warp/Unwarp All" (null)
    accel "/Edit/<separator>" (null)
    accel "/Edit/Exclude" <Shift><Alt>E
    accel "/Edit/Show" <Shift><Alt>S
    accel "/Edit/<separator>" (null)
    accel "/Edit/Toggle Group Open|Close" T
    accel "/Edit/Create Group" G
    accel "/Edit/<separator>" (null)
    accel "/Edit/Highlight Regexp" <Alt>R
    accel "/Edit/UnHighlight Regexp" <Shift><Alt>R
    accel "/Edit/Highlight All" <Control>A
    accel "/Edit/UnHighlight All" <Shift><Control>A
    accel "/Edit/<separator>" (null)
    accel "/Edit/Sort/Alphabetize All" (null)
    accel "/Edit/Sort/Alphabetize All (CaseIns)" (null)
    accel "/Edit/Sort/Sigsort All" (null)
    accel "/Edit/Sort/Reverse All" (null)
    accel "/Search/Pattern Search 1" (null)
    accel "/Search/Pattern Search 2" (null)
    accel "/Search/<separator>" (null)
    accel "/Search/Signal Search Regexp" <Alt>S
    accel "/Search/Signal Search Hierarchy" <Alt>T
    accel "/Search/Signal Search Tree" <Shift><Alt>T
    accel "/Search/<separator>" (null)
    accel "/Search/Open Source Definition" (null)
    accel "/Search/Open Source Instantiation" (null)
    accel "/Search/Open Scope" (null)
    accel "/Search/<separator>" (null)
    accel "/Search/Autocoalesce" (null)
    accel "/Search/Autocoalesce Reversal" (null)
    accel "/Search/Autoname Bundles" (null)
    accel "/Search/Search Hierarchy Grouping" (null)
    accel "/Search/<separator>" (null)
    accel "/Search/Set Pattern Search Repeat Count" (null)
    accel "/Time/Move To Time" (null)
    accel "/Time/Zoom/Zoom Amount" (null)
    accel "/Time/Zoom/Zoom Base" (null)
    accel "/Time/Zoom/Zoom In" plus
    accel "/Time/Zoom/Zoom Out" minus
    accel "/Time/Zoom/Zoom Full" <Control>0
    accel "/Time/Zoom/Zoom Best Fit" <Shift><Alt>F
    accel "/Time/Zoom/Zoom To Start" G
    accel "/Time/Zoom/Zoom To End" <Shift>G
    accel "/Time/Zoom/Undo Zoom" (null)
    accel "/Time/Fetch/Fetch Size" (null)
    accel "/Time/Fetch/Fetch ->" <Alt>2
    accel "/Time/Fetch/Fetch <-" <Alt>1
    accel "/Time/Discard/Discard ->" <Alt>4
    accel "/Time/Discard/Discard <-" <Alt>3
    accel "/Time/Shift/Shift ->" <Alt>6
    accel "/Time/Shift/Shift <-" <Alt>5
    accel "/Time/Page/Page ->" <Alt>8
    accel "/Time/Page/Page <-" <Alt>7
    accel "/Markers/Show-Change Marker Data" <Alt>M
    accel "/Markers/Drop Named Marker" <Alt>N
    accel "/Markers/Collect Named Marker" <Shift><Alt>N
    accel "/Markers/Collect All Named Markers" <Shift><Control><Alt>N
    accel "/Markers/Copy Primary->B Marker" B
    accel "/Markers/Delete Primary Marker" <Shift><Alt>M
    accel "/Markers/<separator>" (null)
    accel "/Markers/Find Previous Edge" <Control><Shift>N
    accel "/Markers/Find Next Edge" <Control><Shift>P
    accel "/Markers/<separator>" (null)
    accel "/Markers/Alternate Wheel Mode" (null)
    accel "/Markers/<separator>" (null)
    accel "/Markers/Wave Scrolling" (null)
    accel "/Markers/Locking/Lock to Lesser Named Marker" Q
    accel "/Markers/Locking/Lock to Greater Named Marker" W
    accel "/Markers/Locking/Unlock from Named Marker" O
    accel "/View/Show Grid" <Alt>G
    accel "/View/<separator>" (null)
    accel "/View/Show Wave Highlight" (null)
    accel "/View/Show Filled High Values" (null)
    accel "/View/<separator>" (null)
    accel "/View/Show Mouseover" (null)
    accel "/View/Mouseover Copies To Clipboard" (null)
    accel "/View/<separator>" (null)
    accel "/View/Show Base Symbols" (null)
    accel "/View/<separator>" (null)
    accel "/View/Standard Trace Select" (null)
    accel "/View/<separator>" (null)
    accel "/View/Dynamic Resize" (null)
    accel "/View/<separator>" (null)
    accel "/View/Center Zooms" <Control>Z
    accel "/View/<separator>" (null)
    accel "/View/Toggle Delta-Frequency" (null)
    accel "/View/Toggle Max-Marker" (null)
    accel "/View/<separator>" (null)
    accel "/View/Constant Marker Update" (null)
    accel "/View/<separator>" (null)
    accel "/View/Draw Roundcapped Vectors" (null)
    accel "/View/<separator>" (null)
    accel "/View/Left Justified Signals" <Control><Shift>H
    accel "/View/Right Justified Signals" <Control><Shift>L
    accel "/View/<separator>" (null)
    accel "/View/Zoom Pow10 Snap" (null)
    accel "/View/Partial VCD Dynamic Zoom Full" (null)
    accel "/View/Partial VCD Dynamic Zoom To End" (null)
    accel "/View/Full Precision" (null)
    accel "/View/<separator>" (null)
    accel "/View/Define Time Ruler Marks" (null)
    accel "/View/Remove Pattern Marks" (null)
    accel "/View/<separator>" (null)
    accel "/View/Use Color" (null)
    accel "/View/Use Black and White" (null)
    accel "/View/<separator>" (null)
    accel "/View/LXT Clock Compress to Z" (null)
    accel "/View/<separator>" (null)
    accel "/View/Scale To Time Dimension/None" (null)
    accel "/View/Scale To Time Dimension/sec" (null)
    accel "/View/Scale To Time Dimension/ms" (null)
    accel "/View/Scale To Time Dimension/us" (null)
    accel "/View/Scale To Time Dimension/ns" (null)
    accel "/View/Scale To Time Dimension/ps" (null)
    accel "/View/Scale To Time Dimension/fs" (null)
    accel "/Help/WAVE Help" <Control>H
    accel "/Help/WAVE User Manual" (null)
    accel "/Help/Wave Version" (null)
  '';
  home.file."gtkwave.tcl".text = ''
    # Add signal groups and filters
    set signals {
      {{test_id} {^$} {test_id$}}
      {{clk & rst} {I|^$} {clk|rst|rst_n}}
      {{inputs} {I} {^((?!clk|rst|rst_n|s_axi_|m_axi_).)*$}}
      {{outputs} {O} {^((?!s_axi_|m_axi_).)*$}}
      {{ios} {IO} {.*}}
      {{s_axi} {I|O|^$} {s_axi_(?!stream_)}}
      {{m_axi} {I|O|^$} {m_axi_(?!stream_)}}
      {{s_axi_stream} {I|O|^$} {s_axi_stream_}}
      {{m_axi_stream} {I|O|^$} {m_axi_stream_}}
      {{misc} {^$} {^((?!clk|rst|rst_n|test_id|s_axi_|m_axi_).)*$}}
    }

    # Load all signals
    set nsigs [ gtkwave::getNumFacs ]

    proc add_signals { groupName dir_filter name_filter} {
        global nsigs

        set monitorSignals [list]
        for {set i 0} {$i < $nsigs } {incr i} {
          set facdir [ gtkwave::getFacDir $i]
          if {[regexp -nocase $dir_filter $facdir]} {
            set facname [ gtkwave::getFacName $i ]
            if {[regexp -nocase $name_filter $facname]} {
              lappend monitorSignals "$facname"
            }
          }
        }
        if {[llength $monitorSignals] > 0} {
          gtkwave::/Edit/Insert_Comment $groupName
          gtkwave::addSignalsFromList $monitorSignals
          foreach v $monitorSignals {
              set a [split $v .]
              set a [lindex $a end]
              gtkwave::highlightSignalsFromList $v
          }
          gtkwave::/Edit/Insert_Blank
          gtkwave::/Edit/UnHighlight_All
        }
    }

    # Add signals through filters
    foreach s $signals {
        add_signals [lindex $s 0] [lindex $s 1] [lindex $s 2]
    }

    # Zoom out
    gtkwave::/Time/Zoom/Zoom_Full
  '';
}
