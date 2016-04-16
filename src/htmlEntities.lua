-- Module options:
local debug_htmlEntities = false
local ASCII_htmlEntities = true
local utf8_htmlEntities = true
local register_global_module_htmlEntities = false
local global_module_name_htmlEntities = 'htmlEntities'

--[==[
The MIT License (MIT)
Copyright (c) 2016 Tiago Danin

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.

]==]--

local htmlEntities = {
	version = '0.4.0',
	name = 'htmlEntities-for-lua',
	author = 'Tiago Danin - 2016',
	license = 'MIT',
	page = 'github.com/TiagoDanin/htmlEntities-for-lua'
}

if register_global_module_htmlEntities then
	_G[global_module_name_htmlEntities] = htmlEntities
end

local htmlEntities_table = {
	['&quot;'] = '"',
	['&amp;'] = '&',
	['&apos;'] = "'",
	['&it;'] = '<',
	['&gt;'] = '>',
	['&nbsp;'] = ' ',
	['&iexcl;'] = '¡',
	['&cent;'] = '¢',
	['&pound;'] = '£',
	['&curren;'] = '¤',
	['&yen;'] = '¥',
	['&brvbar;'] = '¦',
	['&sect;'] = '§',
	['&uml;'] = '¨',
	['&copy;'] = '©',
	['&ordf;'] = 'ª',
	['&laquo;'] = '«',
	['&not;'] = '¬',
	['&shy;'] = ' ',
	['&reg;'] = '®',
	['&macr;'] = '¯',
	['&deg;'] = '°',
	['&plusmn;'] = '±',
	['&sup2;'] = '²',
	['&sup3;'] = '³',
	['&acute;'] = '´',
	['&micro;'] = 'µ',
	['&para;'] = '¶',
	['&middot;'] = '·',
	['&cedil;'] = '¸',
	['&sup1;'] = '¹',
	['&ordm;'] = 'º',
	['&raquo;'] = '»',
	['&frac14;'] = '¼',
	['&frac12;'] = '½',
	['&frac34;'] = '¾',
	['&iquest;'] = '¿',
	['&Agrave;'] = 'À',
	['&Aacute;'] = 'Á',
	['&Acirc;'] = 'Â',
	['&Atilde;'] = 'Ã',
	['&Auml;'] = 'Ä',
	['&Aring;'] = 'Å',
	['&AElig;'] = 'Æ',
	['&Ccedil;'] = 'Ç',
	['&Egrave;'] = 'È',
	['&Eacute;'] = 'É',
	['&Ecirc;'] = 'Ê',
	['&Euml;'] = 'Ë',
	['&Igrave;'] = 'Ì',
	['&Iacute;'] = 'Í',
	['&Icirc;'] = 'Î',
	['&Iuml;'] = 'Ï',
	['&ETH;'] = 'Ð',
	['&Ntilde;'] = 'Ñ',
	['&Ograve;'] = 'Ò',
	['&Oacute;'] = 'Ó',
	['&Ocirc;'] = 'Ô',
	['&Otilde;'] = 'Õ',
	['&Ouml;'] = 'Ö',
	['&times;'] = '×',
	['&Oslash;'] = 'Ø',
	['&Ugrave;'] = 'Ù',
	['&Uacute;'] = 'Ú',
	['&Ucirc;'] = 'Û',
	['&Uuml;'] = 'Ü',
	['&Yacute;'] = 'Ý',
	['&THORN;'] = 'Þ',
	['&szlig;'] = 'ß',
	['&agrave;'] = 'à',
	['&aacute;'] = 'á',
	['&acirc;'] = 'â',
	['&atilde;'] = 'ã',
	['&auml;'] = 'ä',
	['&aring;'] = 'å',
	['&aelig;'] = 'æ',
	['&ccedil;'] = 'ç',
	['&egrave;'] = 'è',
	['&eacute;'] = 'é',
	['&ecirc;'] = 'ê',
	['&euml;'] = 'ë',
	['&igrave;'] = 'ì',
	['&iacute;'] = 'í',
	['&icirc;'] = 'î',
	['&iuml;'] = 'ï',
	['&eth;'] = 'ð',
	['&ntilde;'] = 'ñ',
	['&ograve;'] = 'ò',
	['&oacute;'] = 'ó',
	['&ocirc;'] = 'ô',
	['&otilde;'] = 'õ',
	['&ouml;'] = 'ö',
	['&divide;'] = '÷',
	['&oslash;'] = 'ø',
	['&ugrave;'] = 'ù',
	['&uacute;'] = 'ú',
	['&ucirc;'] = 'û',
	['&uuml;'] = 'ü',
	['&yacute;'] = 'ý',
	['&thorn;'] = 'þ',
	['&yuml;'] = 'ÿ',
	['&OElig;'] = 'Œ',
	['&oelig;'] = 'œ',
	['&Scaron;'] = 'Š',
	['&scaron;'] = 'š',
	['&Yuml;'] = 'Ÿ',
	['&fnof;'] = 'ƒ',
	['&circ;'] = 'ˆ',
	['&tilde;'] = '˜',
	['&Alpha;'] = 'Α',
	['&Beta;'] = 'Β',
	['&Gamma;'] = 'Γ',
	['&Delta;'] = 'Δ',
	['&Epsilon;'] = 'Ε',
	['&Zeta;'] = 'Ζ',
	['&Eta;'] = 'Η',
	['&Theta;'] = 'Θ',
	['&Iota;'] = 'Ι',
	['&Kappa;'] = 'Κ',
	['&Lambda;'] = 'Λ',
	['&Mu;'] = 'Μ',
	['&Nu;'] = 'Ν',
	['&Xi;'] = 'Ξ',
	['&Omicron;'] = 'Ο',
	['&Pi;'] = 'Π',
	['&Rho;'] = 'Ρ',
	['&Sigma;'] = 'Σ',
	['&Tau;'] = 'Τ',
	['&Upsilon;'] = 'Υ',
	['&Phi;'] = 'Φ',
	['&Chi;'] = 'Χ',
	['&psi;'] = 'ψ',
	['&omega;'] = 'ω',
	['&thetasym;'] = 'ϑ',
	['&upsih;'] = 'ϒ',
	['&piv;'] = 'ϖ',
	['&ensp;'] = ' ',
	['&emsp;'] = ' ',
	['&thinsp;'] = ' ',
	['&zwnj;'] = ' ',
	['&zwj;'] = ' ',
	['&lrm;'] = ' ',
	['&rlm;'] = ' ',
	['&ndash;'] = '–',
	['&mdash;'] = '—',
	['&lsquo;'] = '‘',
	['&rsquo;'] = '’',
	['&sbquo;'] = '‚',
	['&ldquo;'] = '“',
	['&rdquo;'] = '”',
	['&bdquo;'] = '„',
	['&dagger;'] = '†',
	['&Dagger;'] = '‡',
	['&bull;'] = '•',
	['&hellip;'] = '…',
	['&permil;'] = '‰',
	['&prime;'] = '′',
	['&Prime;'] = '″',
	['&lsaquo;'] = '‹',
	['&lsaquo;'] = '›',
	['&rsaquo;'] = '›',
	['&oline;'] = '‾',
	['&frasl;'] = '⁄',
	['&euro;'] = '€',
	['&image;'] = 'ℑ',
	['&weierp;'] = '℘',
	['&real;'] = 'ℜ',
	['&trade;'] = '™',
	['&alefsym;'] = 'ℵ',
	['&larr;'] = '←',
	['&uarr;'] = '↑',
	['&rarr;'] = '→',
	['&darr;'] = '↓',
	['&harr;'] = '↔',
	['&crarr;'] = '↵',
	['&lArr;'] = '⇐',
	['&uArr;'] = '⇑',
	['&rArr;'] = '⇒',
	['&dArr;'] = '⇓',
	['&hArr;'] = '⇔',
	['&forall;'] = '∀',
	['&part;'] = '∂',
	['&exist;'] = '∃',
	['&empty;'] = '∅',
	['&nabla;'] = '∇',
	['&isin;'] = '∈',
	['&notin;'] = '∉',
	['&ni;'] = '∋',
	['&prod;'] = '∏',
	['&sum;'] = '∑',
	['&minus;'] = '−',
	['&lowast;'] = '∗',
	['&radic;'] = '√',
	['&prop;'] = '∝',
	['&infin;'] = '∞',
	['&ang;'] = '∠',
	['&and;'] = '∧',
	['&or;'] = '∨',
	['&cap;'] = '∩',
	['&cup;'] = '∪',
	['&int;'] = '∫',
	['&there4;'] = '∴',
	['&sim;'] = '∼',
	['&cong;'] = '≅',
	['&asymp;'] = '≈',
	['&ne;'] = '≠',
	['&equiv;'] = '≡',
	['&le;'] = '≤',
	['&ge;'] = '≥',
	['&sub;'] = '⊂',
	['&sup;'] = '⊃',
	['&nsub;'] = '⊄',
	['&sube;'] = '⊆',
	['&supe;'] = '⊇',
	['&oplus;'] = '⊕',
	['&otimes;'] = '⊗',
	['&perp;'] = '⊥',
	['&sdot;'] = '⋅',
	['&lceil;'] = '⌈',
	['&rceil;'] = '⌉',
	['&lfloor;'] = '⌊',
	['&rfloor;'] = '⌋',
	['&lang;'] = '〈',
	['&rang;'] = '〉',
	['&loz;'] = '◊',
	['&spades;'] = '♠',
	['&clubs;'] = '♣',
	['&hearts;'] = '♥',
	['&diams;'] = '♦',
	['&#32;'] = ' ',
	['&#33;'] = '!',
	['&#34;'] = '"',
	['&#35;'] = '#',
	['&#36;'] = '$',
	['&#37;'] = '%',
	['&#38;'] = '&',
	['&#39;'] = "'",
	['&#40;'] = '(',
	['&#41;'] = ')',
	['&#42;'] = '*',
	['&#43;'] = '+',
	['&#44;'] = ',',
	['&#45;'] = '-',
	['&#46;'] = '.',
	['&#47;'] = '/',
	['&#160;'] = ' ',
	['&#338;'] = 'Œ',
	['&#339;'] = 'œ',
	['&#352;'] = 'Š',
	['&#353;'] = 'š',
	['&#376;'] = 'Ÿ',
	['&#402;'] = 'ƒ',
	['&#8211;'] = '–',
	['&#8212;'] = '—',
	['&#8216;'] = '‘',
	['&#8217;'] = '’',
	['&#8218;'] = '‚',
	['&#8220;'] = '“',
	['&#8221;'] = '”',
	['&#8222;'] = '„',
	['&#8224;'] = '†',
	['&#8225;'] = '‡',
	['&#8226;'] = '•',
	['&#8230;'] = '…',
	['&#8240;'] = '‰',
	['&#8364;'] = '€',
	['&#8482;'] = '™'
}

