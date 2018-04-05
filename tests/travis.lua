htmlEntities = require('htmlEntities')
--htmlEntities = require('src/htmlEntities')
test = require('tests/test')

print('\n\nInit test htmlEntities for Travis')
local text = [[&amp;&#88;&#65;&#77;&#80;&#76;&#69; text
&lt;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&gt;]]

for k,v in pairs(htmlEntities) do
	if v and type(v) == 'string' then -- Print Info
		print(k .. ': ' .. v)
	end
end

local dec = htmlEntities.decode(text)
htmlEntities.encode(dec)
local char = {}
for i = 33, 255 do
	hex = i
	dec = string.format('%02X', hex)
	local x_1 = htmlEntities.ASCII_HEX(hex)
	table.insert(char, x_1)
	local x_2 = htmlEntities.ASCII_DEC(dec)
	table.insert(char, x_2)
end
local encode = {'&micro;', '&yen;', '&uuml;', '&lrm;', '&#8482;', '&lceil;', '&#45;'}
for i,v in ipairs(char) do
	local x = htmlEntities.encode(v)
	table.insert(encode, x)
end
for i,v in ipairs(encode) do
	local x = htmlEntities.decode(v)
	if not x == v:htmlDecode() then
		print('ERROR!')
		print(string.format('%s: %s - %s', v, x, v:htmlDecode()))
		return
	end
end
local table = {
	['tiago'] = 'danin'
}
if not htmlEntities.filter('tiago', table) == 'danin' then
	print('ERROR!')
end

print('\nRun more tests :)')
test.test_speed()
test.test_ascii()

print('\nEnd Test - travis.lua')
