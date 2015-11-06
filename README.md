# DevicesRails

This project rocks and uses MIT-LICENSE.

```ruby
# Gemfile

gem 'devices_rails'
```

```scss
/* application.css
 *= require devices_rails/devices
 */
```

```ruby
class ApplicationController < ActionController::Base
  helper DevicesRails::Engine.helpers
end
```

```erb
<%= iphone6_tag do %>
  <iframe src="http://tags.vervemobile.com/creatives/Zgm1gV/preview.html" width="375" height="667" style="border: none;"></iframe>
<% end %>

<%= iphone6plus_tag color: 'gold' do %>
  <iframe src="http://tags.vervemobile.com/creatives/Zgm1gV/preview.html" style="border: none; width: 100%; height: 100%;" scrolling="no"></iframe>
<% end %>

<%= ipad_tag color: 'gold' do %>
  <iframe src="http://tags.vervemobile.com/creatives/Zgm1gV/preview.html" style="border: none; width: 100%; height: 100%;" scrolling="no"></iframe>
<% end %>

<%= ipad_native_tag color: 'gold' do %>
  <iframe src="http://tags.vervemobile.com/creatives/Zgm1gV/preview.html" style="border: none; width: 100%; height: 100%;" scrolling="no"></iframe>
<% end %>
```
