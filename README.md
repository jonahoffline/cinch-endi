Cinch::Endi [![Gem Version](https://badge.fury.io/rb/cinch-endi.png)](http://badge.fury.io/rb/cinch-endi) [![Dependency Status](https://gemnasium.com/jonahoffline/cinch-endi.png)](https://gemnasium.com/jonahoffline/cinch-endi) [![Code Climate](https://codeclimate.com/github/jonahoffline/cinch-endi.png)](https://codeclimate.com/github/jonahoffline/cinch-endi)
=================

Endi is a Cinch plugin for getting the latest news from endi.com .
El Nuevo Dia is a Puerto Rican newspaper.

Installation
---------------------

    $ gem install cinch-endi

#### Command ####

  * !endi [total of news]  - Fetches the total of news or the top 25 by default.

## Integration with Cinch ##

```ruby
require 'cinch'
require 'cinch/plugins/endi'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = 'irc.freenode.net'
    c.nick   = 'Tavin_Pumarejo'
    c.channels = ['#RubyOnADHD']
    c.plugins.plugins = [Cinch::Plugins::Endi]
  end
end

bot.start
```

Enjoy!

## Author
  * [Jonah Ruiz](http://www.pixelhipsters.com)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request