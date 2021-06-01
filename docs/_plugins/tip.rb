# tip.rb/Open GoPro, Version 1.0 (C) Copyright 2021 GoPro, Inc. (http://gopro.com/OpenGoPro).
# This copyright was auto-generated on Tue May 18 22:08:52 UTC 2021

module Jekyll
    class Tip < Liquid::Tag
        # include all URL filters from Jekyll
        include Jekyll::Filters::URLFilters
        # include all standard liquid filters
        include Liquid::StandardFilters

        def initialize(tag_name, text, tokens)
            super
            @text = text.strip!
        end

        def render(context)
            # required for URLFilters
            @context = context

            "<div class=\"tip\">" +
            "<i " +
                "class=\"fa fa-tools fa-2x\" " +
                "style=\"" +
                    "color: #ebc21c;" +
                    "margin: 0.25em;" +
                "\"" +
        "></i>" +
            "<span>  #{@text}</span>" +
            "</div>"
        end

        private

        def config
            @config ||= @context.registers[:site].config
        end
    end
end

Liquid::Template.register_tag('tip', Jekyll::Tip)