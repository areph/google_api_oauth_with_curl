# -*- mode: ruby -*-
# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.3.1'

# This workaround has already implemented in Bundler 2.0 branch.
# So we can remove this lines after we upgrade Bundler to 2.0.
# ref: https://github.com/bundler/bundler/pull/4109#issuecomment-183765510
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'google-api-client'
