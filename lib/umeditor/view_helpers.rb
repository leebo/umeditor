module Umeditor
  module ViewHelpers
    def umeditor_assets_call(opts = {},&block)
      html = []
      html << stylesheet_link_tag('umeditor/application', media: 'all', 'data-turbolinks-track' => true)
      html << javascript_include_tag('umeditor/application', 'data-turbolinks-track' => true)
      html << with_output_buffer(&block)
      html.join().html_safe
    end
  end
end
