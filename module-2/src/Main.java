<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<title>Trial of the Cursed Eggs</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

    <%-- Documenting the code: Declare variables and categories --%>
    <%
String bookTitle = "Trial of the Cursed Eggs";
String category = "Fantasy Fiction";
String overallDesc = "Dragonis Academy is built to forge rulers or weaponize the weak. My father wants me to be an obedient pawn, honed for a political marriage I'd rather die than accept. But I am a Shadowblade- the unseen knife in the dark. I'm not bending the knee to this school. I'm breaking its tradition in half.";


String[][] bookData = {
        {"Author", "Serenity Rayne", "Metadata"},
        {"Publication Year", "2025", "Metadata"},
        {"Main Character", "Willamina, Mina", "Characters"},
        {"Primary Setting", "Otherworld", "Setting"},
        {"Genre", "Fantasy Fiction", "Classification"}
};
    %>

    <h1><%= bookTitle %></h1>
    <div class="description">
        <p><strong>Overall Description:</strong> <%= overallDesc %></p>
        <p><strong>Topical Category:</strong> <%= category %></p>
    </div>

<h2>Record Data Table</h2>
    <table>
        <thead>
            <tr>
<th>Field Name</th>
<th>Record Value</th>
<th>Topic Category</th>
            </tr>
        </thead>
        <tbody>
            <%-- Loop through the array using a JSP scriptlet --%>
            <%
        for(int i = 0; i < bookData.length; i++) {
        %>
                <tr>
                    <td><%= bookData[i][0] %></td>
                    <td><%= bookData[i][1] %></td>
                    <td><%= bookData[i][2] %></td>
                </tr>
            <%
        }
        %>
        </tbody>
    </table>

</body>
</html>

