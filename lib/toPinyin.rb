
require 'iconv'
require './toPinyin/uniToPyMap'


#The string should be UTF-8 encoded
class String

def toPinyinAAA(char,encoding="utf-8")
#conver to unicode
u = Iconv.iconv("UNICODEBIG",encoding,char)[0].each_byte.map {|b| b.to_s(16)}.join
#find the pinyin
uniToPyMap[u.upcase]
end

def pinyin 
	scan(/./mu).map do |c| 
	    #conver to unicode
		u = Iconv.iconv("UNICODEBIG","utf-8",c)[0].each_byte.map {|b| b.to_s(16)}.join
		uniToPyMap[u.upcase]
 	end
end

end
