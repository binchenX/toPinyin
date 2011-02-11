require 'benchmark'
require 'toPinyin'


Benchmark.bm(15) do |x|

pinyins=[]
words = "
人人
没有
理想
跟跟
咸鱼
有有
什么
区别".split("\n")

#take 4 seconds
x.report("convert80") { pinyins = (words * 10).map {|w| w.pinyin} }
x.report("convert800") { pinyins = (words * 100).map {|w| w.pinyin} }
x.report("sort:") { pinyins.sort {|a , b| a <=> b}}
end


