class PagesController < ApplicationController
  def about
    @heading = 'ruby 3.0.1p64 (2021-04-05 revision 0fb782ee38)!'
    @body = ' Rails 6.1.3.2'
  end
end
