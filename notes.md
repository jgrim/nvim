# Vim Shortcuts

## Commenting
This uses commentary.vim

`gcc` Comment out a line

`gc` Comment out target of motion
Example: `gcap` comment out a paragraph

`7,17Comentary` to comment out a range
or
`:g/TODO/Commentary` for global.

## Coercion
This uses abolish.vim

`crm` to MixedCase
`crc` to camelCase
`crs to snake\_case
`cru` to UPPER_CASE
`cr-` to dash-case
`cr.` to dot.case
`cr<space>` space case
`crt` to Title Case

## Vim PHP CS Fixer

`<leader>pcd` fix directory
`<leader>pcf` fix file

## Vinegar
`-` to show project drawer
`I` to show help while showing vinegar
`gh` toggle dot files hiding
`.` on file to pre-populate it in command line
`y.` to yank the absolute path of the file
`~` to go to home directory

## Vim PHP Namespace
`\u` in normal or insert mode will import the class or function under the cursor
`\e` in normal or insert mode will expand the name to a fully qualified name

## Surround.vim
`cs"'` replace " with '
`cs'<q>` replace ' with <q>
`ds"` to remove surround of "
`ysiw]` to wrap word with ]
`ysiw{` to wrap word with { and make it have spaces
`yssb` wrap entire line with parentheses

