require_relative File.join(File.dirname(__FILE__), 'router.rb')

class AppBrain
	attr_reader :router

	def initialize
		@router = Router.new
	end
	#Router loads ROUTE
	#Extracts data from RACK ENV response
	#Passes to ROUTE
	#Route loads base CONTROLLER && customer routes
	#Base Controller loads RESPONSE
end