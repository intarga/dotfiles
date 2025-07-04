# Color palette
declare-option str bg           "rgb:fffcfd"
declare-option str fg           "rgb:250e07"
#declare-option str fg           "rgb:071526"
declare-option str soft_bg      "rgb:f3eae9"
declare-option str soft_fg      "rgb:d8b8b3"
declare-option str alt_bg       "rgb:ecc3c2"
declare-option str alt_fg       "rgb:a6b6ce"

declare-option str red          "rgb:e56b6f"
declare-option str dark_red     "rgb:b56576"
declare-option str green        "rgb:9a9e6d"
declare-option str light_green  "rgb:b0aa80"
declare-option str yellow       "rgb:eebba0"
declare-option str dark_yellow  "rgb:eaac8b"
declare-option str blue         "rgb:355070"
declare-option str dark_blue    "rgb:283c55"
declare-option str cyan         "rgb:915f78"
declare-option str dark_cyan    "rgb:6d597a"
declare-option str magenta      "rgb:e88c7d"
declare-option str dark_magenta "rgb:e77c76"

# Markup
set-face global title  "%opt{fg}+b"
set-face global header "%opt{soft_fg}+b"
set-face global bold   "%opt{cyan}+b"
set-face global italic "%opt{cyan}+i"
set-face global mono   "%opt{dark_cyan}"
set-face global block  "%opt{blue}"
set-face global link   "%opt{alt_fg}"
set-face global bullet "%opt{magenta}"
set-face global list   "%opt{magenta}"

# Builtins
set-face global Default             "%opt{fg},%opt{bg}"
set-face global PrimarySelection    "%opt{bg},%opt{alt_fg}+b"
set-face global SecondarySelection  "%opt{fg},%opt{alt_bg}"
set-face global PrimaryCursorNor    "%opt{bg},%opt{dark_magenta}+b"
set-face global PrimaryCursorIns    "default,default,%opt{dark_magenta}+u"
set-face global PrimaryCursor       PrimaryCursorNor
set-face global SecondaryCursor     "%opt{soft_bg},%opt{alt_fg}+b"
set-face global PrimaryCursorEolNor "%opt{alt_bg},%opt{green}+b"
set-face global PrimaryCursorEolIns "default,default,%opt{green}+u"
set-face global PrimaryCursorEol    PrimaryCursorEolNor
set-face global SecondaryCursorEol  "%opt{alt_bg},%opt{soft_bg}"
set-face global LineNumbers         "%opt{alt_fg},%opt{bg}"
set-face global LineNumberCursor    "%opt{red},%opt{bg}+b"
set-face global LineNumbersWrapped  "%opt{cyan},%opt{soft_bg}+i"
set-face global MenuForeground      "%opt{bg},%opt{magenta}+b"
set-face global MenuBackground      "%opt{fg},%opt{soft_bg}"
set-face global MenuInfo            "%opt{bg},%opt{yellow}+b"
set-face global Information         "%opt{bg},%opt{dark_yellow}+b"
set-face global Error               "%opt{soft_bg},%opt{red}"
set-face global StatusLine          "%opt{fg},%opt{soft_bg}"
set-face global StatusLineModeNor   "%opt{bg},%opt{magenta}+b"
set-face global StatusLineModeIns   "%opt{bg},%opt{dark_blue}+b"
set-face global StatusLineMode      StatusLineModeNor
set-face global StatusLineInfoNor   "%opt{bg},%opt{dark_yellow}"
set-face global StatusLineInfoIns   "%opt{bg},%opt{blue}"
set-face global StatusLineInfo      StatusLineInfoNor
set-face global StatusLineValue     "%opt{alt_fg},%opt{soft_bg}+i"
set-face global StatusCursor        "%opt{bg},%opt{fg}"
set-face global Prompt              "%opt{blue},%opt{soft_bg}+b"
set-face global MatchingChar        "%opt{cyan},%opt{soft_bg}"
set-face global Whitespace          "%opt{alt_fg},%opt{bg}+bi"
set-face global WrapMarker          Whitespace
set-face global BufferPadding       "%opt{alt_fg},%opt{bg}"

# Code
set-face global value         "%opt{blue}"
set-face global type          "%opt{dark_cyan}"
set-face global variable      "%opt{dark_blue}"
set-face global module        "%opt{dark_blue}"
set-face global function      "%opt{blue}+b"
set-face global string        "%opt{red}"
set-face global keyword       "%opt{red}+b"
set-face global operator      "%opt{red}+b"
set-face global attribute     "%opt{dark_magenta}"
set-face global comment       "%opt{alt_fg}+i"
set-face global documentation comment
set-face global meta          "%opt{magenta}"
set-face global builtin       "%opt{yellow}"

