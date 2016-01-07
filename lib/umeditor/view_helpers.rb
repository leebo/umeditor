module Umeditor
  module ViewHelpers
    def umeditor_assets_call(opts = {})
      html = []
      html << stylesheet_link_tag('umeditor/application', media: 'all', 'data-turbolinks-track' => true)
      html << javascript_include_tag('umeditor/application', 'data-turbolinks-track' => true)
      html << yield if block_given?
      raw html.join()
    end
  end
end
