<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>图书信息管理</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .top_ul li {
            width: 130px;
            margin: 20px auto;
            text-align: center;
        }

        .top_ul li:nth-child(1) {
            margin-left: 95px;
        }

        .tabs_delete .active{
            background-color: skyblue;
        }

        .nav-tabs>li.active>a{
            background-color: skyblue;
            color: #337ab7;
        }
        .nav-tabs>li.active>a:focus {
            background-color: skyblue;
            color: #337ab7;
        }
        #infomation{
            transition: all 2s;
        }
        #xgPawdMain{
            transition: all 2s;
        }
        #xgSignMain{
            transition: all 2s;
        }
        #infomation_btn:hover{
            color: skyblue;
        }
        #logout_a:hover{
            color: skyblue;
        }
        .background {
            background-color: #FFE4E1;
        }
    </style>
</head>
<body>
<div class="top_name" style="width: 1903px;height: 90px;background-color:#c3d7f2;margin: 0 auto;padding-top: 20px;position:relative;">
    <h1 style="display:inline-block;margin-left:60px;width: 150px;height: 50px">嗨,${user.username}</h1>
    <p class="lead" style="font-weight: bold;margin-left: 55px;width: 230px;cursor: pointer;display: inline-block" id="infomation_btn">点击查看个人信息</p>
    <a href="http://localhost/login/logout" id="logout_a"><span class="lead" style="float:right;margin-right: 100px;margin-top:20px;font-weight: bold;" id="logout">退出登录</span></a>
    <div style="width: 360px;height: 410px;position: absolute;top: 130px;left: -370px;padding-top: 50px;padding-left: 50px;background-color:rgba(0,100,255,0.3);opacity: 0;z-index: 1" id="infomation">
        <p id="u_name" class="lead" style="font-weight: bold">用户名：${user.username}</p>
        <p id="u_id" class="lead" style="font-weight: bold">用户ID：${user.id}</p>
        <p id="u_say" class="lead" style="font-weight: bold">个性签名：${user.sign}</p>
        <p id="u_xgpawd" class="lead" style="font-weight: bold;cursor: pointer;margin-top: 50px;width: 126px">点击修改密码</p>
        <p id="u_xgsign" class="lead" style="font-weight: bold;cursor: pointer;width: 175px">点击修改个性签名</p>
        <p id="u_interfaceOut" class="lead" style="font-weight: bold;cursor: pointer;width: 85px">退出界面</p>
    </div>

    <div style="width: 360px;height: 410px;position: absolute;top: 130px;left: 190px;padding-top: 50px;padding-left: 30px;background-color:#5b89d8;opacity: 0;" id="xgPawdMain">
        <div class="from-group row" style="margin-top: 30px">
            <label for="presentPawd" class="col-md-4" style="font-size: 20px">
                原密码：
            </label>
            <input type="text" id="presentPawd" class="form-control col-md-8" style="width: 200px">
        </div>
        <div class="from-group row" style="margin-top: 55px">
            <label for="newPawd" class="col-md-4" style="font-size: 20px">
                新密码：
            </label>
            <input type="text" id="newPawd" class="form-control col-md-8" style="width: 200px">
        </div>
        <div class="from-group row" style="margin-top: 55px">
            <label for="newTruePawd" class="col-md-4" style="font-size: 20px">
                确认：
            </label>
            <input type="text" id="newTruePawd" class="form-control col-md-8" style="width: 200px">
        </div>
        <p id="u_xgInterfaceOu" class="lead" style="font-weight: bold;cursor: pointer;display: inline-block;margin-top: 50px">退出界面</p>
        <p id="u_xgPawdBtn" class="lead" style="font-weight: bold;cursor: pointer;display: inline-block;margin-left: 115px">点击修改</p>
    </div>

    <div style="width: 360px;height: 410px;position: absolute;top: 130px;left: 190px;padding-top: 50px;padding-left: 30px;background-color:rgba(0,100,255,0.3);opacity: 0;" id="xgSignMain">
        <div class="from-group row" style="margin-top: 30px">
            <label for="newSign" class="col-md-5" style="font-size: 20px">
                新的签名：
            </label>
            <input type="text" id="newSign" class="form-control col-md-7" style="width: 200px;margin-left: -25px">
        </div>

        <p id="u_sgInterfacOu" class="lead" style="font-weight: bold;cursor: pointer;display: inline-block;margin-top: 230px">退出界面</p>
        <p id="u_xgSignBtn" class="lead" style="font-weight: bold;cursor: pointer;display: inline-block;margin-left: 115px">点击修改</p>
    </div>

