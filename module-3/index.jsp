<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Job Form</title>
        <style>
            body { font-family: Arial, sans-serif; margin: 30px; background-color: #f3f4f6; }
            .form-container {background: white; padding: 25px; border-radius: 8px; max-width: 500px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
            .form-group {margin-bottom: 15px; }
            label { display: block; margin-bottom: 5px; font-weight: bold; }
            input[type="text"], input[type="email"], select { width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
            .radio-group { margin-top: 5px; }
            .radio-group label { display: inline; font-weight: normal; margin-right: 15px; }
            input[type="submit"] { background-color: #0056b3; color: white; padding: 10px 15px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px; }
            input[type="submit"]:hover { background-color: #004085; }
    </style>
    </head>
    <body>
        <div class="form-container">
        <h1>Job Application Form</h1>
        <p>Please fill out the following form to submit your application for employment.</p>
        <form name="JobForm" action="results.jsp" method="post">
            
            <!-- Input 1: Text Field (Full Name) -->
            <div class="form-group">
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" required>
            </div>
            
            <!-- Input 2: Email Field (Email Address) -->
            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" required>
            </div>
            
            <!-- Input 3: Radio Buttons (Availability Type) -->
            <div class="form-group">
                <label>Availability:</label>
                <div class="radio-group">
                    <input type="radio" id="fullTime" name="availability" value="Full-Time" checked>
                    <label for="fullTime">Full-Time</label>
        
                    <input type="radio" id="partTime" name="availability" value="Part-Time">
                    <label for="partTime">Part-Time</label>
                </div>
            </div>
            
            <!-- Input 4: Dropdown List (Position Applied For) -->
            <div class="form-group">
                <label for="position">Desired Position:</label>
                <select id="position" name="position" required>
                    <option value="">-- Select a Position --</option>
                    <option value="Cook">Cook</option>
                    <option value="Cashier">Cashier</option>
                    <option value="Service Member">Service Member</option>
                    <option value="Prep">Prep</option>
                </select>
            </div>
            
            <!-- Input 5: Text Field (Available Start Date) -->
            <div class="form-group">
                <label for="startDate">Earliest Start Date (e.g., MM/DD/YYYY):</label>
                <input type="text" id="startDate" name="startDate" required>
            </div>
            
            <div class="form-group">
                <input type="submit" value="Submit Application">
                </div>
            </form>
        </div>
        
     </body>
</html>
