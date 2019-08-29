# New Cron Job
## Cron Job Structure
* edit crontab
```bash
crontab -e
```
* list existing cron jobs
```bash
crontab -l
```

`* * * * * command`, where:
\* - minute {0..59}
\* - hour {0..23}
\* - day of the month {1..31}
\* - month {1..12}
\* - day of the week {0..6}, 0 is Sunday
command - command to execute
## Command Structure
1. use python from venv
`cd /absolute/path/to/my/project && ./path/to/venv/bin/python ./path/to/script.py > ./path/to/cron.log 2>&1`
[calling python from within venv](https://monicagranbois.com/blog/python/cron-and-python-virtualenv/)
2. activate python using bash script
[activating the venv using bash script](https://stackoverflow.com/questions/4150671/how-to-set-virtualenv-for-a-crontab/12848443)
```bash script
#! /bin/bash
cd ~/my/project           
source venv/bin/activate

# venv is now active, which means your PATH has been modified.      
# Don't try to run python from /usr/bin/python, just run "python" and
# let the PATH figure out which version to run (based on what your
# virtualenv has configured).

python script.py  
```

## Cron Job Logging
append to the command `> ~/my/cron.log 2>&1`
