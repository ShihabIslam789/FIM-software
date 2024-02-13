# File Integrity Moniter
This simple script is suppose to  keep track of any attempts to change the file. When the file is being changed the script will alert you in the terminal when used. This is important to enforce the CIA framework companies must follow. 

## Graph

![picture](https://github.com/ShihabIslam789/FIM-software/blob/main/Pictures/Chart.png)


the chart above explains how we want the script to work. we start by building a abseline we can compare to that files should look like. then we moniter the files through a constant loop to moniter. If there is any differnce by the SHA hash that is unique to the baseline the suer would be notified.  