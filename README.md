## Missing Women On the Streets

In 1990, Amartya Sen estimated that more than [100 million women were missing](http://www.nybooks.com/articles/1990/12/20/more-than-100-million-women-are-missing/) in South and West Asia, and China. His NYRB article shed light on sex-discrimination in parts of Asia, highlighting, among other things, pathologies like sex-selective abortion, biases in nutrition, healthcare, and schooling. 

We aim to extend that line of inquiry, and shed light on the question: "How many women are missing from a public life?" In particular, we aim to answer **how many women are missing from the streets.** 

To estimate 'missing women,' we need a baseline. While there are some plausible 'taste-based' reasons for the sex ratio on the streets to differ from 50-50, for the current analysis, I assume that in a gender equal society roughly equal number of men and women are out on the streets. And I attribute any skew to real (and perceived) threat of molestation, violence, harassment, patriarchy (allowing wives, daughters, sisters to go out), discrimination in employment, and similar such things. 

### Note About Data and Measurement

Of all the people out on the street over the course of a typical day in Delhi, what proportion are women? To answer that, I devised what I thought was a pretty reasonable sampling plan, and a pretty clever data collection strategy [see here](original_data_collection_plan.md). Essentially, we would send people at random street locations at random times and ask them to take photos at head height, and then crowd-source counting the total number of people in the picture and the total number of women in the picture.

The data we finally collected in this round bears little resemblance to the original data collection plan. As to why the data collection went off rails, we have nothing to share publicly for now. The [map](https://raw.githubusercontent.com/soodoku/women-count/master/res/osm_overlay_circle.html) of the places from which we collect data though lays bare the problems. 
 
### Data, Scripts, and Analyses

- [Original Photos](http://dx.doi.org/10.7910/DVN/CZBHQO)
- Get meta data about the photos, including exif information
    - [data](data/photos_meta_exif.csv)
    - [script](scripts/photos_exif_csv.ipynb) to extract the exif information and some of the meta data.
- [Flatten the directory structure](scripts/02_flatten_dir.bat) of photos
- [Rename (for Mturk) and Resize files](scripts/03_rename_resize.R)
- [Screenshot of the MTurk HIT](data/mturk_hit.png)
- [Map of Data Collection Locations And Amount of Data Collected at Each Location](https://raw.githubusercontent.com/soodoku/women-count/master/res/osm_overlay_circle.html)
- [Metadata + Data from MTurk](data/)
- [Analysis](scripts/analysis.md)

### Results

On average about 81.5% of the people on the street that were men. The average proportion of men across various locations was 86.7% which suggests that somewhat busier places have somewhat more women.

### Author

Gaurav Sood

### License

Released under [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/). 

### Contributor Code of Conduct

The project welcomes contributions from everyone! In fact, it depends on it. To maintain this welcoming atmosphere, and to collaborate in a fun and productive way, we expect contributors to the project to abide by the [Contributor Code of Conduct](http://contributor-covenant.org/version/1/0/0/).
