require 'pry'

require_relative 'database_helper'
require_relative 'gravatar_helper'

include Mumbler::DatabaseHelper
include Mumbler::GravatarHelper

binding.pry