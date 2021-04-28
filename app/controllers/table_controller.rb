class TableController < ApplicationController
  def index
    file = File.read("db/data.json")
    @elements = JSON.parse(file)
    @breaks = [0, 3, 11]
    @valueBreaks = [16, 10, 10]
    #@lanthanoids = @elements.map{|e| e["number"].to_i >= 57 && e["number"].to_i <= 71; e}
  end

  def show
    file = File.read("db/data.json")
    elements = JSON.parse(file)
    @element = elements[ params[:id] ]
  end
end
