
$(function () {
    //初始化菜单
    initSideMenu();
});

function initSideMenu() {

    var datas = [{
        text: '系统管理',
        iconCls: 'icon-sum',
        state: 'open',
        children: [{
            id:'11111',
            text: '用户管理'
        },{
            text: '菜单管理',
            url:'menumanager'
        },{
            text: '注册码管理',
            url:'registermanager'
        },{
            text: '日志管理',
            url:'logmanager'
        }]
    },{
        text: '图书管理',
        iconCls: 'icon-more',
        state: 'open',
        children: [{
            text: '上传图书'
        },{
            text: '审核图书'
        }]
    }];

    $('#sm').sidemenu({
        data:datas,
        onSelect:function (menu) {
            clickMenu(menu);
        }
    })
}

function clickMenu(menu) {
    console.log(menu);
    $.get("menu",menu.id,function (data) {
        console.log(data);
        $('#menu').html(data);
    });
}