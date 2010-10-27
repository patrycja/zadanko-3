class SubjectsController < ApplicationController
 def new
      @subject = Subject.new
 end
 def create
      @subject = Subject.new(params[:subject])
      if @subject.save
            redirect_to :action => 'index', :controller => 'books'
      else
            render :action => 'new'
      end
 end
end