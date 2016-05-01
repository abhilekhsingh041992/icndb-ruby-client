require 'icndb_client/version'
require 'rubygems'
require 'httparty'
require 'json'

module Icndb
  class Client
    include HTTParty
    base_uri 'api.icndb.com'
    default_params :output => 'json'
    format :json


    def self.get_categories
      request("/categories")
    end

    def self.get_all_jokes
      request("/jokes")
    end

    def self.get_jokes(count=1)
      request("/jokes/#{count}")
    end

    def self.get_random_joke
      request("/jokes/random")
    end

    def self.get_random_jokes(count=1)
      request("/jokes/random/#{count}")
    end

    def self.get_jokes_categories_based(categories=[], count=1)
      request("/jokes/random/#{count}?limitTo=#{categories}")
    end

    def self.get_jokes_exclude_categories(categories=[], count=1)
      request("/jokes/random/#{count}?exclude=#{categories}")
    end

    private

    def self.request(path)
      response = get(path)
      if response.success?
        JSON.parse(response.body)
      else
        raise response.response
      end
    end

  end
end
