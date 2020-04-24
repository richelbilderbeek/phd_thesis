repo_names = \
  thesis_introduction \
  babette_article \
  #pirouette_article \
  #razzo_article \
  #thesis_synthesis \
  thesis_summary \
  thesis_samenvatting

makefile_names = $(foreach repo_name,$(repo_names),$(repo_name)/Makefile)

all: thesis.pdf

thesis.pdf: dissertation.tex $(makefile_names)
	./create.sh
	./view.sh

$(repo_names):
	git clone -b develop https://github.com/richelbilderbeek/$@.git

$(makefile_names): $(repo_names)
	cd $(dir $@) && $(MAKE)

clean:
	rm -rf $(repo_names)




