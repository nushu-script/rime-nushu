UnicodeNushu.zip : data.csv
	stack runhaskell -- -Wall -Werror makeopencc.hs < $< > s2nushu.txt
	7za a $@ unicode_nushu_romanization.dict.yaml unicode_nushu_romanization.schema.yaml luna_pinyin_nushu.schema.yaml s2nushu.json s2nushu.txt

clean :
	rm -f s2nushu.txt
