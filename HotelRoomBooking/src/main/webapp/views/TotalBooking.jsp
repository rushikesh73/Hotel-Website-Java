<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.Hotel.Entity.HotelData" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Hotel Bookings</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            padding: 40px;
            font-family: 'Arial', sans-serif;
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #fff;
            font-weight: bold;
            text-shadow: 2px 2px #ff6f61;
        }
        .container {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0px 0px 15px 2px rgba(0, 0, 0, 0.1);
        }
        table {
            margin-top: 20px;
        }
        th {
            text-align: center;
            vertical-align: middle;
            background-color: #ff6f61;
            color: #fff;
            font-size: 16px;
            text-shadow: 1px 1px 2px #000;
        }
        td {
            text-align: center;
            vertical-align: middle;
            font-size: 14px;
            color: #333;
        }
        tbody tr:nth-child(even) {
            background-color: #ffe0b2;
        }
        tbody tr:nth-child(odd) {
            background-color: #ffccbc;
        }
        tbody tr:hover {
            background-color: #ffab91;
            color: #fff;
            transition: background-color 0.3s ease;
        }
        .no-data {
            text-align: center;
            font-size: 18px;
            color: #666;
            font-weight: bold;
        }
    </style>
</head>
<body>

<h1>Hotel Bookings</h1>
<div class="container">
    <table class="table table-bordered table-hover table-striped">
        <thead>
            <tr>
                <th>Phone</th>
                <th>Name</th>
                <th>Email</th>
                <th>Date Range</th>
                <th>Days</th>
                <th>Total Price</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<HotelData> hotelList = (List<HotelData>) request.getAttribute("key");
                if (hotelList != null && !hotelList.isEmpty()) {
                    for (HotelData hotel : hotelList) {
            %>
            <tr>
                <td><%= hotel.getPhone() %></td>
                <td><%= hotel.getName() %></td>
                <td><%= hotel.getEmail() %></td>
                <td><%= hotel.getDaterange() %></td>
                <td><%= hotel.getDays() %></td>
                <td><%= hotel.getTotalprice() %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="6" class="no-data">No bookings available.</td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
