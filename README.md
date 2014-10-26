# Pocket Console [![Gem Version](https://badge.fury.io/rb/pocket-console.svg)](http://badge.fury.io/rb/pocket-console) [![Dependency Status](https://gemnasium.com/HartasCuerdas/pocket-console.svg)](https://gemnasium.com/HartasCuerdas/pocket-console)

[![Code Climate](https://codeclimate.com/github/HartasCuerdas/pocket-console/badges/gpa.svg)](https://codeclimate.com/github/HartasCuerdas/pocket-console) [![Inline docs](http://inch-ci.org/github/HartasCuerdas/pocket-console.svg?branch=master&style=flat)](http://inch-ci.org/github/HartasCuerdas/pocket-console)

Stats from [Pocket](http://getpocket.com) on your console.

[Pocket Console on RubyGems.org](https://rubygems.org/gems/pocket-console)

## Gem brightness

This gem provides methods to output stats about Pocket tags.

1. General Stats
2. Most Used tags
3. Most Unread. Tags that were assigned to the most large amount of items.

Stats are presented in tables, formatted as you can see below:

    ====================
       General Stats
    --------------------
    Tagged items:   50
    Untagged items: 30
    --------------------
    
    ================================
         Tag Stats - Most Used
    --------------------------------
    tag          |  total  |  unread
    pocket       |     16  |       3
    dev          |      7  |       5
    ux           |      4  |       1
    techonomics  |      4  |       0
    rails        |      2  |       2
    things       |      2  |       2
    history      |      2  |       1
    ifttt        |      2  |       1
    ios          |      2  |       2
    node.js      |      2  |       2
    ================================
    
    ================================
         Tag Stats - Most Unread
    --------------------------------
    tag          |  unread  |  total
    dev          |       5  |      7
    pocket       |       3  |     16
    rails        |       2  |      2
    things       |       2  |      2
    ios          |       2  |      2
    node.js      |       2  |      2
    ================================

## Installation

    gem install pocket-console

## Or on Gemfile

    gem 'pocket-console', '~> 0.0.1'

## Usage

    pocketConsole = PocketConsole.new(taggedItems, untaggedItems)
    pocketConsole.print

taggedItems and untaggedItems are arrays that contain Item objects.

Take a look on [Item class implementation](https://github.com/HartasCuerdas/pocket-classes/blob/master/lib/item.rb).

Item class is provided by [pocket-classes gem](https://rubygems.org/gems/pocket-classes)
