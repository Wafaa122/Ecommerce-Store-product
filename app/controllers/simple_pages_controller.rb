class SimplePagesController < ApplicationController
  def landing_page
    @products = Product.all
  end
  def index
  end
    def thank_you
      @name = params[:name]
      @email = params[:email]
      @message = params[:message]
      ActionMailer::Base.mail(
          from: @email,to: 'rubystore774@gmail.com',
          subject: "A new contact form message from #{@name}",
          body: @message).deliver_now
      UserMailer.contact_form(@email, @name, @message).deliver_now
    end

  end
