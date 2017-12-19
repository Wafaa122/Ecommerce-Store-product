class OrdersController < ApplicationController
 before_action :authenticate_user!
  before_action :set_order, only: [:show, :edit, :update, :destroy]

    def index
    end

    def show
    end

    def new
    end

    def create
    end

    def destroy
    end

  end
