{ pkgs ? import <nixpkgs> { } }: {
  home.packages = [ (pkgs.nerdfonts.override { fonts = [ "IosevkaTermSlab" ]; }) ];

  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        padding = {
          x = 8;
          y = 8;
        };
        decorations = "full";
        startup_mode = "Windowed";
        title = "Alacritty";
        dynamic_title = true;
      };
      scrolling = {
        history = 100000;
        multiplier = 3;
      };
      font = {
        normal = {
          family = "IosevkaTermSlab Nerd Font";
          style = "Regular";
        };
        bold = {
          family = "IosevkaTermSlab Nerd Font";
          style = "Bold";
        };
        italic = {
          family = "IosevkaTermSlab Nerd Font";
          style = "Italic";
        };
        bold_italic = {
          family = "IosevkaTermSlab Nerd Font";
          style = "Bold";
        };
        size = 14.0;
      };
      colors = {
        primary = {
          background = "#282c34";
          foreground = "#abb2bf";
        };
        cursor = {
          text = "CellBackground";
          cursor = "CellForeground";
        };
        vi_mode_cursor = {
          text = "CellBackground";
          cursor = "CellForeground";
        };
        search = {
          matches = {
            foreground = "#282c34";
            background = "#ecbe7b";
          };
          focused_match = {
            foreground = "#282c34";
            background = "#8fc6f4";
          };
        };
        hints = {
          start = {
            foreground = "#282c34";
            background = "#8fc6f4";
          };
          end = {
            foreground = "#ecbe7b";
            background = "#282c34";
          };
        };
        footer_bar = {
          background = "#c5c8c6";
          foreground = "#22252c";
        };
        normal = {
          black = "#282c34";
          red = "#e06c75";
          green = "#98c379";
          yellow = "#e5c07b";
          blue = "#61afef";
          magenta = "#c678dd";
          cyan = "#56b6c2";
          white = "#abb2bf";
        };
        bright = {
          black = "#3e4451";
          red = "#e9969d";
          green = "#b3d39c";
          yellow = "#edd4a6";
          blue = "#8fc6f4";
          magenta = "#d7a1e7";
          cyan = "#7bc6d0";
          white = "#c8cdd5";
        };
      };
      cursor = {
        style = {
          shape = "Beam";
          blinking = "Off";
        };
        vi_mode_style = {
          shape = "Block";
          blinking = "Off";
        };
        unfocused_hollow = true;
        thickness = 0.15;
      };
      live_config_reload = true;
      hints = {
        alphabet = "hutenodisagpmkc.wj";
      };
      mouse.bindings = [
        { mouse = "Right"; action = "ExpandSelection"; }
        { mouse = "Right"; mods = "Control"; action = "ExpandSelection"; }
        { mouse = "Middle"; mode = "~Vi"; action = "PasteSelection"; }
      ];
      keyboard.bindings = [
        { key = "Paste"; action = "Paste"; }
        { key = "Copy"; action = "Copy"; }
        { key = "L"; mods = "Control"; action = "ClearLogNotice"; }
        { key = "L"; mods = "Control"; mode = "~Vi|~Search"; chars = "\x0c"; }
        { key = "PageUp"; mods = "Shift"; mode = "~Alt"; action = "ScrollPageUp"; }
        { key = "PageDown"; mods = "Shift"; mode = "~Alt"; action = "ScrollPageDown"; }
        { key = "Home"; mods = "Shift"; mode = "~Alt"; action = "ScrollToTop"; }
        { key = "End"; mods = "Shift"; mode = "~Alt"; action = "ScrollToBottom"; }
        { key = "Space"; mods = "Shift|Control"; mode = "~Search"; action = "ToggleViMode"; }
        { key = "Space"; mods = "Shift|Control"; mode = "Vi|~Search"; action = "ScrollToBottom"; }
        { key = "Escape"; mode = "Vi|~Search"; action = "ClearSelection"; }
        { key = "I"; mode = "Vi|~Search"; action = "ToggleViMode"; }
        { key = "I"; mode = "Vi|~Search"; action = "ScrollToBottom"; }
        { key = "C"; mods = "Control"; mode = "Vi|~Search"; action = "ToggleViMode"; }
        { key = "Y"; mods = "Control"; mode = "Vi|~Search"; action = "ScrollLineUp"; }
        { key = "E"; mods = "Control"; mode = "Vi|~Search"; action = "ScrollLineDown"; }
        { key = "G"; mode = "Vi|~Search"; action = "ScrollToTop"; }
        { key = "G"; mods = "Shift"; mode = "Vi|~Search"; action = "ScrollToBottom"; }
        { key = "B"; mods = "Control"; mode = "Vi|~Search"; action = "ScrollPageUp"; }
        { key = "F"; mods = "Control"; mode = "Vi|~Search"; action = "ScrollPageDown"; }
        { key = "U"; mods = "Control"; mode = "Vi|~Search"; action = "ScrollHalfPageUp"; }
        { key = "D"; mods = "Control"; mode = "Vi|~Search"; action = "ScrollHalfPageDown"; }
        { key = "Y"; mode = "Vi|~Search"; action = "Copy"; }
        { key = "Y"; mode = "Vi|~Search"; action = "ClearSelection"; }
        { key = "Copy"; mode = "Vi|~Search"; action = "ClearSelection"; }
        { key = "V"; mode = "Vi|~Search"; action = "ToggleNormalSelection"; }
        { key = "V"; mods = "Shift"; mode = "Vi|~Search"; action = "ToggleLineSelection"; }
        { key = "V"; mods = "Control"; mode = "Vi|~Search"; action = "ToggleBlockSelection"; }
        { key = "V"; mods = "Alt"; mode = "Vi|~Search"; action = "ToggleSemanticSelection"; }
        { key = "Return"; mode = "Vi|~Search"; action = "Open"; }
        { key = "Z"; mode = "Vi|~Search"; action = "CenterAroundViCursor"; }
        { key = "K"; mode = "Vi|~Search"; action = "Up"; }
        { key = "J"; mode = "Vi|~Search"; action = "Down"; }
        { key = "H"; mode = "Vi|~Search"; action = "Left"; }
        { key = "L"; mode = "Vi|~Search"; action = "Right"; }
        { key = "Up"; mode = "Vi|~Search"; action = "Up"; }
        { key = "Down"; mode = "Vi|~Search"; action = "Down"; }
        { key = "Left"; mode = "Vi|~Search"; action = "Left"; }
        { key = "Right"; mode = "Vi|~Search"; action = "Right"; }
        { key = "Key0"; mode = "Vi|~Search"; action = "First"; }
        { key = "Key4"; mods = "Shift"; mode = "Vi|~Search"; action = "Last"; }
        { key = "Key6"; mods = "Shift"; mode = "Vi|~Search"; action = "FirstOccupied"; }
        { key = "H"; mods = "Shift"; mode = "Vi|~Search"; action = "High"; }
        { key = "M"; mods = "Shift"; mode = "Vi|~Search"; action = "Middle"; }
        { key = "L"; mods = "Shift"; mode = "Vi|~Search"; action = "Low"; }
        { key = "B"; mode = "Vi|~Search"; action = "SemanticLeft"; }
        { key = "W"; mode = "Vi|~Search"; action = "SemanticRight"; }
        { key = "E"; mode = "Vi|~Search"; action = "SemanticRightEnd"; }
        { key = "B"; mods = "Shift"; mode = "Vi|~Search"; action = "WordLeft"; }
        { key = "W"; mods = "Shift"; mode = "Vi|~Search"; action = "WordRight"; }
        { key = "E"; mods = "Shift"; mode = "Vi|~Search"; action = "WordRightEnd"; }
        { key = "Key5"; mods = "Shift"; mode = "Vi|~Search"; action = "Bracket"; }
        { key = "Slash"; mode = "Vi|~Search"; action = "SearchForward"; }
        { key = "Slash"; mods = "Shift"; mode = "Vi|~Search"; action = "SearchBackward"; }
        { key = "N"; mode = "Vi|~Search"; action = "SearchNext"; }
        { key = "N"; mods = "Shift"; mode = "Vi|~Search"; action = "SearchPrevious"; }
        { key = "Return"; mode = "Search|Vi"; action = "SearchConfirm"; }
        { key = "Escape"; mode = "Search"; action = "SearchCancel"; }
        { key = "C"; mods = "Control"; mode = "Search"; action = "SearchCancel"; }
        { key = "U"; mods = "Control"; mode = "Search"; action = "SearchClear"; }
        { key = "W"; mods = "Control"; mode = "Search"; action = "SearchDeleteWord"; }
        { key = "P"; mods = "Control"; mode = "Search"; action = "SearchHistoryPrevious"; }
        { key = "N"; mods = "Control"; mode = "Search"; action = "SearchHistoryNext"; }
        { key = "Up"; mode = "Search"; action = "SearchHistoryPrevious"; }
        { key = "Down"; mode = "Search"; action = "SearchHistoryNext"; }
        { key = "Return"; mode = "Search|~Vi"; action = "SearchFocusNext"; }
        { key = "Return"; mods = "Shift"; mode = "Search|~Vi"; action = "SearchFocusPrevious"; }
        { key = "V"; mods = "Control|Shift"; mode = "~Vi"; action = "Paste"; }
        { key = "C"; mods = "Control|Shift"; action = "Copy"; }
        { key = "F"; mods = "Control|Shift"; mode = "~Search"; action = "SearchForward"; }
        { key = "B"; mods = "Control|Shift"; mode = "~Search"; action = "SearchBackward"; }
        { key = "C"; mods = "Control|Shift"; mode = "Vi|~Search"; action = "ClearSelection"; }
        { key = "Insert"; mods = "Shift"; action = "PasteSelection"; }
        { key = "Key0"; mods = "Control"; action = "ResetFontSize"; }
        { key = "Equals"; mods = "Control"; action = "IncreaseFontSize"; }
        { key = "Plus"; mods = "Control"; action = "IncreaseFontSize"; }
        { key = "NumpadAdd"; mods = "Control"; action = "IncreaseFontSize"; }
        { key = "Minus"; mods = "Control"; action = "DecreaseFontSize"; }
        { key = "NumpadSubtract"; mods = "Control"; action = "DecreaseFontSize"; }
        { key = "K"; mods = "Command"; mode = "~Vi|~Search"; chars = "\x0c"; }
        { key = "K"; mods = "Command"; mode = "~Vi|~Search"; action = "ClearHistory"; }
        { key = "Key0"; mods = "Command"; action = "ResetFontSize"; }
        { key = "Equals"; mods = "Command"; action = "IncreaseFontSize"; }
        { key = "Plus"; mods = "Command"; action = "IncreaseFontSize"; }
        { key = "NumpadAdd"; mods = "Command"; action = "IncreaseFontSize"; }
        { key = "Minus"; mods = "Command"; action = "DecreaseFontSize"; }
        { key = "NumpadSubtract"; mods = "Command"; action = "DecreaseFontSize"; }
        { key = "V"; mods = "Command"; action = "Paste"; }
        { key = "C"; mods = "Command"; action = "Copy"; }
        { key = "C"; mods = "Command"; mode = "Vi|~Search"; action = "ClearSelection"; }
        { key = "H"; mods = "Command"; action = "Hide"; }
        # { key = "H"; mods = "Command|Alt"; action = "HideOtherApplications" }
        { key = "M"; mods = "Command"; action = "Minimize"; }
        { key = "Q"; mods = "Command"; action = "Quit"; }
        { key = "W"; mods = "Command"; action = "Quit"; }
        { key = "N"; mods = "Command"; action = "CreateNewWindow"; }
        { key = "F"; mods = "Command|Control"; action = "ToggleFullscreen"; }
        { key = "F"; mods = "Command"; mode = "~Search"; action = "SearchForward"; }
        { key = "B"; mods = "Command"; mode = "~Search"; action = "SearchBackward"; }
      ];
    };
  };
}
