#weak\_attr_accessor for [RubyMotion](http://rubymotion.com)

Usage
---
Do this:

```ruby
class MainView < UIView
  weak_attr_accessor :view_controller
end
```

instead of this:

```ruby
class MainView < UIView
  def view_controller
    @view_controller
  end

  def view_controller=(obj)
    if obj.nil?
      @view_controller = nil
    else
      @view_controller = WeakRef.new(obj)
    end
  end
end
```

Installation
---
1. Add this to your `Gemfile`: `gem 'weak_attr_accessor'`
2. Run `bundle install`

License
---
BSD. See LICENSE file.

Questions
---
* Email: [hboon@motionobj.com](mailto:hboon@motionobj.com)
* Web: [http://hboon.com/](http://hboon.com/)
* Twitter: [http://twitter.com/hboon](http://twitter.com/hboon)
