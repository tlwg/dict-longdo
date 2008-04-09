LONGDO_SRC = \
	longdo_de_th.txt	\
	longdo_en_th.txt	\
	longdo_fr_th.txt	\
	longdo_jp_th.txt

EXTRA_DIST = \
	longdo.info		\
	parse_longdo.awk	\
	$(LONGDO_SRC)

dictdata_DATA = \
	longdo_de_th.dict.dz	\
	longdo_de_th.index	\
	longdo_en_th.dict.dz	\
	longdo_en_th.index	\
	longdo_fr_th.dict.dz	\
	longdo_fr_th.index	\
	longdo_jp_th.dict.dz	\
	longdo_jp_th.index

CLEANFILES = *.c5 *.dict *.dict.dz *.index

update-data:
	for f in longdo_{de,en,fr,jp}_th.txt; do \
	  wget -O $(srcdir)/$$f http://dict.longdo.com/data/$$f; \
	done

SUFFIXES = .txt .c5 .dict .dict.dz

.txt.c5:
	awk -f $(srcdir)/parse_longdo.awk $< > $@

longdo_de_th.dict.dz: $(srcdir)/longdo.info longdo_de_th.c5
	cat $^ | \
	  $(DICTFMT) -c5 \
	  -u http://dict.longdo.org/data/longdo_de_th.txt \
	  -s "Longdo German-Thai Dictionary" --without-info \
	  --allchars --utf8 longdo_de_th
	$(DICTZIP) longdo_de_th.dict

longdo_en_th.dict.dz: $(srcdir)/longdo.info longdo_en_th.c5
	cat $^ | \
	  $(DICTFMT) -c5 \
	  -u http://dict.longdo.org/data/longdo_en_th.txt \
	  -s "Longdo English-Thai Dictionary" --without-info \
	  --allchars --utf8 longdo_en_th
	$(DICTZIP) longdo_en_th.dict

longdo_fr_th.dict.dz: $(srcdir)/longdo.info longdo_fr_th.c5
	cat $^ | \
	  $(DICTFMT) -c5 \
	  -u http://dict.longdo.org/data/longdo_fr_th.txt \
	  -s "Longdo French-Thai Dictionary" --without-info \
	  --allchars --utf8 longdo_fr_th
	$(DICTZIP) longdo_fr_th.dict

longdo_jp_th.dict.dz: $(srcdir)/longdo.info longdo_jp_th.c5
	cat $^ | \
	  $(DICTFMT) -c5 \
	  -u http://dict.longdo.org/data/longdo_jp_th.txt \
	  -s "Longdo Japanese-Thai Dictionary" --without-info \
	  --allchars --utf8 longdo_jp_th
	$(DICTZIP) longdo_jp_th.dict

.PHONY: update-data
