class StudentsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

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

  def show
    @student = Student.find_by(id: params["id"])
    render :show
  end

  def index
    @students = Student.all
    render :index
  end

  def update
    @student = Student.find_by(id: params["id"])
    @student.update(
      first: params["first"] || @student.first,
      last: params["last"] || @student.last,
      email: params["email"] || @student.email,
      phone: params["phone"] || @student.phone,
      bio: params["bio"] || @student.bio,
      linkedin: params["linkedin"] || @student.linkedin,
      twitter: params["twitter"] || @student.twitter,
      website: params["website"] || @student.website,
      github: params["github"] || @student.github,
      photo: params["photo"] || @student.photo,
    )
    render :show
  end
end
