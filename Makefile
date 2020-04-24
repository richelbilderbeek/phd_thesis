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

$(repo_names):
	git clone --depth 1 --branch develop https://github.com/richelbilderbeek/$@.git

$(makefile_names): $(repo_names)
	cd $(dir $@) && $(MAKE)

clean:
	rm -rf $(repo_names) pirouette_example_30

# pirouette example 30
#
# The manuscript needs 'pirouette_example_30/example_30_314/esses_gen.latex'.
# Re-create it locally
#
pirouette_example_30/example_30_314/esses_gen.latex: pirouette_example_30/example_30/esses_gen.latex
	cd pirouette_example_30 && cp -r example_30 example_30_314

pirouette_example_30/example_30/esses_gen.latex: pirouette_example_30/errors.png

pirouette_example_30/errors.png: pirouette_example_30/pirouette_example_30.zip
	cd pirouette_example_30 && unzip -f pirouette_example_30.zip

pirouette_example_30/pirouette_example_30.zip:
	mkdir pirouette_example_30
	cd pirouette_example_30 && wget --no-clobber http://www.richelbilderbeek.nl/pirouette_example_30.zip




