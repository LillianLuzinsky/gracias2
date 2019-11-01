class JournalEntriesController < ApplicationController

    def journal
        @answer = Answer.all

    end

    def show

        @answer = Answer.find(params[:id])
    
    end

    def new

    end

    def create

        @answer = Answer.new(journal_entries_params)

        @answer.save
        redirect_to @answer
    
    end

    private def journal_entries_params
        params.require(:response).permit(:text)
    end
    
end
