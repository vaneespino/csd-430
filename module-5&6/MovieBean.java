package com.assignment.bean;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MovieBean implements Serializable {
  private static final long serialVersionUID = 1L;

  // Database connection details configured for CSD430 schema
  private String dbURL = "jdbc:mysql://localhost:3306/CSD430";
  private String dbUser = "root";
  private String dbPassword = "password";

  public MovieBean() {

  }

  // Helper method to resolve JDBC connections safely
  private Connection getConnection() throws Exception {
    Class.forName("com.mysql.cj.jdbc.Driver");
    return DriverManager.getConnection(dbURL, dbUser, dbPassword);
  }

  public List<String> getAllMovieIds() {
    List<String> ids = new ArrayList<>();
    String query = "SELECT movie_id FROM vanessa_movies_data";

    try (Connection conn = getConnection();
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery(query)) {

      while (rs.next()) {
        ids.add(String.valueOf(rs.getInt("movie_id")));
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return ids;
  }


  public Map<String, String> getMovieRecord(String movieId) {
    Map<String, String> record = new HashMap<>();
    String query = "SELECT * FROM vanessa_movies_data WHERE movie_id = ?";

    try (Connection conn = getConnection();
         PreparedStatement pstmt = conn.prepareStatement(query)) {

      pstmt.setInt(1, Integer.parseInt(movieId));
      try (ResultSet rs = pstmt.executeQuery()) {
        if (rs.next()) {
          record.put("movie_id", String.valueOf(rs.getInt("movie_id")));
          record.put("title", rs.getString("title"));
          record.put("release_year", String.valueOf(rs.getInt("release_year")));
          record.put("MPAA_rating", rs.getString("MPAA_rating"));
          record.put("IMDb_rating", String.valueOf(rs.getBigDecimal("IMDb_rating")));
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return record;
  }
}
