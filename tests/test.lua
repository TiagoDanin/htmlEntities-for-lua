htmlEntities = require('htmlEntities')

print('\n\nInit test htmlEntities')
local text = [[&amp;&#88;&#65;&#77;&#80;&#76;&#69; text
&lt;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&gt;]]

for k,v in pairs(htmlEntities) do
	if v and type(v) == 'string' then -- Print Info
		print(k .. ': ' .. v)
	end
end

local dec = htmlEntities.decode(text)
print('\nInput: ' .. text .. '\n\nOutput: ' .. dec)


repeat
	io.write('\nYou want to do a test (y/n) ')
	io.flush()
	res = io.read()
	res = string.lower(res)
until res == 'y' or res == 'n'

function type()
	repeat
		io.write('\n    d = Decode    e = Encode    s = SpeedTest    a = ASCII_Decode\n    > ')
		io.flush()
		res = io.read()
		res = string.lower(res)
	until res == 'd' or res == 'e' or res == 's' or res == 'a'

	function test_decode()
		local init = true
		while init do
			print('\nPut text')
			io.write('> ')
			input = io.read()
			print('Input: ' .. input .. '\nOutput: ' .. htmlEntities.decode(input) .. '\n')
		end
	end

	function test_encode()
		local init = true
		while init do
			print('\nPut text')
			io.write('> ')
			input = io.read()
			print('Input: '.. input .. '\nOutput: ' .. htmlEntities.encode(input) .. '\n')
		end
	end

	function test_speed()
		print('\n\nInit Time')
		local time_init = io.popen('date +%S.%N'):read('*all')

		print('ASCII Decode [HEX 33-255 to DEC] to Char')
		local char = {}
		for i = 33, 255 do
			hex = i
			dec = string.format('%02X', hex)
			local x_1 = htmlEntities.ASCII_HEX(hex)
			table.insert(char, x_1)
			local x_2 =utf8 htmlEntities.ASCII_DEC(dec)
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

	function test_ascii()
		print('\nInit Table')
		local dec = ''
		local hex = ''
		for i = 33, 255 do
			hex = i
			dec = string.format('%02X', hex)

			if string.len(hex) == 3 then
				print('HEX: ' .. hex .. '   Output: ' .. htmlEntities.ASCII_HEX(hex))
			else
				print('HEX: ' .. hex .. '    Output: ' .. htmlEntities.ASCII_HEX(hex))
			end

			if string.len(dec) == 3 then
				print('DEC: ' .. dec .. '   Output: ' .. htmlEntities.ASCII_DEC(dec) .. '\n')
			else
				print('DEC: ' .. dec .. '    Output: ' .. htmlEntities.ASCII_DEC(dec) .. '\n')
			end

		end
	end

	-- Res
	if res == 'd' then
		test_decode()
	elseif res == 'e' then
		test_encode()
	elseif res == 's' then
		test_speed()
	elseif res == 'a' then
		test_ascii()
	end
end

if res == 'y' then type() end
