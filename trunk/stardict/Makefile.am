if BUILD_STARDICT
CLEANFILES = *.dict.dz *.tab *.ifo *.idx

SUFFIXES = .dict.dz .tab .ifo .idx

stardictdata_DATA = \
	longdo_de_th.dict.dz	\
	longdo_de_th.idx	\
	longdo_de_th.ifo	\
	longdo_en_th.dict.dz	\
	longdo_en_th.idx	\
	longdo_en_th.ifo	\
	longdo_fr_th.dict.dz	\
	longdo_fr_th.idx	\
	longdo_fr_th.ifo	\
	longdo_jp_th.dict.dz	\
	longdo_jp_th.idx	\
	longdo_jp_th.ifo	\
	longdo_others.dict.dz	\
	longdo_others.idx	\
	longdo_others.ifo

%.tab: $(top_srcdir)/%.txt
	tail -n +2 $< > $@

.tab.ifo:
.tab.idx:
.tab.dict.dz:
	$(TABFILE) $<

endif

