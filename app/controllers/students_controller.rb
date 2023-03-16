class StudentsController < ApplicationController
  def create
    student = Student.new(
      first: params[:first],
      last: params[:last],
      phone: params[:phone],
      bio: params[:bio],
      linkedin: params[:linkedin],
      twitter: params[:twitter],
      website: params[:website],
      github: params[:github],
      photo: params[:photo],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if student.save
      render json: { message: "Student created successfully" }, status: :created
    else
      render json: { errors: student.errors.full_messages }, status: :bad_request
    end
  end
end
