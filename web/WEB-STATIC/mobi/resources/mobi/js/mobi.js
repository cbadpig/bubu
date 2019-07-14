function fanfactionStart() {
    $.ajax({
        url:'fanfaction/fanfactionStart',
        type:'post',
        success:function (data) {
            alert(data);
        }
    });
}