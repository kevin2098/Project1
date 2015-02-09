class LinesController < ApplicationController
  def index
     @lines = ['Green Line', 'Blue Line', 'Orange Line', 'Red Line']
  end
end
