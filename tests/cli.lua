--htmlEntities = require('htmlEntities')
htmlEntities = require('src/htmlEntities')
test = require('tests/test')

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

function type_test()
	if arg[1] then
		if arg[1] == 'd' then
			return test.test_decode()
		elseif arg[1] == 'e' then
			return test.test_encode()
		elseif arg[1] == 's' then
			return test.test_speed()
		elseif arg[1] == 'a' then
			return test.test_ascii()
		end
	else
		repeat
			io.write('\n    d = Decode    e = Encode    s = SpeedTest    a = ASCII_Decode\n    > ')
			io.flush()
			res = io.read()
			res = string.lower(res)
		until res == 'd' or res == 'e' or res == 's' or res == 'a'
	end

	-- Res
	if res == 'd' then
		test.test_decode()
	elseif res == 'e' then
		test.test_encode()
	elseif res == 's' then
		test.test_speed()
	elseif res == 'a' then
		test.test_ascii()
	end
end

if arg[1] then
	type_test()
else
	repeat
		io.write('\nYou want to do a test (y/n) ')
		io.flush()
		res = io.read()
		res = string.lower(res)
	until res == 'y' or res == 'n'

	if res == 'y' then type_test() end
end
