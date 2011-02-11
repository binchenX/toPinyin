
require 'iconv'
require './toPinyin/uniToPyMap'


#The string should be UTF-8 encoded
class String
 # taken from: http://www.w3.org/International/questions/qa-forms-utf-8
   UTF8REGEX = /\A(?:                               # ?: non-capturing group (grouping with no back references)
                 [\x09\x0A\x0D\x20-\x7E]            # ASCII
               | [\xC2-\xDF][\x80-\xBF]             # non-overlong 2-byte
               |  \xE0[\xA0-\xBF][\x80-\xBF]        # excluding overlongs
               | [\xE1-\xEC\xEE\xEF][\x80-\xBF]{2}  # straight 3-byte
               |  \xED[\x80-\x9F][\x80-\xBF]        # excluding surrogates
               |  \xF0[\x90-\xBF][\x80-\xBF]{2}     # planes 1-3
               | [\xF1-\xF3][\x80-\xBF]{3}          # planes 4-15
               |  \xF4[\x80-\x8F][\x80-\xBF]{2}     # plane 16
               )*\z/mnx


def utf8?	
	self =~ UTF8REGEX
end


def utf8
	scan(/./mu).map {|c| c.each_byte.inject(""){|o, b| o+b.to_s(16)}}	
end

def unicode

	scan(/./mu).map do |c| 
	    #conver to unicode
		Iconv.iconv("UNICODEBIG","utf-8",c)[0].each_byte.map {|b| b.to_s(16)}.join
	end
end

def pinyin 
	scan(/./mu).map do |c| 
	    #conver to unicode
		u = Iconv.iconv("UNICODEBIG","utf-8",c)[0].each_byte.map {|b| b.to_s(16)}.join
		uniToPyMap[u.upcase]
 	end
end

end
