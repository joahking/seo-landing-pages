require 'rails/generators/active_record'

class SeoLandingPagesGenerator < ActiveRecord::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  #TODO all the methods run now, turn them into options, as Thor intended :-)
  def migration
    migration_template 'migration.rb', 'db/migrate/create_seo_landing_pages.rb'
  end

  # Public: copies the active admin boilerplate code.
  def active_admin
    copy_file 'active_admin.rb', 'app/admin/seo_landing_pages.rb'
  end

  # Public: adds an admin route to the router.
  def route
    #TODO
  end

  # Public: copies the CRUD admin code.
  def admin
    #TODO
  end
end