</div>
<div class="book_tools" style="width: 1903px;height: 460px;margin:0 auto;background-color: beige">
    <div class="top" style="width: 1200px;margin: 0 auto;">
        <ul class="nav nav-pills top_ul" style="width: 800px;margin: 0 auto">
            <li class="active" style="display: none"><a href="javascript:void(0);">图书增加</a></li>
            <li><a href="javascript:void(0);" style="display: none">图书删除</a></li>
            <li><a href="javascript:void(0);" style="display: none">图书修改</a></li>
            <li class="active"><a href="javascript:void(0);">图书查询</a></li>
            <li id="user_library"><a href="javascript:void(0);">个人图书库</a></li>
        </ul>
    </div>

    <div class="tools background"
         style="width: 800px;height: 360px;margin: 0 auto;padding-top: 20px;overflow-y: auto;overflow-x: hidden">
        <div style="display:none;width: 550px;height: 100px;margin: 0px auto;position: relative" class="div_t">
            <form action="#" class="container" style="width: 1000px;margin-left: 35px;margin-top: 60px" id="addForm">
                <div class="form-group row">
                    <label for="uname" class="control-label col-md-1 text-center"
                           style="width: 100px;height: 20px;margin-top: 6px">图书名称</label>
                    <div class="col-md-4">
                        <input type="text" name="name" id="uname" class="form-control" required>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="pawd" class="control-label col-md-1 text-center"
                           style="width: 100px;height: 20px;margin-top: 6px">作者</label>
                    <div class="col-md-4">
                        <input type="text" name="author" id="pawd" class="form-control" required>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="type" class="control-label col-md-1 text-center"
                           style="width: 100px;height: 20px;margin-top: 6px">图书类型</label>
                    <div class="col-md-4">
                        <input type="text" name="type" id="type" class="form-control" required>
                    </div>
                </div>
                <input type="reset" class="btn btn-primary" value="重置"
                       style="position: absolute;right: 290px;bottom: -85px">
                <input type="submit" class="btn btn-success add_btn" value="添加"
                       style="position: absolute;right: 145px;bottom: -85px">

                <input type="text" style="display: none" name="theLastId" id="lastId">
            </form>
        </div>
        <div style="display: none;width: 550px;height: 320px;margin: 0px auto;position: relative;overflow: hidden" class="div_t">
            <ul class="nav nav-tabs tabs_delete">
                <li class="active"><a href="javascript:void(0)">物理删除</a></li>
                <li><a href="javascript:void(0)">逻辑删除</a></li>
            </ul>
            <div class="phycics div_de">
                <form action="javascript:void(0)"  id="phyForm" role="form" style="width: 550px;height:275px;border: #ddd 1px solid;border-top: none;padding-top: 50px;padding-left: 50px;position: relative">
                    <div class="form-group row" style="">
                        <label for="dname" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">图书名</label>
                        <div class="col-md-8">
                            <input type="text" name="bookName" id="dname" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row" style="margin-top: 25px">
                        <label for="dpawd" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">作者</label>
                        <div class="col-md-8">
                            <input type="text" id="dpawd" name="bookAuthor" class="form-control">
                        </div>
                    </div>
                    <input type="reset" class="btn btn-primary" value="重置" style="margin-left: 156px">
                    <input type="submit" class="btn btn-danger" value="删除" style="margin-left: 55px" id="btn_phy">
                    <p class="lead" style="color: red;position:absolute;left: 220px;top: 10px;font-weight: bold" >物理删除界面</p>
                </form>
            </div>
            <div class="logical div_de" style="display: none">
                <form action="javascript:void(0)" role="form" style="width: 550px;height:275px;border: #ddd 1px solid;border-top: none;padding-top: 50px;padding-left: 50px;position: relative" id="logForm">
                    <div class="form-group row">
                        <label for="dnamee" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">图书名</label>
                        <div class="col-md-8">
                            <input type="text" id="dnamee" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row" style="margin-top: 25px">
                        <label for="dpawdd" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">作者</label>
                        <div class="col-md-8">
                            <input type="text" id="dpawdd" class="form-control">
                        </div>
                    </div>
                    <input type="reset" class="btn btn-primary" value="重置" style="margin-left: 156px">
                    <input type="submit" class="btn btn-warning" value="删除" style="margin-left: 55px" id="btn_log">
                    <p class="lead" style="color: #f0ad4e;position:absolute;left: 220px;top: 10px;font-weight: bold">逻辑删除界面</p>
                </form>
            </div>
        </div>
        <div style="display: none;width: 550px;height: 300px;margin: 20px auto" class="div_t">
            <form action="javascript:void(0)" id="updateForm" style="width: 550px;height: 275px;border: 1px solid #337ab7;padding-left: 35px;position: relative">
                <div class="form-group row" style="margin-top: 70px;">
                    <label for="updateName" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">图书名</label>
                    <div class="col-md-8">
                        <input type="text" name="bookName" id="updateName" class="form-control">
                    </div>
                </div>
                <div class="form-group row" style="">
                    <label for="updateAuthor" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">作者</label>
                    <div class="col-md-8">
                        <input type="text" name="bookName" id="updateAuthor" class="form-control">
                    </div>
                </div>
                <input type="reset" class="btn btn-primary" value="重置" style="margin-left: 156px">
                <input type="submit" class="btn btn-danger" value="修改" style="margin-left: 55px" id="btn_update">
                <p class="lead" style="color: beige;font-weight: bold;position: absolute;top: 20px;left: 222px">图书修改界面</p>
                <!-- 模态框（Modal） -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">输入要修改的信息</h4>
                            </div>
                            <div class="modal-body">
                                <form action="javascript:void(0)">
                                    <div class="form-group row" style="">
                                        <label for="newName" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">图书名</label>
                                        <div class="col-md-8">
                                            <input type="text" name="bookName" id="newName" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row" style="">
                                        <label for="newAuthor" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">作者</label>
                                        <div class="col-md-8">
                                            <input type="text" name="bookName" id="newAuthor" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row" style="">
                                        <label for="newType" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">类型</label>
                                        <div class="col-md-8">
                                            <input type="text" name="bookName" id="newType" class="form-control">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" id="entityUpdate">提交更改</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div style="display: block;width: 550px;height: 700px;margin: 0px auto" class="div_t">
            <ul class="nav nav-tabs tabs_search">
                <li class="active"><a href="javascript:void(0)">模糊查询</a></li>
                <li><a href="javascript:void(0)">多条件查询</a></li>
            </ul>
            <div class="div_sea blurred_sea">
                <form action="javascript:void(0)"  id="blurredForm" role="form" style="width: 550px;height:275px;border: #ddd 1px solid;border-top: none;padding-top: 50px;padding-left: 50px;position: relative">
                    <div class="form-group row" style="">
                        <label for="seaName" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">图书名</label>
                        <div class="col-md-8">
                            <input type="text" name="bookName" id="seaName" class="form-control">
                        </div>
                    </div>
                    <input type="reset" class="btn btn-primary" value="重置" style="margin-left: 156px">
                    <input type="submit" class="btn btn-danger" value="模糊查询" style="margin-left: 55px" id="blurred_btn">
                    <p class="lead" style="color: red;position:absolute;left: 220px;top: 10px;font-weight: bold" >模糊查询界面</p>
                </form>
            </div>
            <div class="div_sea multi_sea" style="display: none">
                <form action="javascript:void(0)"  id="multForm" role="form" style="width: 550px;height:275px;border: #ddd 1px solid;border-top: none;padding-top: 50px;padding-left: 50px;position: relative">
                    <label for="mulPar1" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">参数1</label>
                    <select name="mul_choose" id="ChoosePar1" style="margin-top: 6px;border-radius: 5px;margin-left: -5px">
                        <option value="图书名称">图书名称</option>
                        <option value="图书作者">图书作者</option>
                    </select>
                    <div class="col-md-8">
                        <input type="text" name="bookName" id="mulPar1" class="form-control">
                    </div>
                    <p style="opacity: 0">换行</p>
                    <p></p>
                    <label for="mulPar2" class="col-md-2 text-center" style="height: 34px;line-height: 34px;">参数2</label>
                    <select name="mul_choose" id="ChoosePar2" style="margin-top: 6px;border-radius: 5px;margin-left: -5px">
                        <option value="图书类型">图书类型</option>
                        <option value="图书ID">图书ID</option>
                    </select>
                    <div class="col-md-8" style="margin-bottom: 20px">
                        <input type="text" name="bookName" id="mulPar2" class="form-control">
                    </div>

                    <input type="reset" class="btn btn-primary" value="重置" style="margin-left: 150px">
                    <input type="submit" class="btn btn-danger" value="多条件查询" style="margin-left: 55px" id="btn_mul">

                    <p class="lead" style="color: antiquewhite;position:absolute;left: 200px;top: 10px;font-weight: bold" >多条件查询界面</p>
                </form>
            </div>


            <h3 class="text-center" style="color: greenyellow;font-weight: bold">搜索结果</h3>
            <table class="table table-bordered table-hover table-striped" id="queryTable">

            </table>
        </div>
        <div style="display: none;" class="div_t">
            <table class="table table-bordered table-hover table-striped" id="userTable">
                <tr class="success">
                    <th class="text-center">图书名称</th>
                    <th class="text-center">图书ID</th>
                    <th class="text-center">图书作者</th>
                    <th class="text-center">图书类型</th>
                    <th class="text-center">借书时间</th>
                    <th class="text-center">是否还书</th>
                </tr>
            </table>
        </div>
    </div>
