# Clockwise Analytics

Lazy way to analyze your clockwise

## Requirements

- Python 3.6
- [Visidata](https://visidata.org/)

## Installation

```
$ pip install visidata
$ git clone https://github.com/dedenbangkit/clockwise-analytics
$ cd clockwise-analytics
$ chmod +x clockwise.sh
$ mv clockwise.sh /usr/local/bin/clockwise
```

## Usage

```
$ export CLOCKWISE="your_clockwise_url" (example: https://secure.clockwise.info/clockwise/loremipsum)
$ export USERNAME="your_clockwise_username"
$ export PASSWORD="your_clockwise_password"
$ clockwise <startdate:optional> <endate:optional>
```
