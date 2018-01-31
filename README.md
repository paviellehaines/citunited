# The Policy Effects of Citizen's United

The files contained in this respository are part of a larger, ongoing project that seeks to undertand the effects of Citizen's United on state policy outcomes. For the protection of intellectual property, the data files are not provided. However, the code demonstrates the data cleaning, organization, and analyis procedures used. In addition to the code, several figures are provided to show the results derived from the code. A description of each file is provided below:

Individual Campaign Contributions.r: This code was used to combine and clean multiple reports from the Federal Election Comission detailing campaign contributions made between 1990 and 2015. The dataset contins information on the contributor type, contributor name, address, dollar amount, recipient name. The code aggregates campaign contributions by contributor type in each year and then combines the the years into a single dataset.

External Election Data.r: This code uses election data from state congressional races from 1990-2015. For each sitting state representative in each year, it identifies their most recent election and their margin of victory. Data from each year is combined into a single file. Additional variables intended to capture electoral competitiveness and partisan competition are generated.

Effects of CU Using Synthetic Analysis.r: This file evaluates the effect of Citizen's United on state policy outcomes using a natural experiment. Prior to Citizen's United (CU), roughly one-third of the states had a ban on political spending by corporations. Afer Citizen's United, these states were "treated" and forced change their laws. States withou a pre-CU spending ban represent a control. A sythnetic counterfactul is used to meet the parallel assumption criteria of difference-in-difference analysis.

Synthetic Predicitons by State.pdf: This image shows the synthetic counterfectual generated for each treatment state against their actual policy trends in corporate tax rates.

Synthetic Predictions for All States.pdf: This image shows the synthetic counterfactual generated for the aggregate corporate tax policy trends across all the treatment states. This is compared to the actual policy trend. The pre-CU fit is reasonably accurate, indicating that it is reasable to treat the post-CU difference in real and syntehtic corporate policy as a measure of the CU treatment effect.
