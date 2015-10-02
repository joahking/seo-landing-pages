# Public: helpers for your views.
module SeoLandingPages
  module Helper

    # Public: html title tag with the landing page title.
    # - i18n: false = render plain text title. This is the default.
    #         true  = title is an i18n key, so translate it.
    # If the landing page title is empty it returns nothing.
    def seo_landing_page_title_tag(i18n: false)
      title = seo_landing_page_title i18n: i18n
      if title.present?
        "<title>#{ title }</title>".html_safe
      end
    end

    # Public: landing page title.
    # - i18n: false = render plain text title. This is the default.
    #         true  = title is an i18n key, so translate it.
    def seo_landing_page_title(i18n: false)
      if seo_current_landing_page
        title = seo_current_landing_page.title
        if title.present?
          i18n ? t(title) : title
        end
      end
    end

    # Public: html description meta tag with the landing page description.
    # - i18n: false = render plain text description. This is the default.
    #         true  = description is an i18n key, so translate it.
    # If the landing page description is empty it returns nothing.
    def seo_landing_page_description_tag(i18n: false)
      description = seo_landing_page_description i18n: i18n
      if description.present?
        "<meta name='description' content='#{ description }'/>".html_safe
      end
    end

    # Public: landing page description.
    # - i18n: false = render plain text description. This is the default.
    #         true  = description is an i18n key, so translate it.
    # If the landing page description is empty it returns nothing.
    def seo_landing_page_description(i18n: false)
      if seo_current_landing_page
        description = seo_current_landing_page.description
        if description.present?
          i18n ? t(description) : description
        end
      end
    end

    # Public: html keywords meta tag with the landing page keywords.
    # - i18n: false = render plain text keywords. This is the default.
    #         true  = keywords is an i18n key, so translate it.
    # If the landing page keywords is empty it returns nothing.
    def seo_landing_page_keywords_tag(i18n: false)
      keywords = seo_landing_page_keywords i18n: i18n
      if keywords.present?
        "<meta name='keywords' content='#{ keywords }'/>".html_safe
      end
    end

    # Public: landing page keywords.
    # - i18n: false = render plain text keywords. This is the default.
    #         true  = keywords is an i18n key, so translate it.
    # If the landing page keywords is empty it returns nothing.
    def seo_landing_page_keywords(i18n: false)
      if seo_current_landing_page
        keywords = seo_current_landing_page.keywords
        if keywords.present?
          i18n ? t(keywords) : keywords
        end
      end
    end

  end
end

