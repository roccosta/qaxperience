# frozen_string_literal: true

require 'capybara/dsl'
require 'cucumber'
require 'faker'
require 'pry'
require 'rb-readline'
require 'rspec'
require 'rspec/expectations'
require 'selenium/webdriver'
require 'site_prism'
require 'yaml'

World(Capybara::DSL)

Capybara.current_driver = :selenium_chrome
Capybara.default_max_wait_time = 10