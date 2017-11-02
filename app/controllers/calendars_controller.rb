class CalendarsController < ApplicationController
  def index
  end
  
  def add
    @userInput = params[:userInput]
    if @userInput != nil then
       @searchValue = "http://api.tvmaze.com/search/shows?q=" + @userInput
    else if @userInput == nil then
       @searchValue = "http://api.tvmaze.com/search/shows?q=South Park"
    end
    end
  end
end
