y = document.getElementsByName("button");
x = document.getElementById("x");
check_box = document.getElementsByClassName("checkbox");
button_reset = document.getElementById("reset");
button = document.getElementById("button");
var r;
let check = 0;
var rArea = function () {
    let ans = 0;
    for (let i = 0; i < check_box.length; i++)
        if (check_box[i].checked) {
            r = check_box[i].value;
            console.log(check_box[i].value);
            ans++;
        }
    return ans;

};
if (localStorage.getItem('points') === null)
    localStorage.setItem('points', "");

var y_val;
table = document.querySelector("intro");
const arr = ["blue", "black", "red", "green", "yellow"];

/*document.getElementById("button").addEventListener("click", function () {
    event.preventDefault();
    console.log(x.value);
    for (let i = 0; i < check_box.length; i++) {
       if (check_box[i].checked)
           console.log(check_box[i].value);
    }
    console.log(y_val);
});
/*
 */
for (let i = 0; i < y.length; i++) {
    y[i].addEventListener("click", function () {
        y_val = y[i].value;
    })
}

const pt = svg.createSVGPoint();
const send = function (x, y, r) {
    $.ajax({
        type: 'GET',
        url: "/WEB2_war/welcome/"
            .concat("?x=")
            .concat(x)
            .concat("&y=")
            .concat(y).concat("&r=")
            .concat(r),
        success: function (response) {
            //console.log(response.status);
            console.log(response);
            //location.href = "http://localhost:8080/WEB2/table.jsp";
            location.href = "http://localhost:41100/WEB2_war/table.jsp";
            //localStorage.setItem('history', response);
            alert("Отлично!");
            //event.preventDefault();
        },
        error: function (response) {
            //location.href = "http://localhost:8080/WEB2/errorPage.jsp";
            location.href = "http://localhost:41100/WEB2_war/errorPage.jsp";
            console.log(response);
            //$(".intro").html(response);
        }
    });
};
let points = "";
const draw = function (event) {
    let circle = document.createElementNS("http://www.w3.org/2000/svg", 'circle');
    pt.x = event.clientX;
    pt.y = event.clientY;
    const cursorpt = pt.matrixTransform(svg.getScreenCTM().inverse());
    circle.style.fill = "yellow";
    circle.style.r = "3";
    circle.style.cx = cursorpt.x;
    circle.style.cy = cursorpt.y;
    document.getElementById("svg").appendChild(circle);
    console.log(cursorpt.x);
    console.log(cursorpt.y);
    localStorage.setItem("points", localStorage.getItem("points").concat(String(cursorpt.x).concat(";").concat(String(cursorpt.y).concat(";"))));
    console.log(localStorage.getItem("points"));
    //console.log(circle);
    send((cursorpt.x - 150) * (r / 100), (150 - cursorpt.y) * (r / 100), r);
};
document.getElementById("triangle").addEventListener("mouseup", function (e) {
    //
});

document.getElementById("rectangle").addEventListener("mouseup", function (e) {
   //
});

document.getElementById("half_circle").addEventListener("mouseup", function (e) {
    //
});
document.getElementById("svg").addEventListener("mouseup", function (e) {
    let rad = rArea();
    if (rad === 1) {
        draw(e);
    } else
        alert("Выберите единственный радиус !");
});

document.getElementById("button").addEventListener("mousemove",function () {
    //let coordinate_x, coordinate_y;
    //coordinate_x = event.pageX;
    //coordinate_y = event.pageY;
    //console.log(coordinate_x);
    //console.log(coordinate_y);
    //$("#button").offset({top: randomInteger(100, 400), left: randomInteger(100, 400)});
    //document.getElementById("button").style.marginLeft = randomInteger(100, 400) + "px";
    //document.getElementById("button").style.marginTop = randomInteger(100, 200) + "px";
    //document.getElementById("button").style.marginBottom = randomInteger(100, 200) + "px";
});

function randomInteger(min, max) {
    let rand = min + Math.random() * (max - min + 1);
    return Math.round(rand);
}

button_reset.addEventListener("click", function (){
    event.preventDefault();
    $.ajax({
        type: 'GET',
        url: "/WEB2_war/welcome/?flag=1",
        success: function (html) {
            $(".intro").html(html);
        }
    });
    //location.href = "http://localhost:8080/WEB2/table.jsp";
    localStorage.removeItem('points');
    console.log("*");
});

const reg = /[1-9]/;
function checkOdz(x) {
    if (x.indexOf('.') !== -1) {
        let idx = x.indexOf('.');
        let ceil = x.substr(0, idx);
        let post = x.substr(idx + 1);
        console.log(ceil, post);
        if (Math.abs(ceil) < 5)
            return false;
        else {
            return post.match(reg);
        }
    } else {
        console.log(x);
        return Math.abs(x) > 5;
    }
}
button.addEventListener("click", function () {
    event.preventDefault();
    if (!x.value.length) {
        alert("Введите икс");
    } else {
        console.log(x.value.replace(/\s+/g, ''));
        let wrong = 0;
        for (let i = 0; i < check_box.length; i++)
            if (check_box[i].checked) {
                r = check_box[i].value;
                console.log(check_box[i].value);
                check++;
            }
        if (isNaN(x.value.replace(/\s+/g, '')) || checkOdz(x.value.replace(/\s+/g, ''))) {
            alert("Некорректный ввод! ".concat(" Вводить можно только числа в диапазоне от -5 до 5"));
            wrong = 1;
            event.preventDefault();
        }
        if (check !== 1) {
            wrong = 1;
            if (!check)
                alert("Вы не выбрали чекбокс!");
            else
                alert("Вы выбрали больше одного чекбокса!");
            event.preventDefault();
        }
        if (y_val === undefined) {
            wrong = 1;
            alert("Нажмите кнопку, чтобы выбрать Y");
            event.preventDefault();
        }
        if (wrong === 0) {
            console.log(x.value.replace(/\s+/g, ''));
            $.ajax({
                type: 'GET',
                url: "/WEB2_war/welcome/"
                    .concat("?x=")
                    .concat(x.value.replace(/\s+/g, ''))
                    .concat("&y=")
                    .concat(y_val).concat("&r=")
                    .concat(r),
                success: function (response) {
                    //console.log(response.status);
                    console.log(response);
                    //location.href = "http://localhost:8080/WEB2/table.jsp";
                    location.href = "http://localhost:41100/WEB2_war/table.jsp";
                    //localStorage.setItem('history', response);
                    alert("Отлично!");
                    //event.preventDefault();
                },
                error: function (response) {
                    //location.href = "http://localhost:8080/WEB2/errorPage.jsp";
                    location.href = "http://localhost:41100/WEB2_war/errorPage.jsp";
                    console.log(response);
                    //$(".intro").html(response);
                }
            });
        }
        check = 0;
    }
});

if (window.performance) {
    ptn = localStorage.getItem("points").split(";");
    for (let i = 0; i < ptn.length; i+=2) {
        let circle = document.createElementNS("http://www.w3.org/2000/svg", 'circle');
        circle.style.fill = "yellow";
        circle.style.r = "3";
        circle.style.cx = ptn[i];
        circle.style.cy = ptn[i + 1];
        if (ptn[i] !== "")
            document.querySelector("#svg").appendChild(circle);
    }
}

