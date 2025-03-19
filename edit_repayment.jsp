<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Installment </title>
    <script>
        function fetchMemberName() {
            var memberID = document.getElementById("MemberID").value;
            if (memberID) {
                var xhr = new XMLHttpRequest();
                xhr.open("GET", "GetMemberName?MemberID=" + memberID, true);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        document.getElementById("MemberName").value = xhr.responseText;
                    }
                };
                xhr.send();
            }
        }
    </script>
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
            background-image: url(save.webp);
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
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
            background-color: rgba(255, 255, 255, 0.641);
            padding: 30px;
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
            border-bottom: 2px solid #cccccc57;
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
        <h2> Edit Installment Details</h2>
         <form action="UpdaterepaymentServlet" method="post">
            
            <label for="RepaymentID">Installment ID</label>
            <input type="number" id="RepaymentID" name="RepaymentID" value="${RepaymentID}" placeholder="Enter The Installment ID" readonly>
            
             <label for="LoanID">Loan ID</label>
            <input type="number" id="LoanID" name="LoanID" value="${LoanID}" placeholder="Enter The Loan ID" readonly>
            
            <label for="MemberID">Member ID</label>
            <input type="number" id="MemberID" name="MemberID" value="${MemberID}" placeholder="Enter The Member ID" required oninput="fetchMemberName()">
                    
            <label for="MemberName">Member Name</label>
            <input type="text" id="MemberName" name="MemberName" value="${MemberName}" placeholder="Enter The Member Name" required readonly>

            <label for="DateOfRepayment">Date of Installment</label>
            <input type="date" id="DateOfRepayment" name="RepaymentDate" value="${RepaymentDate}" placeholder="Enter The Date of Installment" required>

            <label for="AmountOfBank">Amount of Bank Loan</label>
            <input type="number" id="AmountOfBank" name="BankAmount" value="${BankAmount}" placeholder="Enter The Amount of Bank Loan" required>

            <label for="AmountOfInternal">Amount of Internal Loan</label>
            <input type="name" id="AmountOfInternal" name="InternalAmount" value="${InternalAmount}" placeholder="Enter The Amount of Internal Loan" >
            
            <label for="InternalInterest">Amount of Internal Loan Interest</label>
            <input type="name" id="InternalInterest" name="InternalInterest" value="${InternalInterest}" placeholder="Enter The Amount Internal loan Interest" >
            
            <label for="Saving">Saving Installment </label>
            <input type="number" id="Saving" name="SavingInstallment" value="${SavingInstallment}" placeholder="Enter The Saving Installment" required>

            
          
            <div class="button-group">
                <button type="submit">Edit</button>
                <button class="b1" type="submit"><a href="ViewRepaymentServlet">Close</a></button>
            </div>
        </form>
      
    </div>

</body>
</html>
