<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.lalit.Accounts.Accounts" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Account</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        #header {
            font-size: 14px;
            text-align: center;
            padding: 10px;
            background-color: Blue; /* Blue color for the header */
            color: White; /* White text color for the header */
        }

        #sidebar {
            width: 250px;
            position: fixed;
            top: 40px; /* Adjusted to accommodate the header */
            left: 0;
            height: 100%;
            background-color: #343a40;
            padding: 20px;
            color: #fff;
        }

        #content {
            margin-left: 250px;
            padding: 20px;
            border: 1px solid #ccc; /* Add a 1px solid border around the content area */
            border-radius: 5px; /* Add border radius for a softer look */
        }

        .form-container {
            border: 1px solid #ccc; /* Add a 1px solid border around the form */
            border-radius: 5px; /* Add border radius for a softer look */
            padding: 20px; /* Add padding for spacing within the border */
            background-color: #f9f9f9; /* Add a light background color */
            margin-bottom: 20px; /* Add margin at the bottom */
        }

        #content h2 {
            margin-top: 0;
        }

        .nav-link {
            color: #fff;
        }

        .nav-link:hover {
            color: #ccc;
        }

        .form-group {
            margin-bottom: 20px; /* Add spacing between form elements */
        }

        .table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
        }

        .table th,
        .table td {
            padding: 0.75rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }

        .table thead th {
            vertical-align: bottom;
            border-bottom: 2px solid #dee2e6;
        }

        .table tbody+tbody {
            border-top: 2px solid #dee2e6;
        }

        .table-bordered {
            border: 1px solid #dee2e6;
        }

        .table-bordered th,
        .table-bordered td {
            border: 1px solid #dee2e6;
        }

        .table-bordered thead th,
        .table-bordered thead td {
            border-bottom-width: 2px;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.05);
        }
    </style>
</head>
<body>

<div id="header">
    <h4>Bank</h4>
</div>



<div id="content">
    <div class="form-container">
        <h2>View Account</h2> 
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">A/C Number</th>
                    <th scope="col">A/C Name</th>
                    <th scope="col">A/C Mobile</th>
                    <th scope="col">A/C Type</th>
                    <th scope="col">A/C Balance</th>
                    <th scope="col">Delete</th>
                    <th scope="col">Approve</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Accounts> list = (List<Accounts>) request.getAttribute("list");
                    for(Accounts c:list) {
                %>
                <tr>
                    <td scope="row"><%= c.getAccNo() %></td>
                    <td scope="row"><%= c.getAccName() %></td>
                    <td scope="row"><%= c.getAccMob() %></td>
                    <td scope="row"><%= c.getAccType() %></td>
                    <td scope="row"><%= c.getAccBal() %></td>
                    
                    <td> <a href="delete/<%= c.getAccNo()%>"><button type="button" class="btn btn-primary btn-sm">Delete</button></a> </td>
                     <td> <a href="Approve/<%= c.getAccNo()%>"><button type="button" class="btn btn-primary btn-sm">Approve</button></a> </td>
                    
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>