
require 'toPinyin'

s = "春花秋月何时了"
#puts s.utf8?
raise "toUTF8 faild" if  s.utf8 !=  ["e698a5", "e88ab1", "e7a78b", "e69c88", "e4bd95", "e697b6", "e4ba86"]
raise "toPinyin faild" if s.pinyin != ["chun", "hua", "qiu", "yue", "he", "shi", "liao"]
raise "toUnicode failed" if s.unicode != ["6625", "82B1", "79CB", "6708", "4F55", "65F6", "4E86"]


#let's sort it 

words = "
检查
我们
的二
进制
是否
适合
你的
平台".split("\n")

#for debug
#words.each {|w| puts w.pinyin.inspect ; puts w.unicode.inspect ; puts w.utf8.inspect}
words.sort! {|a ,b|   a.pinyin.join <=> b.pinyin.join }

sorted = "
的二
检查
进制
你的
平台
适合
是否
我们".split("\n")

raise "sort failed" if words.join != sorted.join

