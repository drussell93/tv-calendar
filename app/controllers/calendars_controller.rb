class CalendarsController < ApplicationController
  def index
  end

  def test
    Event.create(title: "testPATH", start: "2017-11-27", end: "2017-11-27 00:30:00")
  end 
   
  def add
    @some_boolean = params[:some_name]
    @userInput = params[:userInput]
    if @userInput != nil then
       @searchValue = "http://api.tvmaze.com/search/shows?q=" + @userInput
       @lastInput = @userInput
    else if @userInput == nil then
       @searchValue = "http://api.tvmaze.com/search/shows?q=South Park"
    end
  end
  end
end
