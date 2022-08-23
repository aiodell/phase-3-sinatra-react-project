class SponsorsController < ApplicationController
    set :default_content_type, 'application/json'

    # get all sponsors
    get "/sponsors" do
        sponsors = Sponsor.all
        sponsors.to_json
    end
end