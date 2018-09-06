require 'navigation_helper.rb'

module NavigationHelper

  def collapsible_links_partial_path
      'layouts/navigation/collapsible_elements/non_signed_in_links'
    end
end

=begin
if user_signed_in?
  'layouts/navigation/collapsible_elements/signed_in_links'
else
=end