</div>
<div class="book_main" style="width: 1903px;margin: 0 auto;">
    <table class="table table-bordered table-hover table-striped" id="bookTable">
        <tr class="info">
            <th class="text-center">图书名称</th>
            <th class="text-center">图书ID</th>
            <th class="text-center">图书作者</th>
            <th class="text-center">图书类型</th>
            <th class="text-center">图书数量</th>
            <th class="text-center">是否添加</th>
        </tr>
    </table>

    <div class="page_main" style="width: 1520px;height: 100px;margin:0 auto;position: relative">
        <!--共有几条-->
        <span style="margin-left: 475px;font-size:12px;position: absolute;top: 36px;left: -85px"
              id="totalCount">共有几条</span>
        <!--当前第几页-->
        <span style="margin-left: 475px;position: absolute;top: 35px;left: 10px" id="currentPage">当前第1页</span>
        <!--分页-->
        <ul class="pagination pagination-lg" id="page" style="position: absolute;left:600px;width: 500px;">
            <li id="le"><a href="javascript:void(0)">&laquo;</a></li>
            <li class="active"><a href="javascript:void(0)">1</a></li>
            <li><a href="javascript:void(0)">2</a></li>
            <li><a href="javascript:void(0)">3</a></li>
            <li><a href="javascript:void(0)">4</a></li>
            <li><a href="javascript:void(0)">5</a></li>
            <li id="ri"><a href="javascript:void(0)">&raquo;</a></li>
        </ul>
        <!--每页容量-->
        <span style="margin-left: 15px;position:absolute;top: 20px;right: 420px;">每页容量:
            <select class="drop-menu selectSize" name="menus" role="menu"
                    style="width: 100px;height: 30px;margin-top: 10px;">
                <option value="10" role="menuitem" class="text-center">10</option>
                <option value="20" role="menuitem" class="text-center">20</option>
                <option value="30" role="menuitem" class="text-center">30</option>
            </select>
        </span>
    </div>


