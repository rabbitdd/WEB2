<%--
  Created by IntelliJ IDEA.
  User: rabbit
  Date: 15.10.2020
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ResultTable</title>
</head>
<body background="web/resources/17520.jpg">
<h1 style="color: azure">Result table</h1>
<table style="width: 100%; color: azure">
    <tr>
        <th class="header" width="16.7%"> X</th>
        <th class="header" width="16.7%"> Y</th>
        <th class="header" width="16.7%"> R</th>
        <th class="header" width="16.7%"> TIME</th>
        <th class="header" width="16.7%"> SCRIPT TIME</th>
        <th class="header" width="16.7%"> RESULT</th>
    </tr>
    <c:forEach var="item" items="${applicationScope.data}">
            ${item}
    </c:forEach>
    <p>
        <button type="submit" id="backBtn"
                style="border: 0; background: transparent; color: ghostwhite">
            <img src="web/resources/oblako.png" width="40" height="30" alt="submit"/>
            BACK
        </button>
    </p>

</table>
<script src="https://code.jquery.com/jquery-2.2.4.js"
        integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
        crossorigin="anonymous"></script>
<script src="web/js/scriptForTablePage.js" charset="UTF-8">
</script>
</body>
</html>
