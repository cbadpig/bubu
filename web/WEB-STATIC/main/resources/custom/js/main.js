;
var d;
var info;
(function () {

    /*
    定义通用变量
     */
    if(!window.MAIN) {
        window['MAIN'] = {

        }
    };

    /**
     * 定义项目缓存管理
     */
    if(!MAIN.storage) MAIN.storage = {
        getSession:function (key) {
            return window.sessionStorage.getItem(key);
        },
        setSession:function (key,value) {
            if(window.sessionStorage.getItem(key)) {
                window.sessionStorage.removeItem(key);
            }
            window.sessionStorage.setItem(key,value);
        },
        removeSession:function (key) {
            window.sessionStorage.removeItem(key);
        },
        clearSession:function () {
            window.sessionStorage.clear();
        },
        getLocal:function (key) {
            return window.localStorage.getItem(key);
        },
        setLocal:function (key,value) {
            if(window.localStorage.getItem(keyl)) {
                window.localStorage.removeItem(key);
            }
            window.localStorage.setItem(key,value);
        },
        removeLocal:function (key) {
            window.localStorage.removeItem(key);
        },
        clearLocal:function () {
            window.localStorage.clear();
        }
    };

    /**
     * 定义项目弹出层基本功能
     */
    if(!MAIN.dialog) MAIN.dialog = {
        loading:function () {
            d = dialog({
                content: '<div class="spinner-border text-info" role="status"><span class="sr-only"></span></div>'
            }).showModal();
        },
        info:function(content) {
            if(info) {
                return;
            }
            info = dialog({
                title: '提示',
                content: content,
                cancel:false,
                okValue: '确定',
                ok: function () {
                    this.close().remove();
                    info = null;
                    if(!d) {
                        return;
                    }
                    d.close().remove();
                    return false;
                }
            }).show();
        },
        infoModal:function(content) {
            if(info) {
                return;
            }
            info = dialog({
                title: '提示',
                content: content,
                cancel:false,
                okValue: '确定',
                ok: function () {
                    this.close().remove();
                    info = null;
                    if(!d) {
                        return;
                    }
                    d.close().remove();
                    return false;
                }
            }).showModal();
        },
        close:function () {
            if(!d) {
                return;
            }
            d.close().remove();
        }
    };

    /**
     * 定义项目url基础功能
     */
    if(!MAIN.url) MAIN.url = {
        replace:function (url) {
            window.location.replace(url);
        }
    }

})();