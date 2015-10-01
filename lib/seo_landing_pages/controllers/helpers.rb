# Public: helper methods for ApplicationController.
#
# Include this module in your controllers to gain access to the landing page
# in your views.
#
module SeoLandingPages
  module Controllers
    module Helpers
      extend ActiveSupport::Concern

      included do
        helper_method :current_landing_page
      end

      # Public: returns the current landing page.
      # The landing page is matched by the request path, check the method
      # seo_request_path for details on how to change the matching.
      def current_landing_page
        @current_landing_page ||= SeoLandingPages::Model.where(slug: seo_request_path).first
      end

      protected

      # Internal: the request path is used to match landing pages.
      #
      # Override this method in your controllers to change the way the landing
      # pages are matched.
      #
      # Example: the request path is '/blog?search=XYZ', to handle all blog pages
      # as the same landing page (e.g. '/blog') change this method in your
      # blogs_controller to remove everything after the '?'
      #
      def seo_request_path
        request.path
      end

    end
  end
end

