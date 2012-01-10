JADE = $(shell find *.jade)
HTML = $(JADE:.jade=.html)

STYLUS = $(shell find *.styl)
CSS = $(STYLUS:.styl=.css)

all: $(HTML) $(CSS)

%.html: %.jade
	jade < $< --path $< > $@

%.css: %.styl
	stylus < $< > $@

clean:
	rm -f $(HTML)
	rm -f $(CSS)

.PHONY: clean
