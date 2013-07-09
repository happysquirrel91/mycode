class UsersController < ApplicationController
  def new
    #finished('copy_for_signup_link')
    #@view=ab_test("view_link", "work", "out")

  end
  def index
    @view = ab_test("view_link", "viewb", "viewa")
      if @view == "viewa"
        render :template => "users/view1"
      else
        render :template => "users/view2"
      end
    finished("view_link")
  end

  def view1
    finished('Button')
  end
  def view2
    finished('Button')
  end

  def view3
    finished("copy_for_signup_link")
    render :template => "users/view3"



  end

  def show

  end
end

#<%
#require 'split/export'
#csv_data = Split::Export.to_csv
#File.open('path/to/my.csv, 'w') {|f| f.write(csv_data) }     %>