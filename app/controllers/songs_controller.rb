class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def show 
        @song = Song.find(params[:id])
    end

    def create
        # render plain: params[:song].inspect No guarda nada 
        # @song = Song.new(params[:song]) Error de seguridad
        @song = Song.new(song_params)
        @song.save 
        redirect_to @song
    end

    private
        def song_params
            params.require(:song).permit(:title, :artist, :album, :lyrics)
        end
    
end
