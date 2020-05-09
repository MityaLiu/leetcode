# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# A Ruby static code analyzer and formatter, based on the community Ruby style guide
gem 'rubocop'
gem 'rubocop-performance'

# Patch-level verification for Bundler
gem 'bundler-audit', require: false
