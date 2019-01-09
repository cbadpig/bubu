
function signin() {
    var yhm = $.trim($("#yhm").val());
    var mm = $.trim($("#mm").val());

    if(!yhm || !mm) {
        LOVESTORY.dialog.infoModal("登录失败！用户名或密码不能为空。");
    }

}