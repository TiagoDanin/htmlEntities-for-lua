htmlEntities = require('htmlEntities')
function test_module()
    print('init_test')
	local test = [[
	&amp;xample text
	&it;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&gt;
	]]
	local dec = htmlEntities.decode(test)
	print('Results:') -- Result
	print('Version'..htmlEntities.version)
	print(dec)
end

test_module()
