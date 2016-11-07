class CreateSeoLandingPages < ActiveRecord::Migration
  def change
    create_table :seo_landing_pages do |t|
      t.string :slug
      t.string :title
      t.string :description
      t.string :keywords

      t.timestamps null: false
    end
    add_index :seo_landing_pages, :slug
  end
end

