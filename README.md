# Tyme 2 csv file to Google Calendar csv file

Bash ccript to convert a Tyme 2 csv file export in a Gogole Calendar file

## Installation

1. Download the script
2. Apply permission to execute:

```
$ chmod +x /path/to/tyme2-googlecalendar.sh
```

3. Optional: if you want to use the script globally, then you need to copy the file to your /usr/local/bin directory, is better
if you copy it without the .sh extension:

```bash
$ sudo cp /path/to/tyme2-googlecalendar.sh /usr/local/bin/tyme2-googlecalendar
```

### For Global Shortcut ###

```bash
$ cd /usr/local/bin
$ wget -O tyme2-googlecalendar https://raw.githubusercontent.com/cba85/tyme2-googlecalendar/master/tyme2-googlecalendar.sh
$ chmod +x tyme2-googlecalendar
```

## Usage ##

Basic command line syntax:

```bash
$ sudo sh /path/to/tyme2-googlecalendar.sh [tyme2_export_csv_filename]
```

With script installed on /usr/local/bin

```bash
$ sudo tyme2-googlecalendar [tyme2_export_csv_filename]
```
