module SeoLandingPages
  class Model < ActiveRecord::Base
    # TODO make table_name configurable and use it
    self.table_name = 'seo_landing_pages'

    validates :slug, presence: true, unique: true
  end
end

