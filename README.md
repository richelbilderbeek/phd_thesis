# Thesis

Branch   |[![Travis CI logo](pics/TravisCI.png)](https://travis-ci.com)
---------|-------------------------------------------------------------------------------------------------------------------------------------------
`master` |[![Build Status](https://travis-ci.com/richelbilderbeek/phd_thesis.svg?branch=master)](https://travis-ci.com/richelbilderbeek/phd_thesis)
`develop`|[![Build Status](https://travis-ci.com/richelbilderbeek/phd_thesis.svg?branch=develop)](https://travis-ci.com/richelbilderbeek/phd_thesis)

Use LaTeX template from [Victor Caldas](https://github.com/vcaldas/Groningen-thesis-template).

## Usage

Run the following command to build the PDF:

```
make
```

## Downloads

 * [thesis](https://github.com/richelbilderbeek/phd_thesis/releases/download/v1.9/thesis.pdf)
 * [cover](https://github.com/richelbilderbeek/phd_thesis/releases/download/v1.9/146201.Bilderbeek.R9.OMS_1.pdf)
 * [propositions](https://github.com/richelbilderbeek/phd_thesis/releases/download/v1.9/propositions.pdf)

## Dependenies

Chapter                                                                       |Build status
------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------
[thesis_introduction](https://github.com/richelbilderbeek/thesis_introduction)|[![Build Status](https://travis-ci.com/richelbilderbeek/thesis_introduction.svg?branch=master)](https://travis-ci.com/richelbilderbeek/thesis_introduction)
[babette_article](https://github.com/richelbilderbeek/babette_article)        |[![Build Status](https://travis-ci.com/richelbilderbeek/babette_article.svg?branch=master)](https://travis-ci.com/richelbilderbeek/babette_article)
[pirouette_article](https://github.com/richelbilderbeek/pirouette_article)    |[![Build Status](https://travis-ci.com/richelbilderbeek/pirouette_article.svg?branch=master)](https://travis-ci.com/richelbilderbeek/pirouette_article)
[razzo_article](https://github.com/richelbilderbeek/razzo_article)            |[![Build Status](https://travis-ci.com/richelbilderbeek/razzo_article.svg?branch=master)](https://travis-ci.com/richelbilderbeek/razzo_article)
[thesis_synthesis](https://github.com/richelbilderbeek/thesis_synthesis)      |[![Build Status](https://travis-ci.com/richelbilderbeek/thesis_synthesis.svg?branch=master)](https://travis-ci.com/richelbilderbeek/thesis_synthesis)
[thesis_samenvatting](https://github.com/richelbilderbeek/thesis_samenvatting)|[![Build Status](https://travis-ci.com/richelbilderbeek/thesis_samenvatting.svg?branch=master)](https://travis-ci.com/richelbilderbeek/thesis_samenvatting)
[thesis_summary](https://github.com/richelbilderbeek/thesis_summary)          |[![Build Status](https://travis-ci.com/richelbilderbeek/thesis_summary.svg?branch=master)](https://travis-ci.com/richelbilderbeek/thesis_summary)
[thesis_propositions](https://github.com/richelbilderbeek/thesis_propositions)|[![Build Status](https://travis-ci.com/richelbilderbeek/thesis_propositions.svg?branch=master)](https://travis-ci.com/richelbilderbeek/thesis_propositions)

## Data

Data                  |Type          |DOI (archived version of repository)    |Current reposity
----------------------|--------------|----------------------------------------|--------------------------------------------------------
thesis                |Document      |`https://doi.org/10.5281/zenodo.3975586`|`https://github.com/richelbilderbeek/phd_thesis`
Introduction          |Document      |`https://doi.org/10.5281/zenodo.3975594`|`https://github.com/richelbilderbeek/thesis_introduction`
babette_article       |Document      |`https://doi.org/10.5281/zenodo.3755555`|`https://github.com/richelbilderbeek/babette_article`
babette v2.1.3        |Software      |`https://doi.org/10.5281/zenodo.3974129`|`https://github.com/ropensci/babette`
pirouette_article v1.3|Document      |`https://doi.org/10.5281/zenodo.3969845`|`https://github.com/richelbilderbeek/pirouette_article`
pirouette_examples    |Data          |`https://doi.org/10.5281/zenodo.3970000`|`https://github.com/richelbilderbeek/pirouette_examples`
pirouette v1.6.4      |Software      |`https://doi.org/10.5281/zenodo.3969839`|`https://github.com/richelbilderbeek/pirouette`
razzo_article v1.0    |Document      |`https://doi.org/10.5281/zenodo.3969899`|`https://github.com/richelbilderbeek/razzo_article`
razzo v1.0            |Software      |`https://doi.org/10.5281/zenodo.3970327`|`https://github.com/richelbilderbeek/razzo`
razzo_project         |Data          |`https://doi.org/10.5281/zenodo.3969932`|`https://github.com/richelbilderbeek/razzo_project`
Synthesis             |Document      |`https://doi.org/10.5281/zenodo.3975597`|`https://github.com/richelbilderbeek/thesis_synthesis`
Summary               |Document      |`https://doi.org/10.5281/zenodo.3975601`|`https://github.com/richelbilderbeek/thesis_summary`
Samenvatting          |Document      |`https://doi.org/10.5281/zenodo.3975606`|`https://github.com/richelbilderbeek/thesis_samenvatting`

## Corona 

Name              |Role
------------------|----------
Han Olff          |Chairman
Daniel Raboski    |Opponent
Ernst Wit         |Opponent
Florian Hartig    |Opponent
Hanno Hildenbrandt|Opponent
Luke Harmon       |Opponent
Thijs Janzen      |Opponent

## FAQ

### Hey, there is [something sloppy] in your thesis!

Agreed, examples are:

 * front page: `Zernike Institute PhD thesis series 20[YY]-[MM]` -> `Zernike Institute PhD thesis series 2020-09`
 * front page: `Printed by: [name of printer]` -> `Printed by: Ridderprint B.V.`
 * page 61: chapter indicator overlaps with table
 * many more

These things are seen as features, to remind us that never ever is really
done and we should move on before things are perfect.

## Feedback on thesis

### Luke Harmon

I will comment here only on the heart of the thesis, chapters 2-4. My thoughts on some of the things in chapters 1 and 5 are reflected in my positive assessment and in the associated motivation section. Briefly, I greatly respect the quality and quantity of open-source code associated with this thesis, and the careful attention to documentation and potential reuse.

In chapter 2, the authors present babette, a new R package. This package allows users to run the program BEAST2 and interpret its results from within R. There is an art to running BEAST2, and new users frequently require quite a lot of guidance to get up to speed with running the software using the typical tools. babette supplies a much-needed alternative. Additionally, since many post-tree-building analyses are done in R, one can create a script that runs all analyses, from DNA sequences to phylogeny building to addressing macroevolutionary hypotheses, in a single script. The package is well-documented and supported by the developer, who maintains an active presence on the github issues page. I think that this is a fantastic product, and it is clearly already in use in the community.

Chapter 3 introduces pirouette, an R package designed to evaluate the importance of the tree prior in a Bayesian analysis. The software compares the shapes of given phylogenetic trees to those inferred from simulated sequence data using BEAST2 (via babette). There is great flexibility in both the original trees and in the metric used to compare them to the reconstructed trees. The software also includes "twinning," a process that allows users to isolate the error due to the tree prior. Results from one simulation are presented, showing that in this case, the choice of an incorrect prior that ignores diversity dependent speciation leads to error in inference. As with babette, the R package associated with this chapter is exceptionally well done. The supplied pipeline is potentially useful as well. In this case, there are a couple competing approaches out there, as cited by the authors, and so the utility of this approach compared to alternatives remains to be seen. A more direct comparison especially one using empirical datasets as examples - would be extremely valuable. It is also not entirely clear how much of a deviation is "meaningful" - and one can see a range of effects throughout the examples in the supplement of the chapter. In any case, this is potentially very useful. It is also worth noting that the pipeline in pirouette can be used for numerous things beyond what is presented here, since the code allows such flexibility.

Finally, in Chapter 4 the authors extend their pirouette method to study the effects of a species-pump model on diversification inference. Under this model, occasionally all lineages in a phylogenetic tree simultaneously experience a speciation event. This is a new model - at least, new to me, in that I have not seen it explicitly discussed in the literature before. This model is potentially interesting, and I agree with the authors that one might expect such trees to deviate strongly from the assumptions of the birth-death prior. The authors conclusions in this chapter are a bit unsatisfying. As pointed out by the authors, the lack of differences in error could be due to several fundamentally different factors, from lack of convergence in some runs to a limitation of the test statistic. This prevents one from drawing general conclusions from the results as they stand now. Nonetheless, the approach is interesting, and with some more work I think the authors could identify and characterize the effects of this species-pump model more fully.

Overall, I think this is a quality thesis, and I congratulate you on your accomplishments.

### Florian Hartig

> As said in my motivation, I enjoyed reading this text. The introduction and the question for the thesis was presented unusually crisp. In particular the overall research questions of the thesis is crystal clear. As a minor (optional) comment, I would suggest that the summary of the main chapters at the end of the introduction could be slightly expanded, either in the text, or possibly in a table / figure. A table would also provide the opportunity to clarify the publication status and availability of the manuscripts. I see that the first paper has been published in MEE, and at least one other is on bioArxiv? My main comment regarding the scientific results of this work is that, especially given the substantial investment of time for building this pipeline, it is somewhat unfortunate that there was no time left to examine the influence of the tree prior in more detail. I was not fully convinced (and I think neither are you) that a wrong tree prior is always so inconsequential as it turned out to be in the case of the multiple birth death (MBD) model. My suspicion is that this model, while possibly of theoretical interest, is as a generative model nearly undistinguishable from a standard BD model, as that therefore differences in tree topology only occur locally (e.g. a double branching event, where in the standard BD model, you would have two single branching events, but if you zoom out, it’s more or less the same). I would suspect that generative models that lead to topologically more distinct trees also lead to stronger differences in the inference of the tree. I realize, however, that you are probably aware of all this (it is also discussed in the text), and that only the issue of time prevented you to further explore these points. I therefore do not see a need to do any changes to the text regarding these points, unless you want to make some clarifications in the light of these remarks. The final discussion section was somewhat unusual to read, as it provides a really wide sweep of topics and arguments beyond the immediate scientific questions of the thesis. I refer to topics such as “what is the purpose of science”, the OS framework, but also the various attempts to quantify the value of scientific software. I have no formal objection to this part; in fact, I found it rather refreshing. Nevertheless, I would note that it did appear to me a bit defensive at times, in particular where comments relate to the value of this work, and how to measure it. Again, there is no need to make changes here from my side. None of what is said here is factually wrong, and I feel you should have the right to summarize your PhD in the way you want. Still, if you want to make changes to this part, my recommendation would be to direct the attention more forward, to the question of if and how we can infer accurate phylogenetic trees from molecular data, rather than spending time in the past and in side discussions. But again, this is a fully optional comment, no requirement to make changes.
> 
> As a last comment, although it is clearly too early to congratulate, I wanted to close by saying that I truly appreciate the work that has been done here. I think it’s important to get a better appreciation of the robustness of these tools that are fundamental to the entire field, and I feel that this work makes a small, but nevertheless important step in this direction.
> 
> As said in my motivation, I enjoyed reading this text. The introduction and the question for the thesis was presented unusually crisp. In particular the overall research questions of the thesis is crystal clear. As a minor (optional) comment, I would suggest that the summary of the main chapters at the end of the introduction could be slightly expanded, either in the text, or possibly in a table / figure. A table would also provide the opportunity to clarify the publication status and availability of the manuscripts. I see that the first paper has been published in MEE, and at least one other is on bioArxiv? My main comment regarding the scientific results of this work is that, especially given the substantial investment of time for building this pipeline, it is somewhat unfortunate that there was no time left to examine the influence of the tree prior in more detail. I was not fully convinced (and I think neither are you) that a wrong tree prior is always so inconsequential as it turned out to be in the case of the multiple birth death (MBD) model. My suspicion is that this model, while possibly of theoretical interest, is as a generative model nearly undistinguishable from a standard BD model, as that therefore differences in tree topology only occur locally (e.g. a double branching event, where in the standard BD model, you would have two single branching events, but if you zoom out, it’s more or less the same). I would suspect that generative models that lead to topologically more distinct trees also lead to stronger differences in the inference of the tree. I realize, however, that you are probably aware of all this (it is also discussed in the text), and that only the issue of time prevented you to further explore these points. I therefore do not see a need to do any changes to the text regarding these points, unless you want to make some clarifications in the light of these remarks. The final discussion section was somewhat unusual to read, as it provides a really wide sweep of topics and arguments beyond the immediate scientific questions of the thesis. I refer to topics such as “what is the purpose of science”, the OS framework, but also the various attempts to quantify the value of scientific software. I have no formal objection to this part; in fact, I found it rather refreshing. Nevertheless, I would note that it did appear to me a bit defensive at times, in particular where comments relate to the value of this work, and how to measure it. Again, there is no need to make changes here from my side. None of what is said here is factually wrong, and I feel you should have the right to summarize your PhD in the way you want. Still, if you want to make changes to this part, my recommendation would be to direct the attention more forward, to the question of if and how we can infer accurate phylogenetic trees from molecular data, rather than spending time in the past and in side discussions. But again, this is a fully optional comment, no requirement to make changes.
> 
> As a last comment, although it is clearly too early to congratulate, I wanted to close by saying that I truly appreciate the work that has been done here. I think it’s important to get a better appreciation of the robustness of these tools that are fundamental to the entire field, and I feel that this work makes a small, but nevertheless important step in this direction.

Regarding this, Giovanni Laudanno has responded with this:

> As MBD was mentioned I feel that I can add something more to the discussion.
> A possibility is that pirouette was unable to find differences between the generative MBD tree as compared with the posterior BD trees because the statistics used to compute the errors was not adequate.
> With my coauthors we are currently employing a different statistics (Distance from Nearest Branching Time, or DNBT) that instead seems to highlight the fundamental differences between the two model. What our data results seems to suggest is that the signal that best explain this difference is the clustering of the branching times, properly captured by DNBT.
> For additional information you can contact me in private form, as this data is likely to be used in a future publication.

## Links

 * [My PhD defense](https://github.com/richelbilderbeek/phd_defense)
 * [RuG thesis download page](https://www.rug.nl/research/portal/nl/publications/speciation-and-the-error-we-make-in-phylogenetic-inference(95d847f2-8b46-420e-9eb3-2850b828577e).html)

