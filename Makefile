JADE = $(shell find *.jade)
HTML = $(JADE:.jade=.html)

STYLUS = $(shell find *.styl)
CSS = $(STYLUS:.styl=.css)

STYLUS_PARAMETERS = -I /usr/local/lib/node_modules/nib/lib/

all: $(HTML) $(CSS)

%.html: %.jade
	jade < $< --path $< > $@

%.css: %.styl
	stylus --compress $(STYLUS_PARAMETERS) < $< > $@

clean:
	rm -f $(HTML) $(CSS)

.PHONY: clean
