UnicodeNushu.zip : s2nushu.txt
	7za a $@ unicode_nushu_romanization.dict.yaml unicode_nushu_romanization.schema.yaml luna_pinyin_nushu.schema.yaml s2nushu.json s2nushu.txt

data.csv :
	wget -O $@ https://nushuscript.org/unicode_nushu/data.csv

.PRECIOUS: s2nushu.txt
s2nushu.txt : data.csv
	stack runhaskell --package split --package multimap -- -Wall -Werror MakeOpenCC.hs < $< > $@

clean :
	rm -f UnicodeNushu.zip data.csv s2nushu.txt
