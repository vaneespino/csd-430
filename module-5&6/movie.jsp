<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%-- Instantiating back end context properties through standard useBean operations --%>
<jsp:useBean id="movieBean" class="com.assignment.bean.MovieBean" scope="page" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vanessa's Movie Catalog Engine</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 40px; background-color: #fafafa; color: #333; }
        table { border-collapse: collapse; width: 80%; margin-top: 25px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); background-color: #fff; }
        th, td { border: 1px solid #e0e0e0; text-align: left; padding: 12px; }
        th { background-color: #4A90E2; color: white; text-transform: uppercase; font-size: 14px; }
        tr:nth-child(even) { background-color: #f9f9f9; }
        .app-card { background: white; padding: 20px; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.05); max-width: 80%; }
        .description { font-style: italic; color: #666; margin-bottom: 20px; line-height: 1.5; }
        select, input[type="submit"] { padding: 8px 12px; font-size: 14px; border-radius: 4px; border: 1px solid #ccc; }
        input[type="submit"] { background-color: #4A90E2; color: white; cursor: pointer; border: none; margin-left: 10px; }
        input[type="submit"]:hover { background-color: #357ABD; }
    </style>
</head>
<body>

<div class="app-card">
    <h1>Movie Library Catalog Browser</h1>
    <p class="description">
        <strong>Overview:</strong> This subsystem tracks cinematic storage attributes using a serialized JavaBean. 
        Select an active integer identifier primary key constraint from the interactive HTML Dropdown Menu below to parse and map individual record fields.
    </p>

    <!-- Interactive Lookup Selection Input Form Container -->
    <form action="movies.jsp" method="POST">
        <label for="movieId"><strong>Select Target Movie ID:</strong></label>
        <select name="movieId" id="movieId">
            <option value="">-- Choose Key Instance --</option>
            <% 
                // Scriptlet block to process and parse list option loops
                List<String> keyOptions = movieBean.getAllMovieIds();
                String selectedKey = request.getParameter("movieId");
                
                for (String key : keyOptions) {
                    String statusMarker = (key.equals(selectedKey)) ? "selected='selected'" : "";
            %>
                    <option value="<%= key %>" <%= statusMarker %>><%= key %></option>
            <% 
                } 
            %>
        </select>
        <input type="submit" value="Query Matrix Profile" />
    </form>

    <!-- Structural Target Table View Render Context Block -->
    <% 
        // Form evaluation scriptlet phase check logic
        if (selectedKey != null && !selectedKey.trim().isEmpty()) {
            Map<String, String> selectedDataMap = movieBean.getMovieRecord(selectedKey);
            
            if (selectedDataMap != null && !selectedDataMap.isEmpty()) {
    %>
                <h3 style="margin-top: 30px; color: #4A90E2;">Dataset Records Output: Instance <%= selectedKey %></h3>
                <p class="description">
                    <strong>Field Description Context:</strong> Below is a complete 5-field database relational map profile matching your direct primary key selection.
                </p>

                <table>
                    <thead>
                        <tr>
                            <th>Movie ID Field</th>
                            <th>Cinematic Production Title</th>
                            <th>Original Year Released</th>
                            <th>MPAA Censorship Rating</th>
                            <th>IMDb Public Critic Index Score</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong><%= selectedDataMap.get("movie_id") %></strong></td>
                            <td><%= selectedDataMap.get("title") %></td>
                            <td><%= selectedDataMap.get("release_year") %></td>
                            <td><%= selectedDataMap.get("MPAA_rating") %></td>
                            <td><%= selectedDataMap.get("IMDb_rating") %> / 10.0</td>
                        </tr>
                    </tbody>
                </table>
    <% 
            } else {
    %>
                <p style="color: #D0021B; margin-top: 25px; font-weight: bold;">Notice: No matching key records found in the database layer.</p>
    <% 
            }
        } 
    %>
</div>

</body>
</html>
