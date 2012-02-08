# encoding: utf-8
require 'toPinyin'

s = "春花秋月何时了"
#puts s.utf8?
raise "toUTF8 faild" if  s.utf8 !=  ["e698a5", "e88ab1", "e7a78b", "e69c88", "e4bd95", "e697b6", "e4ba86"]
raise "toPinyin faild" if s.pinyin != ["chun", "hua", "qiu", "yue", "he", "shi", "liao"]
raise "toUnicode failed" if s.unicode != ["6625", "82B1", "79CB", "6708", "4F55", "65F6", "4E86"]


#should return nil
puts "test".unicode.inspect
puts "test".utf8.inspect
raise "fail to convert english words" if "test".pinyin != ["t","e","s","t"]

#let's sort it 

words = "
人
没有
理想
跟
咸鱼
有
什么
区别
".split("\n")

#for debug
#words.each {|w| puts w.pinyin.inspect ; puts w.unicode.inspect ; puts w.utf8.inspect}
words.sort! {|a ,b|   a.pinyin.join <=> b.pinyin.join }

sorted = "
跟
理想
没有
区别
人
什么
咸鱼
有
".split("\n")

raise "sort failed" if words.join != sorted.join

