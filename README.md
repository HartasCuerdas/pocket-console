# Pocket Console

Stats from [Pocket](http://getpocket.com) on your console.

[Pocket Console on RubyGems.org](https://rubygems.org/gems/pocket-console)

## Installation

    gem install pocket-console

## Or on Gemfile

    gem 'pocket-console', '~> 0.0.0'

## Usage

    pocketConsole = PocketConsole.new(taggedItems, untaggedItems)
    pocketConsole.print

taggedItems and untaggedItems are arrays that contain Item objects.

Take a look on [Item class implementation](https://github.com/HartasCuerdas/pocket-classes/blob/master/lib/item.rb).

Item class is provided by [pocket-classes gem](https://rubygems.org/gems/pocket-classes)
