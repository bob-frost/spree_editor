# Spree Editor

[![Build Status](https://travis-ci.org/spree/spree_editor.png?branch=2-1-stable)](https://travis-ci.org/spree/spree_editor)

## Summary

This extension provides an inline rich-text editor for Spree. It implements different types of editors:

- [CKEditor](http://ckeditor.com/)

## Installation

1. Add the Spree Editor gem to your Gemfile:

    `gem 'spree_editor', :github => 'spree/spree_editor', :branch => '2-1-stable'`

2. Install the gems:

    `bundle install`

3. Install the assets:

    `rails g spree_editor:install`

4. If using CKEditor, and would like to enable file uploads run the ckeditor generator:

    `rails generate ckeditor:install --orm=active_record --backend=paperclip && rake db:migrate`

5. In order to secure your file uploads to only be accessed by admins you will also need to configure `config/initializers/ckeditor.rb`:

```ruby
config.authorize_with :cancan, Spree::Ability
```

## Configuration

Preferences can be updated within the admin panel under "configuration" then "rich editor".

Or you may set them with an initializer within your application:

```ruby
SpreeEditor::Config.tap do |config|
  config.ids = "product_description page_body event_body"
end
```

## Testing

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```
bundle
bundle exec rake test_app
bundle exec rspec spec
```

## TODO

* Improved i18n support.

Copyright (c) 2010-2013 [divineforest](https://github.com/divineforest), released under the New BSD License
