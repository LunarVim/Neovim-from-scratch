-- Below is the sourced file where I keep most of my general options.
-- Please remember the lua @ the begining & end of the string are implied.
-- In other words "user.abbrs" is the same as "lua.user.abbrs" | "user.abbrs.lua" | "lua.user.abbrs.lua".
require "user.options"
-- I have auto-commands for cursor-file persistance,
-- auto. vertically centering, & auto-saving text-folds.
require "user.keymaps"
-- Abbreviations for manual text-replacements.
-- Populated mostly with a top 100 list of commonly misspelled words.
require "user.abbrs"
-- My personnel plugins lua configuration file.
-- I will be adding to this file often,
-- b/c it's where I will be adding plugins to packer.
-- I like that Packer is fully in lua.
require "user.plugins"
-- This is where I will add my plugins.
require "user.colorscheme"