</div>
<h1 id="hlen" style="display: none">${length}</h1>
<script src="js/jquery-3.6.0.js"></script>
<script src="js/axios-0.18.0.js"></script>
<!-- jQuery and JavaScript Bundle with Popper -->
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.slim.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.2/js/bootstrap.bundle.min.js" integrity="sha384-7ymO4nGrkm372HoSbq1OY2DP4pEZnMiA+E0F3zPr+JQQtQ82gQ1HPY3QIVtztVua" crossorigin="anonymous"></script>

<script>
    window.onload = function () {

        //查看个人信息
        //修改界面弹出
        let xgInterface = document.getElementById("xgPawdMain");
        let sgInterface = document.getElementById("xgSignMain");
        let information_div = document.getElementById("infomation");
        document.getElementById("infomation_btn").onclick = function () {
            informationShow();
        }
        document.getElementById("u_interfaceOut").onclick = function () {
            sgInterfaceHide();
            xgInterfaceHide();
            infomationHide();
        }

        $(".book_tools").click(function () {
            sgInterfaceHide();
            xgInterfaceHide();
            infomationHide();
        })

        function infomationHide() {
            information_div.style.opacity = 0;
            information_div.style.left = -370+'px';
        }
        function informationShow() {
            information_div.style.opacity = 1;
            information_div.style.left = 190+'px';
        }
        function sgInterfaceHide() {
            sgInterface.style.opacity = 0;
            sgInterface.style.left = 190+'px';
            sgInterface.style.zIndex = 0;
        }
        function sgInterfaceShow(){
            sgInterface.style.opacity = 1;
            sgInterface.style.left = 570+'px';
            sgInterface.style.zIndex = 1;
        }
        function xgInterfaceHide() {
            xgInterface.style.opacity = 0;
            xgInterface.style.left = 190+'px';
            xgInterface.style.zIndex = 0;
        }
        function xgInterfaceShow() {
            xgInterface.style.opacity = 1;
            xgInterface.style.left = 570+'px';
            xgInterface.style.zIndex = 1;
        }
        document.getElementById("u_xgpawd").onclick = function () {
            if(sgInterface.style.opacity == 1 && sgInterface.style.left == 570+'px' && sgInterface.style.zIndex == 1){
                sgInterfaceHide();
            }
            xgInterfaceShow();
        }
        document.getElementById("u_xgInterfaceOu").onclick = function () {
            xgInterfaceHide();
        }
        document.getElementById("u_xgsign").onclick = function () {
            if(xgInterface.style.opacity == 1 && xgInterface.style.left == 570+'px' && xgInterface.style.zIndex == 1){
                xgInterfaceHide();
            }
            sgInterfaceShow();
        }
        document.getElementById("u_sgInterfacOu").onclick = function () {
            sgInterfaceHide();
        }

        let newSign = document.getElementById("newSign");
        let newSignBtn = document.getElementById("u_xgSignBtn");
        newSignBtn.onclick = function () {
            if(newSign.value != "") {
                axios({
                    method:"get",
                    url:"http://localhost/book/updateSign?newSign="+newSign.value+"&&userId="+${user.id}
                }).then(function (resp) {
                    sgInterfaceHide();
                    alert("个性签名修改成功~");
                    document.getElementById("u_say").innerText = "个性签名："+resp.data
                })
            }
            else {
                alert("内容不能为空！")
            }
        }


        let presentPawd = document.getElementById("presentPawd");
        let newPawd1 = document.getElementById("newPawd");
        let newPawd2 = document.getElementById("newTruePawd");
        let newPawdBtn = document.getElementById("u_xgPawdBtn");
        newPawdBtn.onclick = function () {
            if (newPawd1.value != "" && newPawd2.value != "" && newPawd1.value == newPawd2.value && presentPawd.value == `${user.password}`){
                axios({
                    method:"get",
                    url:"http://localhost/book/updatePassword?newPwd="+newPawd1.value+"&&userId="+${user.id}
                }).then(function (resp) {
                    alert("密码修改成功~");
                    alert("当前用户名："+`${user.username}`+"\n"+"当前密码："+resp.data+"\n"+"请重新登录！");
                    window.location.href = "http://localhost/login/logout";
                })
            }
            else{
                alert("输入内容不合法！");
            }
        }










        //多条件查询
        let par1 = document.getElementById("ChoosePar1");
        let par2 = document.getElementById("ChoosePar2");
        let inputPar1 = document.getElementById("mulPar1");
        let inputPar2 = document.getElementById("mulPar2");
        let mul_btn = document.getElementById("btn_mul");
        par1.onchange = function () {
            inputPar1.placeholder = par1.value;
        }
        par2.onchange = function () {
            inputPar2.placeholder = par2.value;
        }
        mul_btn.onclick = function (){
            ajaxPar(inputPar1.placeholder,inputPar2.placeholder);

        }
        function ajaxPar(input1,input2) {
            let urlFor;
            if(input1 == "图书名称" && input2 == "图书类型"){
                urlFor = "http://localhost/book/mulQuery?bookName="+inputPar1.value+"&&bookType="+inputPar2.value;
            }
            else if(input1 == "图书名称" && input2 == "图书ID"){
                urlFor = "http://localhost/book/mulQuery?bookName="+inputPar1.value+"&&bookId="+inputPar2.value;
            }
            else if(input1 == "图书作者" && input2 == "图书类型"){
                urlFor = "http://localhost/book/mulQuery?bookAuthor="+inputPar1.value+"&&bookType="+inputPar2.value;
            }
            else if(input1 == "图书作者" && input2 == "图书ID"){
                urlFor = "http://localhost/book/mulQuery?bookAuthor="+inputPar1.value+"&&bookId="+inputPar2.value;
            }
            else if(input1 == "图书名称" && input2 == ""){
                urlFor = "http://localhost/book/mulQuery?bookName="+inputPar1.value;
            }
            else if(input1 == "图书作者" && input2 == ""){
                urlFor = "http://localhost/book/mulQuery?bookAuthor="+inputPar1.value;
            }
            else if(input1  == "" && input2 == "图书类型"){
                urlFor = "http://localhost/book/mulQuery?bookType="+inputPar2.value;
            }
            else if(input1  == "" && input2 == "图书ID"){
                urlFor = "http://localhost/book/mulQuery?bookId="+inputPar2.value;
            }
            else {
                alert("找不到符合此参数组合的路径！")
            }
            axios({
                method:"get",
                url:urlFor
            }).then(function (resp) {
                let resultBooks = resp.data;
                createTableSearch(resultBooks);
                selectAll();
            })
        }





        //模糊查询
        let blurred_btn = document.getElementById("blurred_btn");
        let blurredBookName = document.getElementById("seaName");
        blurred_btn.onclick = function (){
            if (blurredBookName.value != ""){
                axios({
                    method:"get",
                    url:"http://localhost/book/blurredQuery?bookName="+blurredBookName.value
                }).then(function (resp) {
                    let resultBooks = resp.data;
                    createTableSearch(resultBooks);
                })
            }
            else {
                alert("请填写完整信息！")
            }
        }

        //将查询到的数据渲染到查询结果列表
        function createTableSearch(resultBooks) {
            let resultTable = document.getElementById("queryTable");
            resultTable.innerHTML = `<tr class="info">
                    <th class="text-center">图书名称</th>
                    <th class="text-center">图书ID</th>
                    <th class="text-center">图书作者</th>
                    <th class="text-center">图书类型</th>
                    <th class="text-center">图书数量</th>
                    <th class="text-center">是否添加</th>
                </tr>`;
            for (let i=0;i<resultBooks.length;i++){
                let resultBk = resultBooks[i];
                resultTable.innerHTML += `<tr class="info">
                    <th class="text-center">`+resultBk.name+`</th>
                    <th class="text-center">`+resultBk.id+`</th>
                    <th class="text-center">`+resultBk.author+`</th>
                    <th class="text-center">`+resultBk.type+`</th>
                    <th class="text-center">`+resultBk.nums+`</th>
                    <th class="text-center add" style="cursor: pointer">点击添加</th>
                </tr>`;
            }
            addClick(resultBooks);
        }



        //注销
        let logout = document.getElementById("logout");
        logout.onclick = function (){
            alert("注销成功!");
        }

        //添加图书的判断
        let addBookBtn = document.querySelector(".add_btn");
        let theLastId;
        addBookBtn.onclick = function (){
            let addForm = document.getElementById("addForm");
            let tableCh = document.getElementById("bookTable").children;
            let name = document.getElementById("uname").value;
            let pawd = document.getElementById("pawd").value;
            let type = document.getElementById("type").value;
            let flag = 1;
            for (let i=1;i<tableCh.length;i++){
                let thisName = tableCh[i].children[0].children[0].innerText;
                let thisPawd = tableCh[i].children[0].children[2].innerText;
                theLastId = tableCh[i].children[0].children[1].innerText
                if (name == thisName && pawd == thisPawd){
                    flag = 0;
                    break;
                }
            }
            if (flag == 1 && name != "" && pawd != ""){
                axios({
                    method:"get",
                    url:"http://localhost/book/addOther?name="+name+"&author="+pawd+"&type="+type+"&theLastId="+theLastId
                }).then(function (resp){
                    if(resp.data == true){
                        axios({
                            method:"get",
                            url:"http://localhost/book/addOther?name="+name+"&author="+pawd+"&type="+type+"&theLastId="+theLastId
                        }).then(function (resp) {
                            if (resp.data){
                                alert("逻辑添加成功~");
                                selectAll();
                            }

                        })
                    }
                    else{
                        axios({
                            method:"get",
                            url:"http://localhost/book/add?name="+name+"&author="+pawd+"&type="+type+"&theLastId="+theLastId
                        }).then(function (resp) {
                            if(resp.data){
                                alert("添加成功~");
                                selectAll();
                            }
                        })
                    }
                })
            }
            else {
                if(name == "" || pawd == ""){
                    alert("请填写信息!")
                }
                else{
                    alert("该书已存在~");
                }
            }

        }

        // 物理删除图书的判断
        let phy_btn = document.getElementById("btn_phy");
        let phyForm = document.getElementById("phyForm");
        phy_btn.onclick = function (){
            let tableCh = document.getElementById("bookTable").children;
            let name = document.getElementById("dname").value;
            let pawd = document.getElementById("dpawd").value;
            let flag = 1;
            for (let i=1;i<tableCh.length;i++){
                let thisName = tableCh[i].children[0].children[0].innerText;
                let thisPawd = tableCh[i].children[0].children[2].innerText;
                if (name == thisName && pawd == thisPawd){
                    flag = 0;
                    break;
                }
            }
            if(flag == 1){
                if(name != "" && pawd != ""){
                    alert("该图书不存在~");
                }
                else {
                    alert("请填写完整删除信息!");
                }
            }
            else{
                let dname = document.getElementById("dname").value;
                let dpawd = document.getElementById("dpawd").value;
                axios({
                    method:"get",
                    url:"http://localhost/book/physicsDelete?bookName="+dname+"&bookAuthor="+dpawd
                }).then(function (resp){
                    alert(resp.data);
                    selectAll();
                })
            }
        }

        // 逻辑删除的判断
        let log_btn = document.getElementById("btn_log");
        let logForm = document.getElementById("logForm");
        log_btn.onclick = function () {
            let tableCh = document.getElementById("bookTable").children;
            let dnamee = document.getElementById("dnamee").value;
            let dpawdd = document.getElementById("dpawdd").value;
            let flag = 1;
            for (let i=1;i<tableCh.length;i++){
                let thisName = tableCh[i].children[0].children[0].innerText;
                let thisPawd = tableCh[i].children[0].children[2].innerText;
                if (dnamee == thisName && dpawdd == thisPawd){
                    flag = 0;
                    break;
                }
            }
            if(flag == 1){
                if(dnamee != "" && dpawdd != ""){
                    alert("该图书不存在~");
                }
                else {
                    alert("请填写完整删除信息!");
                }
            }
            else{
                axios({
                    method:"get",
                    url:"http://localhost/book/logicalDelete?bookName="+dnamee+"&bookAuthor="+dpawdd
                }).then(function (resp){
                    alert(resp.data);
                    selectAll();
                })
            }
        }


        //图书修改
        $("#btn_update").click(function () {
            if(document.getElementById("updateName").value == "" || document.getElementById("updateAuthor").value == ""){
                alert("请填写完整信息!");
            }
            else{
                $("#myModal").modal("show");
            }

        })

        $("#entityUpdate").click(function (){
            let bookName = document.getElementById("updateName").value;
            let bookAuthor = document.getElementById("updateAuthor").value;
            let newName = document.getElementById("newName").value;
            let newAuthor = document.getElementById("newAuthor").value;
            let newType = document.getElementById("newType").value;
            axios({
                method:"get",
                url:"http://localhost/book/updateBook?bookName="+bookName+"&bookAuthor="+bookAuthor+"&newName="+newName+"&newAuthor="+newAuthor+"&newType="+newType
            }).then(function (resp) {
                $("#myModal").modal("hide");
                alert(resp.data);
                selectAll();
            })
        })


        let nn;//动态分页导航长度
        let selectSize = document.querySelector(".selectSize");

        function selectAll() {
            axios({
                method: "get",
                url: "http://localhost/book/selectAll"
            }).then(function (resp) {
                let books = resp.data;
                dynamicPage(books.length, selectSize.value);//动态显示页数
                ajaxPage(1, selectSize.value);//发送页数和容量返回当前页列表
                paging(nn);//分页导航事件相关操作
                addClick(books);//给每页查询后的列表添加（点击添加）事件
                fieldChange(books.length);//容量改变函数
            })
        }

        selectAll();

        //个人图书库重新查询和添加点击事件
        function selectUserLibrary() {
            axios({
                method: "get",
                url: "http://localhost/book/userLibrary?userId=" +${user.id}
            }).then(function (resp) {
                let userBooks = resp.data;
                document.getElementById("userTable").innerHTML = `<tr class="info">
                        <th class="text-center">图书名称</th>
                        <th class="text-center">图书ID</th>
                        <th class="text-center">图书作者</th>
                        <th class="text-center">图书类型</th>
                        <th class="text-center">借书时间</th>
                        <th class="text-center">规定时间还书</th>
                        <th class="text-center">是否还书</th>
                    </tr>`;
                for (let i = 0; i < userBooks.length; i++) {
                    let userBook = userBooks[i];
                    document.getElementById("userTable").innerHTML += `<tr class="info">
            <th class="text-center">` + userBook.bookName + `</th>
            <th class="text-center">` + userBook.bookId + `</th>
            <th class="text-center">` + userBook.bookAuthor + `</th>
            <th class="text-center">` + userBook.bookType + `</th>
            <th class="text-center">` + (userBook.date).substring(0,19) + `</th>
            <th class="text-center">` + (userBook.backHope).substring(0,19) + `</th>
            <th class="text-center" id="` + i + `" style="cursor: pointer">还书</th>
        </tr>`;
                }
                for (let i = 0; i < userBooks.length; i++) {
                    let userBook = userBooks[i];
                    document.getElementById(i + "").onclick = function () {
                        axios({
                            method: "get",
                            url: "http://localhost/book/updateDate?date=" + userBooks[i].date + "&&hopeDate=" + userBooks[i].backHope
                        }).then(function (resp) {
                            let tableCh = document.getElementById("bookTable").children;
                            for (let i=1;i<tableCh.length;i++){
                                let thisName = tableCh[i].children[0].children[0].innerText;
                                let thisPawd = tableCh[i].children[0].children[2].innerText;
                                if (userBook.bookName == thisName && userBook.bookAuthor == thisPawd && tableCh[i].children[0].children[4].innerText < 200){
                                    axios({
                                        method:"get",
                                        url:"http://localhost/book/updateNum?bookName="+userBook.bookName+"&bookAuthor="+userBook.bookAuthor
                                    }).then(function (resp) {
                                        selectAll();
                                        selectUserLibrary();
                                        alert(resp.data);
                                    })
                                    break;
                                }
                            }
                        })

                        axios({
                            method:"get",url:"http://localhost/book/statusChange?date=" + userBooks[i].date
                        }).then(function (resp){

                        })

                    }
                }
            })
        }

        <!--个人图书库-->
        function userLibrary() {
            axios({
                method: "get",
                url: "http://localhost/book/userLibrary?userId=" +${user.id}
            }).then(function (resp) {
                let userBooks = resp.data;
                document.getElementById("userTable").innerHTML = `<tr class="info">
                        <th class="text-center">图书名称</th>
                        <th class="text-center">图书ID</th>
                        <th class="text-center">图书作者</th>
                        <th class="text-center">图书类型</th>
                        <th class="text-center">借书时间</th>
                        <th class="text-center">规定还书时间</th>
                        <th class="text-center">是否还书</th>
                    </tr>`;

                for (let i = 0; i < userBooks.length; i++) {
                    let userBook = userBooks[i];
                    document.getElementById("userTable").innerHTML += `<tr class="info">
            <th class="text-center">` + userBook.bookName + `</th>
            <th class="text-center">` + userBook.bookId + `</th>
            <th class="text-center">` + userBook.bookAuthor + `</th>
            <th class="text-center">` + userBook.bookType + `</th>
            <th class="text-center">` + (userBook.date).substring(0,19) + `</th>
            <th class="text-center">` + (userBook.backHope).substring(0,19) + `</th>
            <th class="text-center" id="` + i + `" style="cursor: pointer">还书</th>
        </tr>`;
                }
                for (let i = 0; i < userBooks.length; i++) {
                    let userBook = userBooks[i];
                    document.getElementById(i + "").onclick = function () {
                        axios({
                            method: "get",
                            url: "http://localhost/book/updateDate?date=" + userBooks[i].date + "&&hopeDate=" + userBooks[i].backHope
                        }).then(function (resp) {
                            let tableCh = document.getElementById("bookTable").children;
                            for (let i=1;i<tableCh.length;i++){
                                let thisName = tableCh[i].children[0].children[0].innerText;
                                let thisPawd = tableCh[i].children[0].children[2].innerText;
                                if (userBook.bookName == thisName && userBook.bookAuthor == thisPawd && tableCh[i].children[0].children[4].innerText < 200){
                                    axios({
                                        method:"get",
                                        url:"http://localhost/book/updateNum?bookName="+userBook.bookName+"&bookAuthor="+userBook.bookAuthor
                                    }).then(function (resp) {
                                        selectAll();
                                        selectUserLibrary();
                                        alert(resp.data);
                                    })
                                    break;
                                }
                            }
                        })

                        axios({
                            method:"get",url:"http://localhost/book/statusChange?date=" + userBooks[i].date
                        })

                    }
                }
            })
        }

        <!--给每行书添加（点击添加）-->
        function addClick(books) {
            if (books != null) {
                for (let i = 0; i < books.length; i++) {
                    if (document.getElementsByClassName("add")[i] != null) {
                        document.getElementsByClassName("add")[i].onclick = function () {
                            axios({
                                method: "get",
                                url: "http://localhost/login/library?bookname=" + books[i].name + "&bookid=" + books[i].id + "&username=${user.username}&userid=${user.id}&bookAuthor=" + books[i].author + "&bookType=" + books[i].type+"&num=1"
                            }).then(function (resp) {
                                alert(resp.data);
                            })

                            axios({
                                method:"get",
                                url:"http://localhost/book/addNumMinus?id="+books[i].id+"&numbers="+books[i].nums
                            })
                            selectAll();
                            userLibrary();
                            selectUserLibrary();
                            updateUserBookNum();
                            if(this.parentElement.children[4].innerText <= 0){
                                alert("该图书没有了");
                            }
                            else{
                                this.parentElement.children[4].innerText--;
                            }
                        }
                    }
                }
            }

        }

        //更新借书次数
        function updateUserBookNum() {
            axios({
                method:"get",
                url:"http://localhost/book/updateUserBookNum?userId=${user.id}"
            })
        }

        <!--分页-->
        function paging(len) {
            let pageLi = document.querySelector('#page').querySelectorAll('li');
            let selectSize = document.querySelector('.selectSize');
            for (let i = 0; i < pageLi.length; i++) {
                let currentPage = i;
                if (pageLi[i].id != 'ri' && pageLi[i].id != 'le') {
                    pageLi[i].onclick = function () {
                        for (let j = 0; j < pageLi.length; j++) {
                            pageLi[j].className = '';
                        }
                        this.className = 'active';
                        if (this.className == 'active') {
                            ajaxPage(currentPage, selectSize.value);
                        }
                        if (currentPage == 1) {
                            document.getElementById("le").className = "disabled";
                            document.getElementById("le").onclick = function () {
                                alert("不能再往前了~");
                            }
                        } else {
                            document.getElementById("le").className = "";
                        }
                        if (currentPage == nn) {
                            document.getElementById("ri").className = "disabled";
                            document.getElementById("ri").onclick = function () {
                                alert("已经是最后一页~")
                            }
                        } else {
                            document.getElementById("ri").className = "";
                        }
                        document.getElementById("currentPage").innerText = "当前第" + currentPage + "页";
                        document.getElementById("le").onclick = function () {
                            for (let j = 0; j < pageLi.length; j++) {
                                pageLi[j].className = '';
                            }
                            if (currentPage > 1) {
                                pageLi[--currentPage].className = 'active';
                                if (pageLi[currentPage].className == 'active') {
                                    ajaxPage(currentPage, selectSize.value);
                                }
                                document.getElementById("currentPage").innerText = "当前第" + currentPage + "页";
                            } else {
                                alert("不能再往前了~");
                            }
                        }
                        document.getElementById("ri").onclick = function () {
                            for (let j = 0; j < pageLi.length; j++) {
                                pageLi[j].className = '';
                            }
                            if (currentPage < nn) {
                                pageLi[++currentPage].className = 'active';
                                if (pageLi[currentPage].className == 'active') {
                                    ajaxPage(currentPage, selectSize.value);
                                }
                                document.getElementById("currentPage").innerText = "当前第" + currentPage + "页";
                            } else {
                                alert("已经是最后一页~");
                            }
                        }
                    }
                }
            }
        }

        //动态显示页数
        function dynamicPage(total, size) {
            let page = document.getElementById("page");
            page.innerHTML = `<li id="le"><a href="javascript:void(0)">&laquo;</a></li>`;
            // alert(total+" "+size+" "+Math.ceil(total/size))
            for (let i = 0; i < Math.ceil(total / size); i++) {
                page.innerHTML += `<li><a href="javascript:void(0)">` + (i + 1) + `</a></li>`;
            }
            page.innerHTML += `<li id="ri"><a href="javascript:void(0)">&raquo;</a></li>`;
            nn = Math.ceil(total / size)
            paging(nn);
        }

        //发送当前页数和页面容量
        function ajaxPage(current, pageSize) {
            if (current != null && pageSize != null) {
                axios({
                    method: "get",
                    url: "http://localhost/book/selectByPage?currentPage=" + current + "&pageSize=" + pageSize
                }).then(function (resp) {
                    let toCount = resp.data.totalCount;
                    let tableData = resp.data.rows;
                    document.getElementById("totalCount").innerText = "共有" + toCount + "条";
                    document.getElementById("bookTable").innerHTML = `<tr class="info">
            <th class="text-center">图书名称</th>
            <th class="text-center">图书ID</th>
            <th class="text-center">图书作者</th>
            <th class="text-center">图书类型</th>
            <th class="text-center">图书数量</th>
            <th class="text-center">是否添加</th>
        </tr>`;
                    if (tableData != null) {
                        for (let i = 0; i < tableData.length; i++) {
                            let book = tableData[i];
                            document.getElementById("bookTable").innerHTML += `<tr class="info">
            <th class="text-center">` + book.name + `</th>
            <th class="text-center">` + book.id + `</th>
            <th class="text-center">` + book.author + `</th>
            <th class="text-center">` + book.type + `</th>
            <th class="text-center">` + book.nums + `</th>
            <th class="text-center add" id="` + book.id + `" style="cursor: pointer">点击添加</th>
        </tr>`;
                        }
                        addClick(tableData);
                        fieldChange(tableData.length);
                    }
                })
            }

        }

        //容量改变
        function fieldChange(len) {
            selectSize.onchange = function () {
                let pageLi = document.querySelector('#page').querySelectorAll('li');
                let current;
                for (let i = 0; i < pageLi.length; i++) {
                    if (pageLi[i].className == 'active') {
                        current = i;
                    }
                }
                ajaxPage(current, this.value);
                selectAll();
            }
        }


        <!--导航栏切换-->
        let lis = document.querySelector('.top_ul').querySelectorAll('li');
        let divs = document.querySelector('.tools').querySelectorAll('.div_t');
        for (let i = 0; i < lis.length; i++) {
            let flagRooter = lis[i].children[0].innerText != "图书增加" && lis[i].children[0].innerText != "图书修改" && lis[i].children[0].innerText != "图书删除";
            lis[i].setAttribute('index', i);
            lis[i].onclick = function () {
                if (flagRooter){
                    if (i == lis.length - 1) {
                        userLibrary();
                    }
                    for (let i = 0; i < lis.length; i++) {
                        if (lis[i].children[0].innerText != "图书增加" && lis[i].children[0].innerText != "图书修改" && lis[i].children[0].innerText != "图书删除"){
                            lis[i].className = '';
                        }
                        else {
                            lis[i].className = 'disabled';
                        }
                    }
                    this.className = 'active';
                    let index = this.getAttribute('index');
                    for (let i = 0; i < divs.length; i++) {
                        divs[i].style.display = 'none';
                    }
                    divs[index].style.display = 'block';
                }
                else{
                    alert("你没有该权限访问！");
                }

            }
        }

        // 删除界面切换
        let de_lis = document.querySelector(".tabs_delete").querySelectorAll("li");
        let de_divs = document.querySelectorAll(".div_de");
        for (let i=0;i<de_lis.length;i++){
            de_lis[i].setAttribute('index', i);
            de_lis[i].onclick = function (){
                for (let j=0;j<de_lis.length;j++){
                    de_lis[j].className = '';
                }
                this.className = 'active';
                let index = de_lis[i].getAttribute('index');
                for (let j=0;j<de_divs.length;j++){
                    de_divs[j].style.display = 'none';
                }
                de_divs[index].style.display = 'block';
            }
        }

        //查询界面切换
        let sea_lis = document.querySelector(".tabs_search").querySelectorAll("li");
        let sea_divs = document.querySelectorAll(".div_sea");
        for (let i=0;i<sea_lis.length;i++){
            sea_lis[i].setAttribute('index',i);
            sea_lis[i].onclick = function (){
                for(let j=0;j<sea_lis.length;j++){
                    sea_lis[j].className = '';
                }
                this.className = 'active';
                let index = this.getAttribute('index');
                for (let j=0;j<sea_lis.length;j++){
                    sea_divs[j].style.display = 'none';
                }
                sea_divs[index].style.display = 'block';

            }
        }
    }
</script>
</body>
</html>
