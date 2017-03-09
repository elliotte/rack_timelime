require 'bundler'
Bundler.require

require File.join(File.dirname(__FILE__),'lib', 'app_brain')
	#AppBrain loads Router
	#Router loads ROUTE
	#Extracts data from RACK ENV response
	#Passes to ROUTE
	#Route loads base CONTROLLER && customer routes
	#Base Controller loads RESPONSE
require File.join(File.dirname(__FILE__),'lib', 'request_handler')

# Create App
BrainRackApplication = AppBrain.new

# Load the routes
require File.join(File.dirname(__FILE__),'config', 'routes')

# Set RACK to call on ENV
run RequestHandler.new