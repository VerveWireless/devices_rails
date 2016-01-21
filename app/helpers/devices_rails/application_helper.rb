module DevicesRails
  module ApplicationHelper
    def device_tag(options={}, &block)
      # options:
      #   - name (iphone6, iphone6plus, ...)
      #   - color (black, silver, gold)
      #   - orientation (portrait, landscape)
      #   - only (['camera', 'screen', 'home'])
      
      classes = ["marvel-device"]
      classes << (options[:name] || "iphone6")
      classes << (options[:color] || "silver")
      if options[:orientation] == "landscape"
        classes << options[:orientation]
      end
      parts = options[:only] || %w( top-bar sleep volume camera sensor speaker screen home bottom-bar )

      content_tag :div, class: classes do
        content = []
        %w( top-bar sleep volume camera sensor speaker ).each do |class_name|
          content << content_tag(:div, nil, class: class_name) if parts.include? class_name
        end
        parts << content_tag(:div, nil, class: 'sleep') { yield } if parts.include? 'screen'
        %w( home bottom-bar ).each do |class_name|
          content << content_tag(:div, nil, class: class_name) if parts.include? class_name
        end
        content << content_tag(:div, nil, class: 'screen') { yield }
        content.join.html_safe
      end
    end
    
    def iphone4_viewport_tag(options={}, &block)
      device_tag(options.merge(name: 'iphone4s-viewport')) do
        yield
      end
    end
    
    def iphone5_viewport_tag(options={}, &block)
      device_tag(options.merge(name: 'iphone5s-viewport')) do
        yield
      end
    end
    
    def iphone6_viewport_tag(options={}, &block)
      device_tag(options.merge(name: 'iphone6-viewport')) do
        yield
      end
    end
    
    def iphone6plus_viewport_tag(options={}, &block)
      device_tag(options.merge(name: 'iphone6plus-viewport')) do 
        yield
      end
    end
    
    def nexus5_viewport_tag(options={}, &block)
      device_tag(options.merge(name: 'nexus5-viewport', only: %w( top-bar sleep volume camera screen ))) do
        yield
      end
    end
    
    def lumia920_viewport_tag(options={}, &block)
      device_tag(options.merge(name: 'lumia920-viewport', only: %w( top-bar volume camera speaker screen ))) do
        yield
      end
    end
    
    def galaxys5_viewport_tag(options={}, &block)
      device_tag(options.merge(name: 's5-viewport', only: %w( top-bar sleep camera sensor speaker screen home ))) do
        yield
      end
    end
    
    def htcone_viewport_tag(options={}, &block)
      device_tag(options.merge(name: 'htc-one-viewport', only: %w( top-bar camera sensor speaker screen ))) do
        yield
      end
    end
    
    def ipadmini_viewport_tag(options={}, &block)
      device_tag(options.merge(name: 'ipad-viewport', only: %w( camera screen home ))) do
        yield
      end
    end
  end
end
