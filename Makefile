repo_names = \
  thesis_introduction \
  babette_article \
  pirouette_article \
  razzo_article \
  thesis_synthesis \
  thesis_propositions \
  thesis_summary \
  thesis_samenvatting

makefile_names = $(foreach repo_name,$(repo_names),$(repo_name)/Makefile)

pirouette_filename = \
  pirouette_example_30/example_30/phylogeny.newick

all: thesis.pdf

thesis.pdf: dissertation.tex $(makefile_names) $(pirouette_filename)
	cp pirouette_article/pirouette_article.bib pirouette_article/pirouette_supplement.bib
	cp pirouette_article/pirouette_article.bib .
	cp pirouette_article/pirouette_supplement.bib .
	./create.sh
	./view.sh

$(repo_names):
	git clone https://github.com/richelbilderbeek/$@.git

$(makefile_names): $(repo_names)
	cd $(dir $@) && $(MAKE)

# pirouette example 30
$(pirouette_filename):
	cp -r pirouette_article/pirouette_example_30 .

clean:
	rm -rf $(repo_names) pirouette_example_30 *.aux *.log *.out *.toc


