<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- Import your custom JavaBean package --%>
<%@ page import="Espino_Mod4.BookRecordBean" %>

<%-- Documenting the code: Use Scriptlets for holding Java initialization code --%>
<%
    
    BookRecordBean book = new BookRecordBean();

    
    book.setBookTitle("Trial of the Cursed Eggs");
    book.setCategory("Fantasy Fiction / Paranormal Romance");
    book.setOverallDesc("Dragonis Academy is built to forge rulers or weaponize the weak. My father wants me to be an obedient pawn, honed for a political marriage I'd rather die than accept. But I am a Shadowblade- the unseen knife in the dark. I'm not bending the knee to this school. I'm breaking its tradition in half.");
    
   
    book.setAuthor("Serenity Rayne");
    book.setPublicationYear("2025");
    book.setMainCharacter("Willamina (Mina)");
    book.setPrimarySetting("Otherworld");
    book.setGenre("Fantasy Fiction");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= book.getBookTitle() %></title>
    <!-- Link to your external CSS sheet -->
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

    
    <h1><%= book.getBookTitle() %></h1>

    
    <div class="description-box">
        <p><strong>Overall Description:</strong> <%= book.getOverallDesc() %></p>
        <p><strong>Topical Category:</strong> <%= book.getCategory() %></p>
    </div>

    <h2>Record Data Table</h2>
    
    
    <table>
        <thead>
            <tr>
                <th>Field Name</th>
                <th>Field Description</th>
                <th>Record Value</th>
                <th>Topic Category</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Author</strong></td>
                <td>The creative writer of the publication</td>
                <td><%= book.getAuthor() %></td>
                <td>Metadata</td>
            </tr>
            <tr>
                <td><strong>Publication Year</strong></td>
                <td>The official release date of the book text</td>
                <td><%= book.getPublicationYear() %></td>
                <td>Metadata</td>
            </tr>
            <tr>
                <td><strong>Main Character</strong></td>
                <td>The primary protagonist driving the story narrative</td>
                <td><%= book.getMainCharacter() %></td>
                <td>Characters</td>
            </tr>
            <tr>
                <td><strong>Primary Setting</strong></td>
                <td>The core fictional universe or location map</td>
                <td><%= book.getPrimarySetting() %></td>
                <td>Setting</td>
            </tr>
            <tr>
                <td><strong>Genre</strong></td>
                <td>Literary classification category style</td>
                <td><%= book.getGenre() %></td>
                <td>Classification</td>
            </tr>
        </tbody>
    </table>

</body>
</html>
