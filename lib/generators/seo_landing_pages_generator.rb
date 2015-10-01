require 'rails/generators/active_record'

class SeoLandingPagesGenerator < ActiveRecord::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  #TODO all the methods run now, turn them into options, as Thor intended :-)
  def migration
    migration_template 'migration.rb', 'db/migrate/create_seo_landing_pages.rb'
  end

  # Public: configures the application controller to include the Helpers module.
  def controller
    inject_into_class 'app/controllers/application_controller.rb', ApplicationController do
      "  include SeoLandingPages::Controllers::Helpers\n\n"
    end
  end

  # Public: copies the active admin boilerplate code.
  def active_admin
    copy_file 'active_admin.rb', 'app/admin/seo_landing_pages.rb'
  end

  # Public: copies the i18n files.
  def i18n
    %w(en es).each do |locale|
      copy_file "i18n.#{ locale }.yml", "config/locales/seo_landing_pages.#{ locale }.yml"
    end
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

