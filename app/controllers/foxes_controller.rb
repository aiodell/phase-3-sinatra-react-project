class FoxesController < ApplicationController
    set :default_content_type, 'application/json'

    #get all foxes
    get '/foxes' do
        foxes = Fox.all
        foxes.to_json
    end

     #get all foxes
     get '/foxes/:id' do
        foxy = Fox.find(params[:id])
        foxy.to_json
    end

    delete a fox
    delete '/foxes/:id' do
        foxy = Fox.find(params[:id])
        foxy.destroy
        foxy.to_json
    end

end