# R Learners Project

## Lecture 1

Tasks/ questions:  I’d recommend that you start with some basic tasks such as:
•	Import data (maybe one at a time or thinking about how you could import the seven files all in one go)

•	Explore data
-	Number of rows and columns
-	Column names
-	Content of columns ( what is stored where and how)
-	Range of the date variable ( earliest entry, latest entry)

•	Play around with the date variable and maybe transform it into a format that is easier to use (e.g. only includes year, month and day)
o	Next you could find out how many articles there have been in each month or how many of these have been published through ‘mirror.co.uk’

## Lecture (goals) 2

First, the comments about the code we’ve done so far (as seen on Github):
•	How to join two files together
•	Learn to loop -> Loop files in (for loop). Lisa insists it’s a crucial skill to have available and will come in handy with a lot of the tasks we’ll deal with in the future. Furthermore, it should help us to import the 8 csv files easier and faster. It also leads to code efficiency.
•	Dplyr fundamentals: filter, select, mutate, arrange
•	Lubridate for dates:  a suggested easy solution:
mutate(Date = lubridate::as_date(ymd_hms(dateTimeDocument))

Below are the goals/issue we should work towards and maybe even solve:
1.	Context
•	How often are urls meaningful, i.e. give further information on what the article is about (compared to non-telling, e.g. bbc.co.uk/news/12345)
•	How many URLs lead to websites that are actually still accessible vs. how many lead to errors?
2.	Using article count as measure of importance
•	How often are there duplicate articles? I.e. very similar urls posted by several news outlets or posted by the same new outlet several times (e.g. with just a different number at the end of url)?
•	 
3.	Better filters needed 
•	Comparing Themes & ThemesV2 -> which should we use for thematic filtering?
-> what's the difference other than location number being included in Themes V2 -> in different cases one has more themes included than the other -> any patterns?
4.	Find a better way to restrict to relevant locations 
•	e.g. first 150 characters have to contain UK location
•	First 10 entries have to contain UK location
•	Location restriction and UK source (e.g. co.uk)

Using ThemesV2 to identify peaks of hazards to find hazard events
Each could pick a different type of hazard (e.g. flooding / storms / heat or cold wave, i.e. extreme temperature)
-> try to find in dataset using the themes

## Lecture 2B- 
1.	There is a useful package that allows you to parse the url into different sections. You could use that, ignore the domain (e.g. bbc.co.uk) and only look at the rest of the url (using url_parse).
https://cran.r-project.org/web/packages/urltools/urltools.pdf

2.	Based on the rest part you could compute a similarity measure, something indicating how similar or different a string is to the others (rather than looking at whether or not it’s identical). 
This is a bit complicated, but is something that data science work often requires (distances between objects are needed for all kinds of clustering algorithms).
IF you want to have a look, I would try it on data for a single day or max two days to keep the number of articles low. I’d also only look at the first, say 15, characters per url (after having removed the domain) – again this should keep computation times down.
As a starting point, looking into the adist function could be explored or the general stringdist package
•	?adist
•	https://cran.r-project.org/web/packages/stringdist/stringdist.pdf
