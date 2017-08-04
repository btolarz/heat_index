# HeatIndex
Simple heat index calculator for Celsius and Fahrenheit units. Based on temperture and relative humidity.

## Usage
```ruby
  require 'heat_index'

  # HeatIndex.new(temperature, relative_humidity)
  HeatIndex.new(27, 80).index #=> 29.740206061777783
  HeatIndex.new(80.6, 80, 'fahrenheit').index #=> 85.5323709112
```

## Installation
Add this line to your application's Gemfile:

```ruby
  gem 'heat_index', github: 'git://github.com/btolarz/heat_index.git'
```

And then execute:
```bash
$ bundle install
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
