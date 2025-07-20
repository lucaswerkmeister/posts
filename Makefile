.PHONY: all

RDF2RSS = ~lucas/git/rdf2rss/venv/bin/rdf2rss
RDF2RSSFLAGS = --description --limit=10
ROOT = https://lucaswerkmeister.de/posts/

all: index.rss wikimedia.rss

index.rss: .
	$(RDF2RSS) $(RDF2RSSFLAGS) $(ROOT) $@

%.rss: .
	$(RDF2RSS) $(RDF2RSSFLAGS) --keyword=$* $(ROOT) $@
