repo_names = \
  thesis_introduction \
  babette_article \
  pirouette_article \
  razzo_article \
  thesis_synthesis \
  thesis_summary \
  thesis_samenvatting

makefile_names = $(foreach repo_name,$(repo_names),$(repo_name)/Makefile)

all: thesis.pdf

thesis.pdf: dissertation.tex $(makefile_names) pirouette_example_30/example_30_314/esses_gen.latex
	./create.sh
	./view.sh

pirouette_example_30/example_30_314/esses_gen.latex:
	git clone --depth 1 --branch develop https://github.com/richelbilderbeek/pirouette_example_30

$(repo_names):
	git clone --depth 1 --branch develop https://github.com/richelbilderbeek/$@.git

$(makefile_names): $(repo_names)
	cd $(dir $@) && $(MAKE)

clean:
	rm -rf $(repo_names)




