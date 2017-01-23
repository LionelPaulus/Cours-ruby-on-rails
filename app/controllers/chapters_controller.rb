class ChaptersController < ApplicationController

  def index
    # On récupère tous les chapitres parents
    @chapters = Chapter.parents_only
  end

end
