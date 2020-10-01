# Give Your Mac a Sleepless Night

## Using [`caffeinate`](https://ss64.com/osx/caffeinate.html)

```bash
caffeinate
```

|flag|function|
|-d|prevent the display from sleeping|
|-i|prevent the system from idle sleeping|
|-m|prevent the disk from idle sleeping|
|-s|prevent the system from sleeping; only valid when running on AC power|
|-u|declare that a user is active; if the display is off, this option turns the display on and prevents the display from going into idle sleep|
|-t|specify the timeout duration in seconds|

## Using [`pmset`](https://ss64.com/osx/pmset.html)

Display global power settings:
```bash
pmset -g
```


