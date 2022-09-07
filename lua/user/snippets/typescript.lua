local ls = require 'luasnip'
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

local s = ls.snippet
local d = ls.dynamic_node
local sn = ls.snippet_node
local i = ls.insert_node

ls.filetype_extend('typescript', { 'javascript' })

ls.add_snippets('typescript', {
  -- Storybook story
  s(
    'story',
    fmt(
      [[
import {} from './{}.vue';

export default {{
	title: '{}',
	component: {},
	argTypes: {{
    {}
  }}
}} as Meta;

export const Default: Story = (_, {{ argTypes }}) => ({{
	components: {{ {} }},
	props: Object.keys(argTypes),
	template: `
		<{} v-bind="$props" />
	`,
}});
]],
      {
        d(1, function(_, snip)
          local filename_without_extension, _ = snip.env.TM_FILENAME_BASE:gsub('.stories$', '')

          return sn(nil, {
            i(1, filename_without_extension),
          })
        end),
        rep(1),
        i(2),
        rep(1),
        i(3),
        rep(1),
        rep(1),
      }
    )
  ),
})

