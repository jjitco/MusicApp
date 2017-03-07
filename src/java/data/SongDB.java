/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import business.Song;
import java.util.ArrayList;

public class SongDB {

//    public static Song getSongs() {
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//
//        String query = "SELECT ID, Title, Album, Genre FROM music;";
//        try {
//            ps = connection.prepareStatement(query);
//            rs = ps.executeQuery();
//            Song song = null;
//            if (rs.next()) {
//                song = new Song();
//                song.setTitle(rs.getString("Title"));
//                song.setArtist(rs.getString("Artist"));
//                song.setAlbum(rs.getString("Album"));
//                song.setGenre(rs.getString("Genre"));
//            }
//            return song;
//        } catch (SQLException e) {
//            System.out.println(e);
//            return null;
//        } finally {
//            DBUtil.closeResultSet(rs);
//            DBUtil.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//    }
    public static ArrayList<Song> getSongs() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        ArrayList<Song> songList = new ArrayList<Song>();
        
        String query = "SELECT ID, Title, Artist, Album, Genre FROM song;";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            Song song = null;
            while (rs.next()) {
                song = new Song();
                song.setTitle(rs.getString("Title"));
                song.setArtist(rs.getString("Artist"));
                song.setAlbum(rs.getString("Album"));
                song.setGenre(rs.getString("Genre"));
                songList.add(song);
            }
            
            return songList;
            
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
}
