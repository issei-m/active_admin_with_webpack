module ApplicationHelper
  # Webpacker imitation methods:
  #
  # Although we're not using Webpacker in this project, we're enabling Webpacker use for ActiveAdmin. (This is because without it, ActiveAdmin requires us to use Sprockets.)
  # So ActiveAdmin assumes that we have `stylesheet_pack_tag`, `javascript_pack_tag` helper methods.
  # We just let them delegate to `stylesheet_link_tag`, `javascript_include_tag` respectively with `config.asset_host` prefixed.

  def stylesheet_pack_tag(*sources)
    stylesheet_link_tag(*sources.map { |s| s.is_a?(String) ? "#{config.asset_host}/#{s}" : s })
  end

  def javascript_pack_tag(*sources)
    javascript_include_tag(*sources.map { |s| s.is_a?(String) ? "#{config.asset_host}/#{s}" : s })
  end
end
