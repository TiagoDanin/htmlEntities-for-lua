htmlEntities = require('htmlEntities')
function test_module()
    print('init_test')
	local test = [[
	test, dsd s, &cong; &dcong;
	dsda
	dda
	]]
	local dec = htmlEntities.decode(test)
	print('Results:') -- Result
	print('Version'..htmlEntities.version)
	print(dec)
end

test_module()