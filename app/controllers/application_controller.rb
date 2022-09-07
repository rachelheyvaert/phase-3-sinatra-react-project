require 'sinatra'
require 'sinatra/cross_origin'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


end
