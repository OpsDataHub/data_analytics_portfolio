## **Summary**
 
In this project, we study how travel to and from the UK has changed, using the comparison between pre and post-pandemic. While the pandemic may not be considered officially over, many travel restrictions have now been lifted. We look at the top 10 best and worst performing years for travellers into the UK with data collected from 1980 to 2022 by ONS. The purpose of this project is to analyse the data provided to find different patterns in consumer behaviour, gain an understanding in how travel has been impacted and to see if any predictions can be made in how travel will be affected moving forward.

*You can find SQL scripts and CSV dataset in the repository file section above to see how the data was collected, cleaned and mined.*
<br>

## **Key Findings**

<details>
<summary>1.</summary>
<br>
 
Let's look at top 10 years for travelling into the UK, from 1980 to 2022.

![Highest 10 Years](https://user-images.githubusercontent.com/111752059/195595646-d4bb24e1-7608-466c-9bd7-f9f578121087.png)

Here we can see that there was consistent growth from 2012 - 2019. While 2006-07 performed well, 2008 - 2011 saw a significant drop compared to later years. Potential reason for this could be due to the 2008 economic crash that resulted in a global recession, meaning demand could've therefore dropped.

With the gradual increase from 2012, this could predict that if the pandemic may not have occurred, that travel to the UK would have continued to grow however, this can not be verified given the result of the pandmic.

</details>

<details>
<summary>2.</summary>
<br>

Next, let's look at the top 10 lowest performing years from 1980 - 2022. 

![Lowest 10 Years](https://user-images.githubusercontent.com/111752059/195595648-85fe4378-9eb8-4818-91ed-ad9610c3d68e.png)

The results show that there's a significant gap between 1987 and 2020, this would indicate that the drop in passengers travelling to the UK due to the pandemic, has decreased for the first time since 1987.

What's interesting about the results here is that 2020 was a more positive year than 2021, this could be due to the fact that, for the most part, Q1 of 2020 did not see any travel restrictions until late March when the WHO declared the pandemic. The lowest quarter and year was 2021, which saw Q1 as being the most underperforming year of all time from the data extracted and just a total of 6,000 passengers recorded (5.1%). This could be due to the lockdowns currently in place but also being a generally quiet season to travel in general.

</details>

<details>
<summary>3.</summary>
<br>

Let's compare pre vs post pandemic to see the changes or similarities, looking more specifically at Q2 in 2019 and 2022.

![Pre vs Post Pandemic Comparison](https://user-images.githubusercontent.com/111752059/195595652-d158d5b2-694c-43a9-b8b0-d048daa8ff12.png)

From here, we can see that clearly 2019 was a stronger year than 2022, with 59.2% of travellers in 2019 compared to 40.8% in 2022. While this is no suprise, we do see a similar pattern between both years in that both years see a gradual increase, most notavbly from April, with 

This would show that while numbers are not as high in post pandemic times compared to pre pandemic, there is a continuous increase in travel since 2020 that represents improvement to travelling.

</details>

## **Conclusion**
<br>

from the results, here are the key points:

- 2006 - 2019 was a more popular time to travel, particulary with 2017 being the best year recorded so far
- 2021 was the lowest year recorded for total travellers into the UK
- Both 2019 and 2022 saw gradual increase between March - May
- 2020 was a more positive year for travel than 2021
- Q1 2021 was the the most underperforming year recorded since 1980

<!DOCTYPE html>
<html>
<head>
    <title>Tableau Dashboard</title>
</head>
<body>
<div class='tableauPlaceholder' id='viz1694621813266' style='position: relative'><noscript><a href='#'><img alt='World Happiness Report 2023 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;WH&#47;WHR2023Dashboard&#47;Dashboard&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='WHR2023Dashboard&#47;Dashboard' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;WH&#47;WHR2023Dashboard&#47;Dashboard&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-GB' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1694621813266');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='1677px';vizElement.style.height='1031px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='1677px';vizElement.style.height='1031px';} else { vizElement.style.width='100%';vizElement.style.height='1127px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
    <!-- Example: -->
    <iframe src="https://public.tableau.com/views/YourDashboardName/YourDashboard?:showVizHome=no&:embed=true" width="800" height="600"></iframe>
</body>
</html>

