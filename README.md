# Graphing a moderation model (model 1) using R, PROCESS (source code) and the MD2C graphing template

## UNDER CONSTRUCION, PLEASE BE PATIENT...

This tutorial is about graphing a simple moderation model with the help of R with Hayes's PROCESS source code, and my MD2C graphing template.

Andrew Hayes developed the [PROCESS macro for mediation, moderation and conditional process analysis](http://www.processmacro.org/). He also wrote a fantastic book about it: [Introduction to Mediation, Moderation and Conditional Process Analysis](https://www.guilford.com/books/Introduction-to-Mediation-Moderation-and-Conditional-Process-Analysis/Andrew-Hayes/9781462549030).

I made several Excel templates to help you [graph conditional effects](https://www.md2c.nl/process-graphing-templates/), but these were always based on SPSS output only.

The good news is that Hayes also developed PROCESS for R. So now you can graph your conditional effects for free! Well, that is, nearly for free, as my templates are 3.99 EUR. But if you are a student or a researcher and you can't afford those expenses, just reach out to me!

## Prerequisites

### Book
First and foremost I would recommend you to buy and read Andrew Hayes' book:  [Introduction to Mediation, Moderation and Conditional Process Analysis](https://www.guilford.com/books/Introduction-to-Mediation-Moderation-and-Conditional-Process-Analysis/Andrew-Hayes/9781462549030).


### PROCESS source code for R with data
You can find the source code on the [Resource Hub](https://haskayne.ucalgary.ca/CCRAM/resource-hub)
 of the Canadian Centre for Research Analysis and Methods (CCRAM). Here you can find many resources, among which there is the [PROCESS macro for SPSS, SAS, and R](https://www.afhayes.com/public/processv43.zip). This zip file comes with the data as well.

 ### R
 And of course you need [R](https://cran.r-project.org/) to write the code and run the PROCESS formula. You might want to install an interface as well. I us [RStudio Desktop](https://posit.co/download/rstudio-desktop/).

 ### MD2C graphing template for model 1
 At my [webshop](https://www.md2c.nl/shop/) you can find the MD2C graohing template for model 1 (simple moderation).

## The case: climate change disasters and humanitarianism

The case that Hayes uses is based on the article of Chapman and Lickel (2016). It’s about a group of 211 people that read about famine in Africa caused by the droughts affecting the region. Half of the group got the information that climate change caused the drought, and the other half of the group did not get information about the cause of the drought. This resulted in a dichotomous variable called “FRAME”, with values 1 for those who received the climate change information, and 0 for those who didn’t get this information. After reading the article, they had to answer to what extent the agreed/disagreed to not help the victims. The score was captures in the continuous variable “JUSTIFY”, representing the strength of withholding aid to the victims. Finally, they got question regarding their belief in climate change, resulting in the continuous variable “SKEPTIC”, representing to what extent somebody is skeptic regarding climate change.

In this blog we are purely focusing on the graphing part. If you would like to know more about the case, I would highly recommend you to read the book.






