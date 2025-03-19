<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Members</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            padding: 20px;
            background-color: #d6cccc;
            position: relative;
            background: rgb(255,255,255);
            background: linear-gradient(180deg, rgba(255,255,255,0) 0%, rgba(28, 154, 188, 0.569) 8%, rgba(191, 48, 79, 0.364) 95%);
      }
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            /* background: rgba(185, 170, 170, 0.5);  */
            z-index: -1;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.467);
            padding: 30px 20px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 400px;
            box-sizing: border-box;
        }
        .container h2 {
            margin-bottom: 20px;
            font-size: 28px;
            color: #333;
            text-align: center;
            border-bottom: 2px solid #ccc;
            padding-bottom: 10px;
        }
        .container label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
            font-weight: bold;
            color: #555;
        }
        .container input {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
        }
        .container input:focus {
            border-color: #007bff;
            outline: none;
            background-color: #f9f9f9;
        }
        .button-group {
            display: flex;
            justify-content: space-between;
        }
        .button-group button {
            width: 48%;
            padding: 12px;
            font-size: 16px;
            color: white;
            background-color: green;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: all 0.3s ease;
        }
        .button-group .b1 {
            background-color: red;
        }
        .button-group button:hover {
            opacity: 0.9;
            transform: scale(1.05);
        }
        .button-group a {
            text-decoration: none;
            color: white;
            display: block;
            text-align: center;
        }
    </style>
</head>
<body>

    <div class="container">
        <div style="display: flex;justify-content: center;align-self: center;">
            <img style="height: 100px;width: 100px;"src="logo3-removebg-preview.png">
            </div>
        <h2>Edit Member  Details</h2>
       <form action="UpdateMemberServlet" method="post">
             <label for="MemberID">Member ID</label>
            <input type="number" id="MemberID" name="MemberID" value="${MemberID}" placeholder="Enter The Member ID" readonly>
              
            <label for="MemberName">Member Name</label>
            <input type="text" id="MemberName" name="MemberName" value="${MemberName}" placeholder="Enter The Member Name" required>

            <label for="MemberPosition">Member Position</label>
            <input type="text" id="MemberPosition" name="MemberPosition" value="${MemberPosition}" placeholder="Enter The Member Position" required>
            
            <label for="MobileNumber">Mobile Number</label>
            <input type="text" id="MobileNumber" name="MobileNumber"  value="${MobileNumber}"placeholder="Enter Mobile Number" required>

            <label for="AadharNumber">Aadhar Number</label>
            <input type="text" id="AadharNumber" name="AadharNumber" value="${AadharNumber}" placeholder="Enter The Aadhar Number" required>
            
            <label for="Address">Address</label>
            <input type="text" id="Address" name="MAddress" value="${MAddress}" placeholder="Enter The Address" required>
            
          
            <div class="button-group">
                <button type="submit">Update</button>
                <button class="b1" type="submit"> <a href="ViewMemberServlet" class="b1">Close</a></button>
            </div>
        </form>

    </div>

</body>
</html>
