require 'cgi'


module Liquid
  class QrCodeTag < ::Liquid::Tag
    def initialize(tag_name, markup, tokens)
      attributes = ['id', 'class']

      if markup =~ /(?<id>\S*\s+)(?<class>\S.*)?/i
        @qr = attributes.reduce({}) { |qr, attr| qr[attr] = $~[attr].strip if $~[attr]; qr }
        @url = "https://play.google.com/store/apps/details?id=#{@qr['id'].strip}"
    end
      super
    end

    def render(context)
      img_uri = "https://chart.googleapis.com/chart?cht=qr&chs=125x125&chl=#{CGI.escape(@url)}&choe=UTF-8&chld=M|0"
      <<MARKUP.strip
<p><a href="#{@url}"><img class="#{@qr['class']}" src="#{img_uri}"></a></p>
MARKUP
    end
  end
end

Liquid::Template.register_tag('qr', Liquid::QrCodeTag)
