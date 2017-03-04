
import java.io.Serializable;

public class Song implements Serializable {

    private String title;
    private String artist;
    private String album;
    private String genre;

    public Song() {

        title = "";
        artist = "";
        album = "";
        genre = "";
    }

    public Song(String title, String artist, String album, String genre) {
        this.title = title;
        this.artist = artist;
        this.album = album;
        this.genre = genre;

    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getTitle() {
        return title;
    }

    public String getArtist() {
        return artist;
    }

    public String getAlbum() {
        return album;
    }

    public String getGenre() {
        return genre;
    }
}
