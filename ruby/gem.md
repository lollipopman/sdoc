### Ruby gems

place `export RUBYOPT=rubygems` in profile to load rubygems for each call to
ruby, this allows you to just use `require 'module'`

- install

        apt-get install rubygems

- search

        gem query --remote --name-matches doom

- install

        gem install ruby-graphviz

- JRuby

        jgem <args>
        jruby -S gem <args>

- add source

        gem sources -a http://gems.github.com

- download gem

        gem fetch nokogiri
