<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="web/css/style.css">
    <title>WEB2</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

</head>
<body background="web/resources/17520.jpg">
<div class="intro">
    <div class="video">
        <!--<video class="video_content" src="../video_img/sky.mp4" muted autoplay loop></video>-->
    </div>
    <div class="intro_content">
        <table id="mainTable">
            <form action="" method="get" id="main_form" name="main_form">
                <tr>
                    <th class="header" colspan="4">
                        <style type="text/css">
                            p {
                                color: black;
                            }
                        </style>
                        <p> Mishanin Nikita <br>
                            P3210
                            Variant: 10165</p>
                    </th>
                </tr>
                <!--<tr class="header">
                    <th colspan="3" style="font-size: 36px">FORM</th>
                    <th style="font-size: 36px">COORDINATE</th>
                </tr>
                -->
                <tr>
                    <div class="all">
                        <td>
                            <div class="data_x">
                                <h1 class="header">R</h1>
                                <table>
                                    <tr>
                                        <td><input type="checkbox" id="m4" name="check_box_group" class="checkbox"
                                                   value="1">
                                            <label for="m4">1</label></td>
                                        <td><input type="checkbox" id="m3" name="check_box_group" class="checkbox"
                                                   value="1.5">
                                            <label for="m3">1.5</label></td>
                                        <td><input type="checkbox" id="m2" name="check_box_group" class="checkbox"
                                                   value="2">
                                            <label for="m2">2</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" id="m1" name="check_box_group" class="checkbox"
                                                   value="2.5">
                                            <label for="m1">2.5</label>
                                        </td>
                                        <td>
                                            <input type="checkbox" id="m0" name="check_box_group" class="checkbox"
                                                   value="3">
                                            <label for="m0">3</label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div class="data_y">
                                <h1 class="header">X</h1>
                                <lable for="y" class="header">-5<=X<=5</lable>
                                <input class="text" size="15%" name="x" placeholder="Enter X value" id="x"
                                       maxlength="23">
                                <p>
                                    <button type="submit" class="validateBtn" value="Validate" id="button"
                                            style="border: 0; background: transparent; color: ghostwhite">
                                        <img src="web/resources/oblako.png" width="40" height="30" alt="submit"/>
                                        GO
                                    </button>
                                </p>
                                <p>
                                    <button type="submit" class="validateBtn" value="reset" id="reset"
                                            style="border: 0; background: transparent; color: ghostwhite">
                                        <img src="web/resources/oblako.png" width="40" height="30" alt="submit"/>
                                        DROP
                                    </button>
                                </p>
                            </div>
                        </td>
                        <td>
                            <div class="data_r">
                                <h1 class="header">Y</h1>
                                <table class="table_x_y">
                                    <tr>
                                        <td>
                                            <input type="button" id="r1" name="button" value="-2" autofocus>
                                            <!--<label for="r1">1</label>-->
                                        </td>
                                        <td>
                                            <input type="button" id="r2" name="button" value="-1.5">
                                            <!--<label for="r2">1.5</label>-->
                                        </td>
                                        <td>
                                            <input type="button" id="r3" name="button" value="-1">
                                            <!--<label for="r2">1.5</label>-->
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <input type="button" id="r4" name="button" value="-0.5">
                                            <!--<label for="r4">2.5</label>-->
                                        </td>
                                        <td>
                                            <input type="button" id="r5" name="button" value="0">
                                            <!--<label for="r5">3</label>-->
                                        </td>
                                        <td>
                                            <input type="button" id="r6" name="button" value="0.5">
                                            <!--<label for="r5">3</label>-->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="button" id="r7" name="button" value="1">
                                            <!--<label for="r3">2</label>-->
                                        </td>
                                        <td>
                                            <input type="button" id="r8" name="button" value="1.5">
                                            <!--<label for="r5">3</label>-->
                                        </td>
                                        <td>
                                            <input type="button" id="r9" name="button" value="2">
                                            <!--<label for="r5">3</label>-->
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </div>

                    <td width="30%" align="center" style="height: 300px" bgcolor="black">
                        <svg height="300" width="300" xmlns="http://www.w3.org/2000/svg" class="coordinate_plane" id="svg">
                            <text fill="white" x="160" y="20">Y</text>
                            <text fill="white" x="280" y="140">X</text>
                            <text fill="white" x="170" y="100">R / 2</text>
                            <text fill="white" x="170" y="50">R</text>

                            <line stroke="white" x1="140" x2="160" y1="100" y2="100"></line>
                            <line stroke="white" x1="140" x2="160" y1="50" y2="50"></line>

                            <line stroke="white" x1="140" x2="160" y1="200" y2="200"></line>
                            <line stroke="white" x1="140" x2="160" y1="250" y2="250"></line>

                            <line stroke="white" x1="50" x2="50" y1="140" y2="160"></line>
                            <line stroke="white" x1="100" x2="100" y1="140" y2="160"></line>

                            <line stroke="white" x1="200" x2="200" y1="140" y2="160"></line>
                            <line stroke="white" x1="250" x2="250" y1="140" y2="160"></line>

                            <line stroke="white" x1="0" x2="300" y1="150" y2="150"></line>
                            <line stroke="white" x1="150" x2="150" y1="0" y2="500"></line>

                            <polygon fill="white" points="150,0 144,15 156,15" stroke="white"></polygon>
                            <polygon fill="white" points="300,150 285,156 285,144" stroke="white"></polygon>


                            <!--<polygon id="triangle" class="triangle" fill="blue" fill-opacity="0.3" points="150,250 150,150 200,150"
                                     stroke="blue"></polygon>-->
                            <polygon id="rectangle" class="rectangle" fill="blue" fill-opacity="0.3"
                                     points="200,150 150,150 150,250 200,250"
                                     stroke="blue"></polygon>
                            <polygon id="triangle" class="triangle" fill="blue" fill-opacity="0.3"
                                     points="150,50 150,150 100,150"
                                     stroke="blue"></polygon>
                            <path id="half_circle" class="half_circle"
                                  d="M 200 150 A 120 100, 90, 0, 0, 150 100 L 150 150 Z" fill="blue"
                                  fill-opacity="0.3"
                                  stroke="blue"></path>
                        </svg>
                    </td>
                </tr>
            </form>
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
            </table>
        </table>
    </div>
</div>
<script src="https://code.jquery.com/jquery-2.2.4.js"
        integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
        crossorigin="anonymous"></script>
<script src="web/js/validation.js" charset="UTF-8">
</script>
</body>
</html>
