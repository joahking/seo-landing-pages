module SeoLandingPages
  class Model < ActiveRecord::Base
    # TODO make table_name configurable and use it
    self.table_name = 'seo_landing_pages'

    # TODO test this
    validates :slug, presence: true, uniqueness: true
  end
end

