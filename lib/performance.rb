require 'benchmark'
require 'toPinyin'


Benchmark.bm(10) do |x|

pinyins=[]
x.report("convert") {
1.times do 
words = "
人人
没有
理想
跟跟
咸鱼
有有
什么
区别
".split("\n")*100
pinyins = words.map {|w| w.pinyin}
end
}

x.report("sort:") {
pinyins.sort {|a , b| a <=> b}
}
end


