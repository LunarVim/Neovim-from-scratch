
local ls = require 'luasnip'
local fmt = require('luasnip.extras.fmt').fmt
local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node
local rep = require('luasnip.extras').rep

-- Get a list of  the property names given an `type_alias_declaration`
-- treesitter *tsx* node.
-- Ie, if the treesitter node represents:
--   type Something = {
--     prop1: string;
--     prop2: number;
--   }
-- Then this function would return `{"prop1", "prop2"}
---@param id_node {} Stands for "interface declaration node"
---@return string[]
local function get_prop_names(id_node)
  local object_type_node = id_node:child(3)
  if object_type_node:type() ~= 'object_type' then
    return {}
  end

  local prop_names = {}

  for prop_signature in object_type_node:iter_children() do
    if prop_signature:type() == 'property_signature' then
      local prop_iden = prop_signature:child(0)
      local prop_name = vim.treesitter.query.get_node_text(prop_iden, 0)
      prop_names[#prop_names + 1] = prop_name
    end
  end

  return prop_names
end

ls.filetype_extend('typescriptreact', { 'javascript', 'typescript' })

ls.add_snippets('typescriptreact', {
  -- React component
  -- Snippet with small modifications from
  -- https://gist.github.com/davidatsurge/9873d9cb1781f1a37c0f25d24cb1b3ab
  s(
    'c',
    fmt(
      [[
{}type {}Props = {{
  {}
}}

{}const {} = ({{{}}}: {}Props) => {{
  {}
}}
]],
      {
        -- Import React if it's not yet imported
        f(function()
          local bufnr = 0
          local parser = vim.treesitter.get_parser(bufnr, 'tsx')
          local tree = parser:parse()[1]

          local query = vim.treesitter.query.parse_query('tsx', '((identifier) @hello (#eq? @hello "React"))')
          local has_match = false
          for _, _ in query:iter_matches(tree:root(), bufnr) do
            has_match = true
          end

          if not has_match then
            return { "import React from 'react';", '', '' }
          end
          return ''
        end),
        -- Initialize component name to file name
        d(2, function(_, snip)
          return sn(nil, {
            i(1, vim.fn.substitute(snip.env.TM_FILENAME, '\\..*$', '', 'g')),
          })
        end, { 1 }),
        i(3, '// Props'),
        i(1, 'export '),
        rep(2),
        f(function(_, snip, _)
          local pos_begin = snip.nodes[6].mark:pos_begin()
          local pos_end = snip.nodes[6].mark:pos_end()
          local parser = vim.treesitter.get_parser(0, 'tsx')
          local tstree = parser:parse()

          local node = tstree[1]:root():named_descendant_for_range(pos_begin[1], pos_begin[2], pos_end[1], pos_end[2])

          while node ~= nil and node:type() ~= 'type_alias_declaration' do
            node = node:parent()
          end

          if node == nil then
            return ''
          end

          -- `node` is now surely of type "type_alias_declaration"
          local prop_names = get_prop_names(node)

          return table.concat(prop_names, ', ')
        end, { 3 }),
        rep(2),
        i(4, 'return <div></div>'),
      }
    )
  ),

  -- React `useState` declaration
  s(
    's',
    fmt([[const [{}, set{}] = useState({});]], {
      i(1, 'state'),
      f(function(args)
        return (args[1][1]:gsub('^%l', string.upper))
      end, { 1 }),
      i(2),
    })
  ),
})
