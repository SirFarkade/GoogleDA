We are not using all of the given 18 files, and we can't analyze the data by simply using Excel as the dataset is quite huge to handle, 200k+ rows.

So we are only going to use selected files, these can be found [here](https://github.com/VaibhavFarkade/GoogleDA/tree/main/Course08:%20Google%20Data%20Analytics%20Capstone:%20Complete%20a%20Case%20Study/02%20Prepare/01%20Datasets%20Used)

In this direcory, along with the listed 5 files, 2 other files are also used which couldn't be uploaded due to size limit of github.

The other two files are:->
- heartrate_seconds_merged
- minuteMETsNarrow_merged

Among the listed files, HourlyActivity was created by merging all the Hourly files which were originally available and, the following process was adapted while doing so.

Open a blank worksheet in Excel and used the import option, from text/csv
Imported 3 files one by one:
> Hourly Intensities
> Hourly Calories
> Steps

Then click on : 'Query' tab > Merge > Select appropriate columns to join upon > Right click on the newly generated column and keep the column you need from the drop down

Saved this as "Hourly_Activity"


----------------------------------------------------------------------------------------------------------


While creating the database, some of the columns had data type issues, so for this part I have took those columns as TEXT, however this will be cleaned in the process step where CAST() will be used to do so.
