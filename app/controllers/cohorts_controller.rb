class CohortsController < ApplicationController
  # def index # n + 1 problem
  #   cohorts = Cohort.all
  #   render json: cohorts, include: "users.submissions.comments"
  # end
  def index # n + 1 solution
    cohorts = Cohort.includes(:users => {:submissions => :comments}).all
    render json: cohorts, include: "users.submissions.comments"
  end
end
