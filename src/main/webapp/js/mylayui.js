// layui.use('upload', function() {
//     var $ = layui.jquery
//         , upload = layui.upload;
//     upload.render({
//         elem: '#UpPic'
//         ,url: 'upload.action'
//         ,done: function(res){
//             console.log(res)
//         }
//     });
// });
layui.use(['carousel', 'form'], function(){
    var carousel = layui.carousel
        ,form = layui.form;

    //改变下时间间隔、动画类型、高度
    carousel.render({
        elem: '#PicAnim'
        ,interval: 1800
        ,anim: 'fade'
        ,height: '120px'
    });
});

var active = {
    confirmTrans1: function(){
        //配置一个透明的询问框
        layer.msg('Please login!', {
            time: 20000,   //20s后自动关闭
            btn: ['Understand', 'Let see see!'],
            success: function(layero){
                var btn = layero.find('.layui-layer-btn');
                btn.find('.layui-layer-btn0').attr({
                    href: '/Home.jsp'
                    //onClick:'window.location.href=#loginAndRegisterWindow'
                });
            }
        });
    }
    ,notice: function(){
        //示范一个公告层
        layer.open({
            type: 1
            ,title: false //不显示标题栏
            ,closeBtn: false
            ,area: '300px;'
            ,shade: 0.8
            ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
            ,btn: ['火速围观', '残忍拒绝']
            ,btnAlign: 'c'
            ,moveType: 1 //拖拽模式，0或者1
            ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
            ,success: function(layero){
                var btn = layero.find('.layui-layer-btn');
                btn.find('.layui-layer-btn0').attr({
                    href: 'http://www.layui.com/'
                    ,target: '_blank'
                });
            }
        });
    }
    ,offset: function(othis){
        var type = othis.data('type')
            ,text = othis.text();

        layer.open({
            type: 1
            ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
            ,id: 'layerDemo'+type //防止重复弹出
            ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'
            ,btn: '关闭全部'
            ,btnAlign: 'c' //按钮居中
            ,shade: 0 //不显示遮罩
            ,yes: function(){
                layer.closeAll();
            }
        });
    }
};

$('#attempt,#PersonalCenter').on('click', function(){
    var othis = $(this), method = othis.data('method');
    $.get('HasLogin.action',function (msg) {
        if(msg==="none")
        {
            active[method] ? active[method].call(this, othis) : '';
            $('#AddItemsButton').attr('disabled','disabled');
        }
        else
        {
            $('#AddItemsButton').removeAttr('disabled');
        }
    });
});