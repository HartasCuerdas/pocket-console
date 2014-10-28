# Pocket Console [![Gem Version](https://badge.fury.io/rb/pocket-console.svg)](http://badge.fury.io/rb/pocket-console) [![Dependency Status](https://gemnasium.com/HartasCuerdas/pocket-console.svg)](https://gemnasium.com/HartasCuerdas/pocket-console)

[![Code Climate](https://codeclimate.com/github/HartasCuerdas/pocket-console/badges/gpa.svg)](https://codeclimate.com/github/HartasCuerdas/pocket-console) [![Inline docs](http://inch-ci.org/github/HartasCuerdas/pocket-console.svg?branch=master&style=flat)](http://inch-ci.org/github/HartasCuerdas/pocket-console)

Stats from [Pocket](http://getpocket.com) on your console.

[Pocket Console on RubyGems.org](https://rubygems.org/gems/pocket-console)

## tl;dr Working example

We have implemented a working example: [ruPocket](https://github.com/HartasCuerdas/ruPocket)

## Gem brightness

This gem provides methods to output stats about Pocket tags.

1. Total for Tagged & Untagged items, includes percentage for already read items.
2. Most Used tags
3. Less Used tags
4. Most Unread. Tags that are associated to the greatest amount of unread items.
5. Less Unread. Tags that are associated to the lowest amount of unread items.

Stats are presented in tables, formatted as you can see below:

    ==============================
            General Stats
    ------------------------------
    Tagged items:   567 (29% read)
    Untagged items: 787 (65% read)
    ------------------------------

    =================================
          Tag Stats - Most Used
    ---------------------------------
    tag           |  total  |  unread
    ---------------------------------
    dev           |    147  |     106
    ifttt         |     97  |      68
    reddit        |     83  |      56
    ios           |     37  |      33
    angularjs     |     34  |      26
    rails         |     33  |      29
    android       |     27  |      27
    kinvey        |     24  |      24
    pocket        |     24  |       4
    ruby          |     18  |      16
    youtube       |     18  |      16
    techonomics   |     18  |       6
    music         |     17  |       1
    work          |     17  |      10
    =================================

    =================================
          Tag Stats - Less Used
    ---------------------------------
    tag           |  total  |  unread
    ---------------------------------
    running       |      2  |       2
    mongodb       |      2  |       1
    transport     |      2  |       2
    design        |      2  |       2
    phonegap      |      3  |       3
    css           |      3  |       2
    git           |      3  |       2
    node.js       |      3  |       3
    multicultural |      3  |       2
    =================================

    =================================
         Tag Stats - Most Unread
    ---------------------------------
    tag           | unread  |   total
    ---------------------------------
    dev           |    106  |     147
    ifttt         |     68  |      97
    reddit        |     56  |      83
    ios           |     33  |      37
    rails         |     29  |      33
    android       |     27  |      27
    angularjs     |     26  |      34
    kinvey        |     24  |      24
    youtube       |     16  |      18
    ruby          |     16  |      18
    functional    |     14  |      14
    =================================

    =================================
         Tag Stats - Less Unread
    ---------------------------------
    tag           | unread  |   total
    ---------------------------------
    diigo         |      0  |       4
    published     |      0  |       5
    chess         |      1  |      11
    music         |      1  |      17
    drupal        |      1  |      10
    startups      |      1  |      10
    hartascuerdas |      1  |      16
    things        |      1  |       5
    mongodb       |      1  |       2
    running       |      2  |       2
    multicultural |      2  |       3
    git           |      2  |       3
    tips          |      2  |       4
    design        |      2  |       2
    transport     |      2  |       2
    css           |      2  |       3
    =================================

## Installation

    gem install pocket-console

## Or on Gemfile

    gem 'pocket-console', '~> 0.1.1'

## Usage

    pocketConsole = PocketConsole.new(taggedItems, untaggedItems)
    pocketConsole.print

taggedItems and untaggedItems are arrays that contain Item objects.

Take a look on [Item class implementation](https://github.com/HartasCuerdas/pocket-classes/blob/master/lib/item.rb).

Item class is provided by [pocket-classes gem](https://rubygems.org/gems/pocket-classes)
