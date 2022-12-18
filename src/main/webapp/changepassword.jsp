<%@include file="common/tablig.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang cá nhân</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <c:import url="common/header.jsp"></c:import>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        font-size: 13px;
        color: #333;
    }

    body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, button, textarea, select, p, blockquote, th, td {
        margin: 0;
        padding: 0;
    }

    html {
        font-family: Roboto, Helvetica, Arial, sans-serif;
        font-size: 14px;
        background-color: #efefef;
    }

    .il {
        margin: 25px 0;
    }

    .il > p {
        display: block;
        padding: 5px 0;
        font-weight: bold;
    }

    .il > p > span {
        display: inline-block;
        width: 115px;
        font-weight: normal;
    }

    .btnRed {
        line-height: 25px;
        padding: 0 20px;
        display: inline-block;
    }

    .profile p b {
        display: inline-block;
        width: 125px;
    }

    .profile p {
        display: block;
        margin: 0 0 10px 0;
    }

    .profile p input {
        padding: 5px;
    }

    select#cityId,
    select#districtId {
        width: 182px;
        height: 30px;
    }

    ul.errors {
        color: red;
        padding-left: 165px;
    }

    .f ul li.btns input {
        margin-left: 165px;
        width: 230px;
        border: none;
        text-transform: uppercase;
    }

    #content {
        position: relative;
    }

    .g1180 {
        width: 90vw;
    }

    .g1180 {
        width: 1180px;
        margin: 0 auto;
    }

    #profilePage {
        margin: 25px auto;
        background: #f9f9f9;
        box-shadow: 0 0 0 4px #eee;
    }

    li {
        list-style: none;
    }

    #pfMenu {
        float: left;
        width: 21%;
        background: #fff;
        border: 1px solid #ddd;
    }

    #pfMenu li {
        padding: 10px 20px;
        border-bottom: 1px solid #ccc;
    }

    #pfMenu li > a.si {
        font-weight: 700;
        font-size: 13px;
    }

    #pfMenu li > a {
        display: block;
        padding: 5px 0 5px 35px;
    }

    #pfContent {
        float: left;
        width: 78.5%;
    }

    .clearfix {
        float: none !important;
        clear: both;
        display: block;
    }

    a {
        text-decoration: none;
        color: #333;
    }

    .f ul li {
        margin: 10px 0;
    }

    .f label {
        text-align: left;
        width: 165px;
        display: inline-table;
    }

    .f ul li input, .f ul li select {
        width: 230px;
        padding: 6px 5px;
        border: 1px solid #ccc;
    }

    .cBVmpr {
        background-color: rgb(255, 255, 255);
        padding: 30px 20px;
        display: flex;
        -webkit-box-pack: center;
        justify-content: center;
        border-radius: 8px;
    }

    .cBVmpr form {
        width: 400px;
        padding: 16px;
        border: 1px solid rgb(235, 235, 240);
        box-sizing: border-box;
        border-radius: 4px;
    }

    .cBVmpr .form-control {
        display: flex;
        flex-direction: column;
        margin: 0px 0px 16px;
    }

    .cBVmpr .input-label {
        font-size: 14px;
        color: rgb(56, 56, 61);
        margin-bottom: 4px;
    }

    .cBVmpr .form-control > div {
        display: flex;
        flex: 1 1 0%;
        position: relative;
        z-index: 1;
    }

    .hisWEc input.with-icon-right {
        padding-right: 35px;
        margin: 0;
    }

    .hisWEc input {
        transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s, -webkit-box-shadow 0.15s ease-in-out 0s;
        width: 100%;
        border-radius: 4px;
        padding: 10px 12px;
        line-height: 20px;
        outline: none;
        flex: 1 1 0%;
        border: 1px solid rgb(196, 196, 207);
    }

    .hisWEc .icon-right {
        position: absolute;
        right: 10px;
        top: 40%;
        transform: translateY(-50%);
        width: 24px;
        height: 24px;
    }

    .cqEaiM:disabled {
        background: rgb(235, 235, 240);
        color: rgb(196, 196, 207);
        border: 1px solid rgb(221, 221, 227);
    }

    .cqEaiM {
        border: 0px;
        width: 100%;
        height: 40px;
        border-radius: 4px;
        color: rgb(255, 255, 255);
        font-size: 14px;
        background-color: rgb(11, 116, 229);
        cursor: pointer;
    }

    .cBVmpr .form-control .hint-message {
        color: rgb(56, 56, 61);
        font-size: 11px;
        margin-top: 4px;
    }

    button, input, optgroup, select, textarea {
        font-family: inherit;
        font-size: 100%;
        line-height: 1.15;
        margin: 0px;
    }

    .hisWEc input.has-error {
        border-color: rgb(255, 66, 79);
    }

    .cBVmpr .form-control .error-message {
        color: rgb(255, 66, 78);
        font-size: 11px;
        margin-top: 4px;
    }


</style>

