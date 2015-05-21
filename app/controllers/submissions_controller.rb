class SubmissionsController < ApplicationController

	def index
		@submissions = Submission.all		
	end

	def new
		@submission = Submission.new
	end

	def create
		@submission = Submission.new(submission_params)
		if @submission.save
			redirect_to submissions_path
		else
			render :new
		end
	end

	private

	def permission_params
		params.require(:submission).permit(:company_name, :resume, :cover_letter, :notes)
	end

end