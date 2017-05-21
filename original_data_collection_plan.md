## Original Data Collection Plan

### Quantity of Interest

Of all the people out on the street over the course of a typical day, what proportion are women? 

### Sampling Frame

The sampling frame is the comprehensive list of all public streets in Delhi, as available from \href{http://wiki.openstreetmap.org/wiki/Delhi}{Open Street Maps}. We further limit ourselves to daytime hours between 7 am and 7 pm. 

### Simplifying Assumptions

To estimate the quantity, I make a few simplifying assumptions. I assume that the weekdays are exchangeable, i.e., it doesn't matter if the data are collected on a Monday or a Tuesday. I assume that weekend days are also exchangeable. Thus, data from weekdays will contribute about five-seventh of the total observations, and data from weekends, about two-seventh. I further assume that observations within any 15 minutes chunk are exchangeable. Data collected from a location at 9:01 am will have the same expected value as data collected from the same location at 9:15 am.

### Randomly Sampling From the Streets

To randomly sample from the streets, I developed a [Python Package](https://github.com/soodoku/geo_sampling), which implements the following workflow: 

* Download vectors of all the streets in Delhi from Open Street Maps. 
* Starting from one end of the street, split each street into .5 km segments till you reach the end of the street. The last segment, or if the street is shorter than .5km, the only segment, can be shorter than .5 km. 
* Get the lat/long of start and end of each of the segments.   
* Create a database of all the segments
* Sample rows from the database 
* Produce a CSV of the sampled segments 
* Collect data on the highlighted segments.

In parallel, I split time between 7 am and 7 pm into 15 minute chunks and took an independent random sample from it. In all, we sample 1000 distinct segments/times.

### Data Collection

The entire surveying is to be done within 30 days. We do not collect data on major holidays given chances that the distribution of men and women will be different on the day.

We will collect data on the 1000 segments by taking photos at eye-level. In particular, after reaching the start or end of the segment, the data collector looks in the direction of the segment, and clicks 10 photos, each after the interval of one minute. Surveyors were given the following directions:

* Check your phone. Take a sample photo to confirm that equipment is working. Make sure you have enough battery to take 10--20 photos.     

* Station yourself at a place that is safe, on a pedestrian area, slightly away from foot traffic, and gives you a clear view of the people coming towards you. If both sides of the street have footpaths, instruct half the research assistants to pick the left side, other half the right side.

* Wait for exactly 1 minute after arriving. (This is to preclude people from using their discretion about when to start collecting data.) 

* Your task is to click pictures at head height of people coming directly towards you. Take 10 pictures, one every 1 minute for a total of 10 minutes. If you take more pictures than that, it is completely ok. But try to take at least 10 pictures spaced exactly a minute apart. Again the idea is not let your discretion impinge on data collection. The one minute interval is also there so that we don't double count the same people. 

* If you see no person --- that is completely ok. Still click the picture as we want to know that you didn't see anyone. 

* Streets have sides. So which side to pick? Pick the side that is busier. Alternately, click photos on both sides of the street.

* Segments have ends. Alternate between which end you collect data from. This will be clear in the application --- the direction in which the camera should be facing.

### Notes for the Data Collection Team

* **Safety:** If you feel unsafe in going to a particular place at a particular time, please do not go. Your safety comes first.

* **Law:** On public streets, it is completely legal to take photos of people. But if anyone is making a loud fuss, get out of there and report the issue to us. Again, your safety comes first.

* **Following directions:** Good data comes from following directions. Deviating from directions can cause bias. Do not guess what the research task is. If anything is unclear, ask the researchers. 

**Mechanical option---manually counting total number of people, total number of men---if there are issues with police, etc.** To collect data manually, get the notebook with a hard cover and pen out. Wait for 1:30 minute. And put a X for every man and O for every woman. Count for 10 minutes at one spot. If the flow of people is too heavy, come back the next day at the same time with another person to split the task.

### Concerns

There are at least two concerns about the collected data. First, there is some nominal clustering due to the fact that we are taking photos. Second, measurement error's impact on the final estimate is correlated with density. So, we want to have lower measurement error in more dense places/times. We do this by drawing larger number of samples for busier areas. 

### Counting Men and Women in the Photos

Each photo will be coded by 3 different M-Turkers for a) how many people are in the photo, b) how many men are in each photo.  

### Estimate

* T = Count total number of unique people in the photos/manual counts 
* W = Count total number of unique women in the photos/manual counts 

Estimate ~ W/T

### Notes on Data Collection

* More sophisticated sampling plans can be devised if we know more about each location. For instance, if we know whether each location is residential or commercial, we can stratify by commercial/residential.

* To help crowd-source data collection, [allocator](https://github.com/soodoku/allocator) helps optimally design the itinerary for people collecting the data.
