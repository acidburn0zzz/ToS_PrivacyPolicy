all: $(patsubst %.mkd,%.html,$(wildcard *.mkd))

%.html: %.mkd
	pandoc -f markdown -t html $< > $@
