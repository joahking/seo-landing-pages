ActiveAdmin.register SeoLandingPages::Model do

  permit_params :slug, :title, :description, :keywords

  index do
    column :slug do |landing_page|
      link_to landing_page.slug, landing_page.slug, target: :blank
    end
    column :title
    column :description
    column :keywords
    default_actions
  end

  filter :slug

  form do |f|
    f.inputs "SEO Landing Page" do
      f.input :slug
      f.input :title
      f.input :description, as: :text
      f.input :keywords, as: :text
    end
    f.actions
  end

  show do |landing_page|
    attributes_table do
      row :slug do
        link_to landing_page.slug, landing_page.slug, target: :blank
      end
      row :title
      row :description
      row :keywords
      row :created_at
      row :updated_at
    end
  end

end

