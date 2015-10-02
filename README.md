# SEO Landing Pages

Create and manage your SEO landing pages easily.

SEO gives great importance to 3 html elements in the html head: title, meta
description and meta keywords (to a lesser extent).

This gem lets you easily:

- create landing pages identified by their path
- edit their title, description and keywords
- render them easily in your views with provided helpers
- have your SEO guru love you :-)

## Installation

Add this line to your application's Gemfile:

    gem 'seo_landing_pages'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install seo_landing_pages

## Usage

### The landing pages data

Use the generator provided to create the landing pages table

    $ rails g seo_landing_pages migration

run the migration and you should be ready to create landing pages, an example
in the rails console would be:

    > SeoLandingPages::Model.create! slug: '/', title: 'SEO landing pages FTW'

*Note* the `slug` must be given and be unique.

It's your work now to determine which pages you want to create, e.g. for your
blog, listings page, etc.

### Configure the controller

Configure your `ApplicationController` by running:

    $ rails g seo_landing_pages controller

That will include the module `SeoLandingPages::Controllers::Helpers` in your controller,
the module provides a method `seo_current_landing_page` which finds a Landing Page
matching the request path (`/` in the example), and also will make view helpers
available for your views.

For advanced options of how to match Landing Pages check the module mentioned.

### Landing pages in the views

To show the SEO data in your views there are handy view helpers available, add
to your views layout in the head section:

```ruby
= seo_landing_page_title_tag
= seo_landing_page_description_tag
= seo_landing_page_keywords_tag
```

these add the proper HTML tags, visit your home page and the title
`SEO Landing Pages FTW` should be showing in your HTML.

There are also helpers to access the landing pages attributes without the HTML
tag for you to concatenate them or so.

```ruby
= seo_landing_page_title
= seo_landing_page_description
= seo_landing_page_keywords
```

### Internationalization support

For internationalization, instead of writing plain text in the title, description
and keywords write i18n keys, e.g. a landing page for your home page:

    > SeoLandingPages::Model.create! slug: '/', title:       'title_home_page',
                                                description: 'description_home_page',
                                                keywords:    'keywords_home_page'

Create the translations in your locale files. Then use the view helpers like this:

```ruby
= seo_landing_page_title_tag i18n: true
= seo_landing_page_description_tag i18n: true
= seo_landing_page_keywords_tag i18n: true
```

Now your pages have the HTML elements localized.

### Admin section

There's an Active Admin view provided, to get it run:

    $ rails g seo_landing_pages active_admin

    $ rails g seo_landing_pages i18n

and let your SEO guru float in love waves editing all the Landing Pages and seeing
traffic increasing for your website.

## TODO

- write another CRUD admin section for those not using Active Admin, or accept
a Pull Request having it ;-)
- fix the TODOs in the code
- write tests

## Contributing

1. Fork it ( https://github.com/joahking/seo_landing_pages/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Credits

This gem was developed in the [Hack Week at XING Barcelona](https://twitter.com/hashtag/hackweekxing),
Big thanks to XING for providing the time to see ideas being realized.

