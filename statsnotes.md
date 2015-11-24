##### Statistics Notes  

* Standard deviation shows how much individuals within the same sample differ from the sample mean  
* Standard error shows how close your sample mean is to the population mean  

SD is the better measure to show the difference depends on the nature of data, SEM is always the measure of precision.  

Many people confuse the standard deviation (SD) and the standard error of the mean (SE) and are unsure which,
if either, to use in presenting data in graphical or tabular form. The SD is an index of the variability of the original
data points and should be reported in all studies. The SE reflects the variability of the mean values, as if the study
were repeated a large number of times. By itself, the SE is not particularly useful; however, it is used in constructing
95% and 99% confidence intervals (CIs), which indicate a range of values within which the “true” value lies. The
CI shows the reader how accurate the estimates of the population values actually are. If graphs are used, error
bars equal to plus and minus 2 SEs (which show the 95% CI) should be drawn around mean values. Both statistical
significance testing and CIs are useful because they assist the reader in determining the meaning of the findings.  

What is the probability (P) that the true (population) mean falls within a certain range of values?  

So, the SD reflects the variability of individual data points, and the SE is the variability of means.

se for binomial =  1/v4n   
[Source][1]    

===  

The LSMS and DHS data are sampled within an enumeration area (e.g. village). Since household observations are likely to be correlated within
these areas, we cluster our standard errors at the enumeration area level.  

* Simplicity, in many cases, means that a clear, communicable insight, has been found in the data. So a good visualization should always be, in some way, simple. Obviously complexity lives in the data, specially when there is collinearity in more than two or three dimensions. In those cases, on good strategy is to build 'multiple simplcitities', different visualizations that offer different views on the data, each one being simple, but building in the overall a more comprehensive perspective on the data. Imagine a table that contains multiple categories a numerical variables. One can focus on the correlations of the numerical variables, that could produce a network… and maybe that perspective is interesting. Another approach would be a matrix of scatter plots… and maybe some of those are particularly interesting and worth be represented isolated. Then, from the categorical lists one can find interesting relations, such as one being a sub-category of other, with some numbers being weights. That could lead to an interactive treemap in which the user can actually switch from numeric variables to assign weights, or color nodes according to a numerical threshold etc… I advocate for the multiplicity of approaches, specially in early fases of a project in which one wants to discover things in the data, and each approach being simple.

* The basic insight of randomization is a simple one: If units are randomly assigned to a treatment (and not self-selected in some way) then the only thing different between them and people not in treatment (“in expectation”) is the treatment and so later differences we see between them and people not getting the treatment must be due to the treatment.4

__definition of a p-value__ — the probability of getting results at least as extreme as the ones you observed, given that the null hypothesis is correct 

Imagine, he said, that you have a coin that you suspect is weighted toward heads. (Your null hypothesis is then that the coin is fair.) You flip it 100 times and get more heads than tails. The p-value won’t tell you whether the coin is fair, but it will tell you the probability that you’d get at least as many heads as you did if the coin was fair. That’s it — nothing more. And that’s about as simple as I can make it, which means I’ve probably oversimplified it and will soon receive exasperated messages from statisticians telling me so [538 Article][2].

[1]:  http://ww1.cpa-apc.org/Publications/Archives/PDF/1996/Oct/strein2.pdf  
[2]:  http://fivethirtyeight.com/features/not-even-scientists-can-easily-explain-p-values/  
