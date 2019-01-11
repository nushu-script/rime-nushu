UnicodeNushu.zip :
	wget -O data.csv https://nushuscript.org/unicode_nushu/data.csv
	stack runhaskell -- -Wall -Werror makeopencc < data.csv > s2nushu.txt
	7za a $@ unicode_nushu_romanization.dict.yaml unicode_nushu_romanization.schema.yaml luna_pinyin_nushu.schema.yaml s2nushu.json s2nushu.txt

clean :
	rm -f data.csv s2nushu.txt
