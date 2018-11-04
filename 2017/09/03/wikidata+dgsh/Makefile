# DOTFLAGS from the dgsh Makefile
DOTFLAGS := -Nfontname=serif -Ngradientangle=90 -Nstyle=filled -Nshape=ellipse -Nfillcolor=yellow:white

.PHONY := all clean

all: index.html
index.html: post.html
	ln -sf $< $@

%.dot: %
	DGSH_DOT_DRAW=$< DGSH_DRAW_EXIT=1 dgsh $<

%.svg: %.dot
	dot $(DOTFLAGS) -Tsvg $< | sed '/polygon fill="white"/d' > $@

%.html: %.md basic.css post.css github.css
	cmark $< > $@
post.html: pipeline-bash.svg pipeline-dgsh.svg

clean:
	$(RM) *.dot *.svg *.html