<body>
<jsp:include page="component/header.jsp"></jsp:include>
<div id="content" class=" ">
    <div class="g1180">
        <div id="profilePage">
            <jsp:include page="component/menu_profile.jsp"></jsp:include>
            <div id="pfContent">
                <div id="pfView" class="cBVmpr">
                    <form class="form" method="post" action="changePassword">
                        <div class="form-control"><label class="input-label">Mật khẩu hiện tại</label>
                            <div class="styles__StyledInput-sc-s5c7xj-5 hisWEc oldPass"><input id="oldPass"
                                                                                               name="oldPassword"
                                                                                               maxlength="32"
                                                                                               placeholder="Nhập mật khẩu hiện tại"
                                                                                               type="password"
                                                                                               class="input with-icon-right ${hasErrorOldPass}"
                                                                                               value="${hau}"
                                                                                               oninput="checkfor()"><img
                                    src="https://frontend.tikicdn.com/_desktop-next/static/img/account/eye.png"
                                    class="icon-right eye-icon-oldPass">
                            </div>
                            <c:if test="${WrongPassMess != null}">
                                <div class="error-message">Mật khẩu không đúng</div>
                            </c:if>
                        </div>
                        <div class="form-control"><label class="input-label">Mật khẩu mới</label>
                            <div class="styles__StyledInput-sc-s5c7xj-5 hisWEc newPass"><input id="newPass"
                                                                                               name="newPassword"
                                                                                               maxlength="32"
                                                                                               placeholder="Nhập mật khẩu mới"
                                                                                               type="password"
                                                                                               class="input with-icon-right ${hasErrorNewPass}"
                                                                                               oninput="checkfor()"><img
                                    src="https://frontend.tikicdn.com/_desktop-next/static/img/account/eye.png"
                                    class="icon-right eye-icon-newPass"></div>
                            ${errorNewPass}
                            <div class="hint-message"> Mật khẩu phải dài từ 8 đến 32 ký tự, bao gồm chữ và số</div>
                        </div>
                        <div class="form-control"><label class="input-label">Nhập lại mật khẩu mới</label>
                            <div class="styles__StyledInput-sc-s5c7xj-5 hisWEc confirmPass"><input
                                    id="confPass"
                                    name="confirmPassword"
                                    maxlength="32"
                                    placeholder="Nhập lại mật khẩu mới"
                                    type="password"
                                    class="input with-icon-right ${hasErrorConfPass}"
                                    value="" oninput="checkfor()"><img
                                    src="https://frontend.tikicdn.com/_desktop-next/static/img/account/eye.png"
                                    class="icon-right eye-icon-confirmPass"></div>
                            ${errorConfPass}
                        </div>

                        <button id="changePass" type="submit" disabled
                                class="styles__StyledBtnSubmit-sc-s5c7xj-3 cqEaiM">Lưu thay
                            đổi
                        </button>
                    </form>

                </div>
            </div>
            <i class="clearfix"></i></div>
    </div>

</div>
<jsp:include page="component/footer.jsp"></jsp:include>

</body>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script>
    const passwordIconOld = document.querySelector('.eye-icon-oldPass');
    const passwordIconNew = document.querySelector('.eye-icon-newPass');
    const passwordIconConfirm = document.querySelector('.eye-icon-confirmPass');
    const inputOldPass = document.querySelector('.oldPass input');
    const inputNewPass = document.querySelector('.newPass input');
    const inputConfirm = document.querySelector('.confirmPass input');


    var passwordOld = true;
    var passwordNew = true;
    var passwordConfirm = true;

    passwordIconOld.addEventListener('click', function () {
        if (passwordOld) {
            // change the input type attribute from "password" to "text"
            inputOldPass.setAttribute('type', 'text');
            passwordIconOld.setAttribute("src", "https://frontend.tikicdn.com/_desktop-next/static/img/account/eye-splash.png")


        } else {
            // change the input type attribute from "text" to "password"
            inputOldPass.setAttribute('type', 'password');
            passwordIconOld.setAttribute("src", "https://frontend.tikicdn.com/_desktop-next/static/img/account/eye.png")


        }
        passwordOld = !passwordOld;
    });

    passwordIconNew.addEventListener('click', function () {
        if (passwordNew) {
            // change the input type attribute from "password" to "text"
            inputNewPass.setAttribute('type', 'text');
            passwordIconNew.setAttribute("src", "https://frontend.tikicdn.com/_desktop-next/static/img/account/eye-splash.png")


        } else {
            // change the input type attribute from "text" to "password"
            inputNewPass.setAttribute('type', 'password');
            passwordIconNew.setAttribute("src", "https://frontend.tikicdn.com/_desktop-next/static/img/account/eye.png")


        }
        passwordNew = !passwordNew;
    });

    passwordIconConfirm.addEventListener('click', function () {
        if (passwordConfirm) {
            // change the input type attribute from "password" to "text"
            inputConfirm.setAttribute('type', 'text');
            passwordIconConfirm.setAttribute("src", "https://frontend.tikicdn.com/_desktop-next/static/img/account/eye-splash.png")


        } else {
            // change the input type attribute from "text" to "password"
            inputConfirm.setAttribute('type', 'password');
            passwordIconConfirm.setAttribute("src", "https://frontend.tikicdn.com/_desktop-next/static/img/account/eye.png")


        }
        passwordConfirm = !passwordConfirm;
    });


    function checkfor() {
        var oldPass = $("#oldPass").val().trim()
        var newPass = $("#newPass").val().trim()
        var confPass = $("#confPass").val().trim()

        if (oldPass != "" && newPass != "" && confPass != "") {
            $("#changePass").removeAttr("disabled")
        }

        if (oldPass == "" || newPass == "" || confPass == "") {
            $("#changePass").attr("disabled", true)
        }


    }


</script>

</html>