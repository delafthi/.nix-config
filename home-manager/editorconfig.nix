{
  editorconfig = {
    enable = true;
    settings = {
      "*" = {
        charset = "utf-8";
        end_of_line = "lf";
        insert_final_newline = true;
        trim_trailing_whitespace = true;
        indent_style = "space";
        indent_size = 2;
      };
      Makefile = {
        indent_style = "tab";
      };
      "*.py" = {
        indent_size = 4;
      };
    };
  };
}
