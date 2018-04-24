class ProjectsController < ApplicationController
  attr_accessor :project

  def new
    @project = Project.new
  end

  def confirm
    @project = create_project params[:project]
    p @project.to_s
  end

  def create
    @project = Project.create(
      name: params[:project][:name],
      user_id: params[:project][:user_id],
      about: params[:project][:about],
      start_date: params[:project][:start_date],
      end_date: params[:project][:end_date]
    )

    @result_message = 'success'
  end

  private
  def create_project params
    project = Project.new
    project.name = params[:name]
    project.about = params[:about]
    project.start_date = params[:start_date]
    project.end_date = params[:end_date]
    project
  end
end
