<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trial of the Cursed Eggs</title>
    <!-- Link to the external CSS sheet as required by the assignment -->
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

    <%-- Documenting the code: Declare and initialize book record metadata --%>
    <%
        String bookTitle = "Trial of the Cursed Eggs";
        String category = "Fantasy Fiction / Paranormal Romance";
        String overallDesc = "Dragonis Academy is built to forge rulers or weaponize the weak. My father wants me to be an obedient pawn, honed for a political marriage I'd rather die than accept. But I am a Shadowblade- the unseen knife in the dark. I'm not bending the knee to this school. I'm breaking its tradition in half.";


        String[][] bookData = {
            {"Author", "Serenity Rayne", "Metadata"},
            {"Publication Year", "2025", "Metadata"},
            {"Main Character", "Willamina (Mina)", "Characters"},
            {"Primary Setting", "Otherworld", "Setting"},
            {"Genre", "Fantasy Fiction", "Classification"}
        };
    %>

    <!-- Header section injecting Java variables cleanly outside of scriptlets -->
    <h1><%= bookTitle %></h1>

    <div class="description-box">
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
            <%-- Dynamic Scriptlet Loop: Safely targets row and column dimensions --%>
            <%
                for(int i = 0; i < bookData.length; i++) {
            %>
                <tr>
                    <td><%= bookData[i][0] %></td> <%-- Column 0: Field Name --%>
                    <td><%= bookData[i][1] %></td> <%-- Column 1: Record Value --%>
                    <td><%= bookData[i][2] %></td> <%-- Column 2: Topic Category --%>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>

</body>
</html>
