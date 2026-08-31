<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Application Received</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; background-color: #f3f4f6; }
        .table-container { background: white; padding: 25px; border-radius: 8px; max-width: 600px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
        h1 { color: #333; }
        .overall-desc { color: #666; font-style: italic; margin-bottom: 20px; }
        table { width: 100%; border-collapse: collapse; margin-top: 15px; }
        th, td { border: 1px solid #dddddd; text-align: left; padding: 12px; }
        th { background-color: #0056b3; color: white; width: 40%; }
        tr:nth-child(even) { background-color: #f9f9f9; }
    </style>
</head>
<body>

<%
    // Extracts data submitted from JobForm
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");
    String availability = request.getParameter("availability");
    String position = request.getParameter("position");
    String startDate = request.getParameter("startDate");

    // Documentation/Fallbacks
    if (fullName == null) fullName = "Not Provided";
    if (email == null) email = "Not Provided";
    if (availability == null) availability = "Not Provided";
    if (position == null) position = "Not Provided";
    if (startDate == null) startDate = "Not Provided";
%>

    <div class="table-container">
        <h1>Submission Received</h1>
        <p class="overall-desc">
            <strong>Overall Data Description:</strong> This screen displays the structured applicant record processed from the employment submission form.
        </p>
        
        <table>
            <thead>
                <tr>
                    <th>Field Description</th>
                    <th>Record Data Values</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong>Applicant Full Name</strong></td>
                    <td><%= fullName %></td>
                </tr>
                <tr>
                    <td><strong>Contact Email Address</strong></td>
                    <td><%= email %></td>
                </tr>
                <tr>
                    <td><strong>Schedule Availability</strong></td>
                    <td><%= availability %></td>
                </tr>
                <tr>
                    <td><strong>Desired Job Position</strong></td>
                    <td><%= position %></td>
                </tr>
                <tr>
                    <td><strong>Earliest Start Date</strong></td>
                    <td><%= startDate %></td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>