# Tree_sitter
set-face global ts_attribute                    attribute
set-face global ts_comment                      comment
set-face global ts_comment_unused               "%opt{soft_fg}+is"
set-face global ts_conceal                      "%opt{soft_fg}+s"
set-face global ts_constant                     "%opt{yellow}+b"
set-face global ts_constant_builtin_boolean     ts_constant
set-face global ts_constant_character           ts_constant
set-face global ts_constant_macro               ts_constant
set-face global ts_constant_numeric             "%opt{red}"
set-face global ts_constructor                  "%opt{dark_blue}+b"
set-face global ts_diff_plus                    "%opt{green}"
set-face global ts_diff_minus                   "%opt{red}"
set-face global ts_diff_delta                   "%opt{blue}"
set-face global ts_diff_delta_moved             "%opt{cyan}"
set-face global ts_error                        "%opt{red}+b"
set-face global ts_warning                      "%opt{yellow}+b"
set-face global ts_hint                         "%opt{blue}+b"
set-face global ts_info                         "%opt{green}+b"
set-face global ts_function                     "%opt{blue}+b"
set-face global ts_function_method              "%opt{blue}+i"
set-face global ts_function_macro               "%opt{magenta}+ib"
set-face global ts_keyword                      "%opt{red}+b"
set-face global ts_keyword_conditional          "%opt{red}+b"
set-face global ts_keyword_control_conditional  "%opt{red}+b"
set-face global ts_keyword_control_directive    "%opt{red}+i"
set-face global ts_keyword_control_import       "%opt{red}+b"
set-face global ts_keyword_directive            "%opt{red}+i"
set-face global ts_keyword_storage_modifier     "%opt{red}+i"
set-face global ts_label                        "%opt{magenta}"
#set-face global ts_markup_bold                  "%opt{peach}+b"
#set-face global ts_markup_heading               "%opt{red}"
#set-face global ts_markup_heading_1             "%opt{red}"
#set-face global ts_markup_heading_2             "%opt{mauve}"
#set-face global ts_markup_heading_3             "%opt{green}"
#set-face global ts_markup_heading_4             "%opt{yellow}"
#set-face global ts_markup_heading_5             "%opt{pink}"
#set-face global ts_markup_heading_6             "%opt{teal}"
#set-face global ts_markup_heading_marker        "%opt{peach}+b"
#set-face global ts_markup_italic                "%opt{pink}+i"
#set-face global ts_markup_list_checked          "%opt{green}"
#set-face global ts_markup_list_numbered         "%opt{blue}+i"
#set-face global ts_markup_list_unchecked        "%opt{teal}"
#set-face global ts_markup_list_unnumbered       "%opt{mauve}"
#set-face global ts_markup_link_label            "%opt{fg_alt}"
#set-face global ts_markup_link_url              "%opt{teal}+u"
#set-face global ts_markup_link_uri              "%opt{teal}+u"
#set-face global ts_markup_link_text             "%opt{fg_alt}"
#set-face global ts_markup_quote                 "%opt{overlay1}"
#set-face global ts_markup_raw                   "%opt{green}"
#set-face global ts_markup_strikethrough         "%opt{overlay1}+s"
set-face global ts_namespace                    "%opt{cyan}+b"
set-face global ts_operator                     "%opt{red}+b"
set-face global ts_property                     "%opt{dark_blue}"
set-face global ts_punctuation                  "%opt{magenta}"
#set-face global ts_punctuation_special          "%opt{blue}"
set-face global ts_special                      "%opt{dark_magenta}+ib"
set-face global ts_spell                        "%opt{cyan}"
set-face global ts_string                       "%opt{red}"
set-face global ts_string_regex                 "%opt{dark_red}"
set-face global ts_string_regexp                "%opt{dark_red}"
set-face global ts_string_escape                "%opt{red}+b"
set-face global ts_string_special               "%opt{yellow}"
set-face global ts_string_special_path          "%opt{red}+i"
set-face global ts_string_special_symbol        "%opt{yellow}"
set-face global ts_string_symbol                "%opt{red}"
set-face global ts_tag                          "%opt{dark_yellow}"
set-face global ts_tag_error                    "%opt{dark_yellow}+s"
set-face global ts_text                         "%opt{fg}"
set-face global ts_text_title                   "%opt{soft_fg}"
set-face global ts_type                         "%opt{green}"
set-face global ts_type_enum_variant            "%opt{green}+b"
set-face global ts_variable                     "%opt{dark_cyan}"
set-face global ts_variable_builtin             "%opt{yellow}"
set-face global ts_variable_other_member        "%opt{dark_cyan}"
set-face global ts_variable_parameter           "%opt{dark_cyan}+i"
