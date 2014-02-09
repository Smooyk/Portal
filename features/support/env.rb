require 'rspec-expectations'
require 'page-object'
require 'faker'
require "data_magic"

World(PageObject::PageFactory)
PageObject.add_framework(:ext,ExtJS_module)
PageObject.javascript_framework = :ext
