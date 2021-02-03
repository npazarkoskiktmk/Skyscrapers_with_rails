class FeedbacksController < ApplicationController

    def show
        # byebug
        @feedback = Feedback.find(params[:id])
    end

    def create
        @book = Book.find(params[:book_id])
        @feedback = Feedback.new(feedback_params)
        @feedback.book_id = @book.id
        @feedback.user_id = current_user.id
        # byebug
        if @feedback.save
            redirect_to book_path(@book.id), notice: "Feedback has been added"
        else
            redirect_to books_path
        end
    end

    private

    def feedback_params
        params.require(:feedback).permit(:comment)
    end
end
