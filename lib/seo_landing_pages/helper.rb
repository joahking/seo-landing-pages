# Public: helpers for your views.
module SeoLandingPages
  module Helper

    # Public: html title tag with the landing page title.
    # If the landing page title is empty it returns nothing.
    def seo_landing_page_title_tag
      if seo_landing_page_title
        "<title>#{ seo_landing_page_title }</title>".html_safe
      end
    end

    # Public: landing page title.
    def seo_landing_page_title
      if seo_current_landing_page
        seo_current_landing_page.title
      end
    end

    # Public: html description meta tag with the landing page description.
    # If the landing page description is empty it returns nothing.
    def seo_landing_page_description_tag
      if seo_landing_page_description
        "<meta name='description' content='#{ seo_landing_page_description }'/>".html_safe
      end
    end

    # Public: landing page description.
    def seo_landing_page_description
      if seo_current_landing_page
        seo_current_landing_page.description
      end
    end

    # Public: html keywords meta tag with the landing page keywords.
    # If the landing page keywords is empty it returns nothing.
    def seo_landing_page_keywords_tag
      if seo_landing_page_keywords
        "<meta name='keywords' content='#{ seo_landing_page_keywords }'/>".html_safe
      end
    end

    # Public: landing page keywords.
    def seo_landing_page_keywords
      if seo_current_landing_page
        seo_current_landing_page.keywords
      end
    end

  end
end

