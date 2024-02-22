# nameable

[![Gem Version](https://badge.fury.io/rb/openjournals-nameable.svg)](http://badge.fury.io/rb/openjournals-nameable)
[![Build Status](https://github.com/openjournals/nameable/actions/workflows/tests.yml/badge.svg)](https://github.com/openjournals/nameable/actions/workflows/tests.yml)

A library that provides parsing and normalization of people's names.

```ruby
require 'nameable'
n = Nameable::Latin.new.parse('Mr. Chris K Horn Esquire')
puts "#{n.prefix} #{n.first} #{n.middle} #{n.last} #{n.suffix}"
#=> Mr. Chris K Horn Esq.
puts n.to_fullname
#=> Mr. Chris K. Horn, Esq.
n = Nameable::Latin.new('CHRIS', 'HORN')
puts n.to_nameable
#=> Chris Horn
n = Nameable::Latin.new(prefix:'Sir', last:'Horn')
puts n
#=> Sir Horn
```

# Features

Convenience methods:

```ruby
puts Nameable('chris horn, iii')
#=> "Chris Horn, III."
puts Nameable.parse('chris horn, iii')
#=> #<Nameable::Latin:0x007f8470e01b08 @first="Chris", @last="Horn", @middle=nil, @prefix=nil, @suffix="III.">
```

Using a database of first names from the U.S. Social Security Administration, Nameable will pick the most likely gender for a name.

```ruby
Nameable::Latin.new('Chris').gender
#=> :male
Nameable::Latin.new('Janine').female?
#=> true
```

Using a database of last names from the U.S. Census, Nameable will return the ethnicity breakdown as a Hash.

```ruby
Nameable::Latin.new('Chris', 'Horn').ethnicity
#=> {:rank=>593, :count=>51380, :percent_white=>86.75, :percent_black=>8.31, :percent_asian_pacific_islander=>0.84, :percent_american_indian_alaska_native=>1.16, :percent_two_or_more_races=>1.46, :percent_hispanic=>1.48}
```

This fork updates [the original gem](https://github.com/chorn/nameable) with custom tweaks
