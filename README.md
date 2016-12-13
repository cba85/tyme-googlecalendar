# Tyme csv file to Google Calendar csv file

Bash script to convert a Tyme csv file export in a Google Calendar file.

I made this script to import my time spent on my tasks and projects from Tyme Mac app (http://tyme-app.com/) to Google Calendar.

## Installation

1. Download the script
2. Apply permission to execute:

```
$ chmod +x /path/to/tyme-googlecalendar.sh
```

3. Optional: if you want to use the script globally, then you need to copy the file to your /usr/local/bin directory, is better
if you copy it without the .sh extension:

```bash
$ sudo cp /path/to/tyme-googlecalendar.sh /usr/local/bin/tyme-googlecalendar
```

### For Global Shortcut ###

```bash
$ cd /usr/local/bin
$ wget -O tyme-googlecalendar https://raw.githubusercontent.com/cba85/tyme-googlecalendar/master/tyme-googlecalendar.sh
$ chmod +x tyme-googlecalendar
```

## Usage ##

First, export your time traked in Tyme in csv format.

Then launch the tyme-to-calendar script with your exported csv file as an argument.

Basic command line syntax:

```bash
$ sudo sh /path/to/tyme-googlecalendar.sh [tyme_export_csv_filename]
```

With script installed on /usr/local/bin

```bash
$ sudo tyme2-googlecalendar [tyme2_export_csv_filename]
```