function htmlEntities.ASCII_DEC (input)
	if not input then print('htmlEntities[ASCII_DEC] >> ERRO: input is value nil') return false end
	if string.len(input) == 2 then
		input = tonumber(input, 16)
		local output = htmlEntities.ASCII_HEX(input)
		return output
	else
		return input
	end
end

function htmlEntities.ASCII_HEX (input)
	if not input then print('htmlEntities[ASCII_HEX] >> ERRO: input is value nil') return false end
	if math.abs(input) < 256 then
		if _VERSION == 'Lua 5.3' then
			return utf8.char(input)
		else
			local output = string.char(input)
			if utf8_htmlEntities and not output:match('([%z\1-\127\194-\244][\128-\191]*)') then
				return input
			end
			return output
		end
	else
		return input
	end
end

function htmlEntities.decode (input)
	if not input then print('htmlEntities[decode] >> ERRO: input is value nil') return false end
	local output = string.gsub(input, '&.-;', htmlEntities_table)
	if ASCII_htmlEntities then
		output = string.gsub(output, '&#x([1234567890]*);', htmlEntities.ASCII_DEC)
		output = string.gsub(output, '&#([1234567890]*);', htmlEntities.ASCII_HEX)
	end

	if debug_htmlEntities then print('>>'..output) end
	return output
end

function htmlEntities.encode (input)
	if not input then print('htmlEntities[encode] >> ERRO: input is value nil') return false end
	input = htmlEntities.decode(input)
	local output = ''
	for k = 1, string.len(input) do
		local input = string.sub(input,k,k)
		output = output .. '&#'.. input:byte() ..';'
	end

	if debug_htmlEntities then print('>>'..output) end
	return output
end

return htmlEntities
