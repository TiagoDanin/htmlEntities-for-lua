--htmlEntities = require('htmlEntities')
htmlEntities = require('src/htmlEntities')

local test = {}

function test.test_decode()
	local init = true
	while init do
		print('\nPut text')
		io.write('> ')
		input = io.read()
		print('Input: ' .. input .. '\nOutput: ' .. htmlEntities.decode(input) .. '\n')
	end
end

function test.test_encode()
	local init = true
	while init do
		print('\nPut text')
		io.write('> ')
		input = io.read()
		print('Input: '.. input .. '\nOutput: ' .. htmlEntities.encode(input) .. '\n')
	end
end

function test.test_speed()
	print('\n\nInit Time')
	local time_init = io.popen('date +%S.%N'):read('*all')

	print('SPECIAL CASE')
	print('~>', htmlEntities.decode('a=1&b=2&c=3&amp;d=4'))

	print('ASCII Decode [HEX 33-255 to DEC] to Char')
	local char = {}
	for i = 33, 255 do
		hex = i
		dec = string.format('%02X', hex)
		local x_1 = htmlEntities.ASCII_HEX(hex)
		table.insert(char, x_1)
		local x_2 = htmlEntities.ASCII_DEC(dec)
		table.insert(char, x_2)
	end
	local time_1 = io.popen('date +%S.%N'):read('*all')

	print('Char to encode htmlEntities')
	local encode = {'&micro;', '&yen;', '&uuml;', '&lrm;', '&#8482;', '&lceil;', '&#45;'}
	for i,v in ipairs(char) do
		local x = htmlEntities.encode(v)
		table.insert(encode, x)
	end
	local time_2 = io.popen('date +%S.%N'):read('*all')

	print('decode htmlEntities to Char')
	for i,v in ipairs(encode) do
		htmlEntities.decode(v)
	end
	local time_3 = io.popen('date +%S.%N'):read('*all')

	local time = (((time_1 + time_2 + time_3) / 3) - time_init)
	print('TIME (%S.%N):' .. time .. '\n\n')
end

function test.test_ascii()
	print('\nInit Table')
	local dec = ''
	local hex = ''
	for i = 33, 255 do
		hex = i
		dec = string.format('%02X', hex)

		if string.len(hex) == 3 then
			print('HEX: ' .. hex .. ' Output: ' .. htmlEntities.ASCII_HEX(hex))
		else
			print('HEX: ' .. hex .. ' Output: ' .. htmlEntities.ASCII_HEX(hex))
		end

		if string.len(dec) == 3 then
			print('DEC: ' .. dec .. ' Output: ' .. htmlEntities.ASCII_DEC(dec) .. '\n')
		else
			print('DEC: ' .. dec .. ' Output: ' .. htmlEntities.ASCII_DEC(dec) .. '\n')
		end

	end
end

return test
