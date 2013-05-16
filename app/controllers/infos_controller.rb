class InfosController < ApplicationController
  def teachers
    @on_page = 3;
  end
  def students
    @on_page = 4;
  end
  def parents
    @on_page = 5;
  end
  def schools
    @on_page = 6;
  end
end
