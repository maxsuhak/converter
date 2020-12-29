Converter <img src="https://img.shields.io/badge/ruby%20-v2.7.2-brightgreen.svg" title="ruby-badge"> <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/maxsuhak/converter"> <img alt="GitHub issues" src="https://img.shields.io/github/issues/maxsuhak/converter"> ![MASTER CI](https://github.com/maxsuhak/converter/workflows/CI/badge.svg?branch=master)
===================

Convert string representation of object to hash

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'converter', git: 'https://github.com/maxsuhak/converter'
```

And then execute:
```
  $ bundle install
```
Or install it yourself as:
```
  $ git clone git@github.com:maxsuhak/converter.git
  $ cd ./converter
  $ gem build converter.gemspec
  $ gem install converter-0.1.0
```

## Usage

```ruby
  > response = <<-EOT
      Events[0].Lane=1
      Events[0].SnapSourceCombine=false
      Events[0].Object.Country=GBR
      Events[0].Object.BoundingBox[0]=1248
      Events[0].Object.BoundingBox[1]=3528
      Events[0].Object.BoundingBox[2]=1920
      Events[0].Object.BoundingBox[3]=3848
      Events[0].Object.Center[0]=1584
    EOT

  > hash = Converter.proceed(response)
   => "Lane"=>1, "SnapSourceCombine"=>false, "Object"=>{"BoundingBox"=>[1248, 3528, 1920, 3848], "Center"=>[1584], "Country"=>"GBR"}}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Testing

Current functionality is covered by rspec tests. Just clone gem code from git and then run:
```ruby
  $ rspec

  Converter
    has a version number
    has a convert pattern
    .proceed
      returns converted hash
      returns values in proper types

  Finished in 0.00235 seconds (files took 0.19717 seconds to load)
  4 examples, 0 failures
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/maxsuhak/converter.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
