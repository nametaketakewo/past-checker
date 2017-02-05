# PastChecker
You can check if DateTime is past.

## Usage

when you create a Date or DateTime column in the ActiveModel on Rails with the following form, a method is defined that can check if it is past.

ll_be_foo -> #foo?  
will_be_bar -> #bar?  
ll_be_baz_at -> #baz?  
will_be_qux_at -> #qux?  

Please select from among these depending on the context you use.

### Example

#### MigrationFile
```ruby
class CreateHoges < ActiveRecord::Migration[5.0]
  def change
    create_table :Foobars do |t|
      t.datetime :ll_be_started_at
      t.date :will_be_executed

      t.timestamps
    end
  end
end
```

#### Rails Console
```bash
rails c

irb(main):001:0> Foobar.new(ll_be_started_at: Time.now + 1.minute).started?
=> false

irb(main):002:0> Foobar.new(ll_be_started_at: Time.now - 1.minute).started?
=> true

irb(main):003:0> Foobar.new(will_be_executed: Date.today + 1.day).executed?
=> true

irb(main):004:0> Foobar.new(will_be_executed: Date.today - 1.day).executed?
=> false

irb(main):005:0> Foobar.new(will_be_executed: Date.today).executed?
=> true
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'past-checker'
```

And then execute:
```bash
$ bundle install
```


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
