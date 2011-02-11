
require 'iconv'
require './toPinyin/uniToPyMap'
module Topinyin

def self.toPinyin(char,encoding="utf-8")
#conver to unicode
u = Iconv.iconv("UNICODEBIG",encoding,char)[0].each_byte.map {|b| b.to_s(16)}.join
#find the pinyin
uniToPyMap[u.upcase]
end


puts Topinyin.toPinyin "中"



end
