/**
 * 用户提交登录信息
 */
function signin() {
    var yhm = $.trim($("#yhm").val());
    var mm = $.trim($("#mm").val());

    if(!yhm || !mm) {
        LOVESTORY.dialog.infoModal("登录失败！用户名或密码不能为空。");
    }
}

/**
 * 跳转注册页面
 */
function signin_repleace_up() {
    MAIN.url.replace("signup");
}