module DevicesRails
  module ApplicationHelper
    def device_tag(options={}, &block)
      # options:
      #   - name (iphone6, iphone6plus, ...)
      #   - color (black, silver, gold)
      #   - orientation (portrait, landscape)
      
      classes = ["marvel-device"]
      classes << (options[:name] || "iphone6")
      classes << (options[:color] || "silver")
      if options[:orientation] == "landscape"
        classes << options[:orientation]
      end

      content_tag :div, class: classes do
        [
          content_tag(:div, nil, class: "top-bar"),
          content_tag(:div, nil, class: "sleep"),
          content_tag(:div, nil, class: "volume"),
          content_tag(:div, nil, class: "camera"),
          content_tag(:div, nil, class: "sensor"),
          content_tag(:div, nil, class: "speaker"),
          content_tag(:div, nil, class: "screen") { yield },
          content_tag(:div, nil, class: "home"),
          content_tag(:div, nil, class: "bottom-bar")
        ].join.html_safe
      end
    end
    
    def iphone6_tag(options={}, &block)
      device_tag(options.merge(name: "iphone6")) do
        yield
      end
    end
    
    def iphone6plus_tag(options={}, &block)
      device_tag(options.merge(name: "iphone6plus")) do
        yield
      end
    end
    
    def ipad_tag(options={}, &block)
      device_tag(options.merge(name: "ipad")) do
        yield
      end
    end
    
    def ipad_native_tag(options={}, &block)
      device_tag(options.merge(name: "ipad-native")) do
        yield
      end
    end
  end
end
