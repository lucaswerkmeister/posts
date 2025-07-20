.PHONY: all

ROOT = https://lucaswerkmeister.de/posts/

all: index.rss wikimedia.rss

index.rss: .
	~lucas/git/rdf2rss/rdf2rss.py --description --limit=10 $(ROOT) $@

%.rss: .
	~lucas/git/rdf2rss/rdf2rss.py --description --limit=10 --keyword=$* $(ROOT) $@
