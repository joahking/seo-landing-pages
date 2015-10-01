require 'rails/generators/active_record'

class SeoLandingPagesGenerator < ActiveRecord::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def migration
    migration_template 'migration.rb', 'db/migrate/create_seo_landing_pages.rb'
  end

  # Public: adds an admin route to the router.
  def route
    #TODO
  end

  # Public: copies the active admin code.
  def active_admin
    #TODO
  end

  # Public: copies the CRUD admin code.
  def admin
    #TODO
  end
end

