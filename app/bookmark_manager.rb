require 'data_mapper'
require 'sinatra'
require 'rack-flash'
#require 'sinatra/partial'

#DATA MAPPER SET-UP

require_relative 'models/link'
require_relative 'models/tag'
require_relative 'models/user'

#CONTROLLER SET-UP
require_relative 'data_setup' #remember to require actual data_setup file
require_relative 'helpers/application'

require_relative 'controllers/users'
require_relative 'controllers/sessions'
require_relative 'controllers/links'
require_relative 'controllers/tags'
require_relative 'controllers/application'

enable :sessions
set :session_secret, 'super_secret'
use Rack::Flash
use Rack::MethodOverride