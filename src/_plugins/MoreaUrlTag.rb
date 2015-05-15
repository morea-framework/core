module Jekyll
  class MoreaUrlTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      @site = context.registers[:site]

      "#{@text} #{Time.now} #{@site.config['morea_reading_pages'].size}"
    end
  end
end

Liquid::Template.register_tag('morea_url', Jekyll::MoreaUrlTag)