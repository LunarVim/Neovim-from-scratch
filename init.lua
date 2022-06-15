-- Below is the sourced file where I keep most of my general options.
-- Please remember the lua @ the begining & end of the string are implied.
-- In other words "user.abbrs" is the same as "lua.user.abbrs" | "user.abbrs.lua" | "lua.user.abbrs.lua".
require "user.options"
-- Abbreviations for manual text-replacements.
-- Populated mostly with a top 100 list of commonly misspelled words.
-- This is where I will add my color-schemes.
require "user.abbrs"
require "user.colorscheme"
-- I have auto-commamodule 'user.cmp' not found:nds for cursor-file persistance,
-- auto. vertically centering, & auto-saving text-folds.
require "user.keymaps"
-- My personnel plugins lua configuration file.
-- I will be adding to this file often,
-- b/c it's where I will be adding plugins to packer.
-- I like that Packer is fully in lua.
require "user.plugins"
-- Several cool auto-commands, for persistance mostly.
require "user.autocmds"
