
require 'toPinyin'

s = "春花秋月何时了"
puts s.utf8?
puts s.utf8.inspect
puts s.pinyin.inspect
puts s.unicode.inspect


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

puts words 

words.each {|w| puts w.pinyin.inspect ; puts w.unicode.inspect ; puts w.utf8.inspect}
words.sort! {|a ,b|   a.pinyin.join <=> b.pinyin.join }

puts words

