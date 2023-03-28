class BoardsController < ApplicationController

    def index
        @boards = Board.all.includes(:user).order(created_at: :desc)
    end

    def new
        @board = Board.new
    end

    def create
        @board = Board.new(board_params)
        @board.user = current_user
        if @board.save
            redirect_to boards_path, success: t('defaults.message.created', item: Board.model_name.human)
        else
            flash.now[:danger] = t('defaults.message.not_created', item: Board.model_name.human)
            render :new
        end
    end

    def show
        @board = Board.find(params[:id])
    end


    private

    def board_params
        params.require(:board).permit(:title, :body)
    end
end
