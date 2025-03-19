<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            padding: 20px;
            background-color: #f4eeee;
            position: relative;
            background: rgb(131,58,180);
             background: linear-gradient(90deg, rgba(131,58,180,0.48175766888786764) 4%, rgba(214,38,212,0.4901610302324054) 17%, rgba(253,29,29,0.5433823187478116) 43%, rgba(45,69,253,0.557387920988708) 69%, rgba(252,176,69,0.4481442235097164) 90%);
        }
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(185, 170, 170, 0.5); 
            z-index: -1;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.604);
            padding: 30px 20px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 500px;
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
        <h2>Edit Bank Details</h2>
        <form action="UpdateBankServlet" method="post">
            <label for="BankID">BankID </label>
            <input type="number" id="BankID" name="BankID" value="${BankID}"  readonly>
            
            <label for="BankName">Bank Name</label>
            <input type="text" id="BankName" name="BankName" value="${BankName}" required>
             
             <label for="Address">Address</label>
            <input type="text" id="Address" name="BAddress" value="${BAddress}"  required>
            
            
            <div class="button-group">
                <button type="submit">Edit</button>
                <button class="b1" type="button" onclick="window.location.href='ViewBankServlet'">Close</button>

            </div>
        </form>
    </div>

</body>
</html>
