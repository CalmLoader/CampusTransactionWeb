// function fresh() {
//     $.getJSON("Load.action",function (data) {
//         $.each(data,function (i, item) {
//             $('#GoodItems').append("<div class=\"panel panel-default\">    \n" +
//                 "\n" +
//                 "                                    <div class=\"panel-heading\">           \n" +
//                 "                                        <div class=\"row\">\n" +
//                 "                                            <div align=\"left\" class=\"col-md-10\">\n" +
//                 "                                                <a href=\"#panel-element-"+i+"\" data-parent=\"#panel\" data-toggle=\"collapse\" class=\"panel-title\"> <%--<span class=\"badge pull-right\">16</span>--%> "+item.title+"</a>\n" +
//                 "                                            </div>\n" +
//                 "                                            <div align=\"right\" class=\"col-md-2\">\n" +
//                 "                                                <a onclick=\"addHot(this)\" name=\""+item.id+"\" class=\"glyphicon glyphicon-fire btn\" style=\"color: red\" role=\"button\">"+item.hot+"</a>\n" +
//                 "                                            </div>\n" +
//                 "                                        </div>\n" +
//                 "                                    </div>\n" +
//                 "                                    <div id=\"panel-element-"+i+"\" class=\"panel-collapse collapse\">\n" +
//                 "                                        <div class=\"panel-body\">\n" +
//                 "                                            "+item.detail+"\n" +
//                 "                                        </div>\n" +
//                 "                                    </div>\n" +
//                 "                                </div>");
//         })
//     });
// }
var number=0;
var array;
var prevpage=1;
var pageNum=1;
var curpage=1;
window.onload=function () {
    $.getJSON("Load.action",function (data) {
        array=data;
        $.each(data,function (i, item) {
            //number=i;
            if(i<10)
            $('#GoodItems').append("<div class=\"panel panel-default\">    \n" +
                "\n" +
                "                                    <div class=\"panel-heading\">           \n" +
                "                                        <div class=\"row\">\n" +
                "                                            <div align=\"left\" class=\"col-md-10\">\n" +
                "                                                <a href=\"#panel-element-"+i+"\" data-parent=\"#panel\" data-toggle=\"collapse\" class=\"panel-title\">"+item.title+"</a>\n" +
                "                                            </div>\n" +
                "                                            <div align=\"right\" class=\"col-md-2\">\n" +
                "                                                <a onclick=\"addHot(this)\" name=\""+item.id+"\" class=\"glyphicon glyphicon-fire btn\" style=\"color: red\" role=\"button\">"+item.hot+"</a>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                    <div id=\"panel-element-"+i+"\" class=\"panel-collapse collapse\">\n" +
                "                                        <div class=\"panel-body\">\n" +
                "                                            "+item.detail+"\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>");
        });
        number=data.length;
        var i=1;
        if(number%10===0)
            pageNum=number/10;
        else
            pageNum=number/10+1;
        for(i=2; i<=pageNum; i++)
        {
            $('#pageNumber').append("<li>" + "<a onclick=\"Currentgood(this)\" class=\"btn\" role=\"button\">"+i+"</a>" + "</li>");
        }
        $('#pageNumber').append("<li>" + "<a onclick=\"Currentgood(this)\" class=\"btn\" role=\"button\">Next</a>\n" + "</li>");
    });

    $.get('HasLogin.action',function (msg) {
        var bar=$('#LoginBar');
        if(msg!=="none")
        {
            bar.empty();
            var str=msg+"您好！"
            bar.append("<a class=\"navbar-header btn\" href=\"#ExitConfirmWindow\" role=\"button\" data-toggle=\"modal\">"+str+"</a>");
        }
        else
        {
            console.log("no");
        }
    });
}

function Currentgood(msg) {
    var cur=curpage;
    if(msg.innerHTML.toString()==="Next")
    {
        if(curpage+1<=pageNum)
        {
            prevpage=curpage;
            curpage++;
            cur=curpage;
        }
    }
    else if(msg.innerHTML.toString()==="Prev")
    {
        cur=prevpage;
        curpage=prevpage;
    }
    else
    {
        cur=parseInt(msg.innerHTML.toString());
        prevpage=curpage;
        curpage=cur;
    }
    cur*=10;
    $('#GoodItems').empty();
    $.each(array,function (i, item) {
        if(i>cur-11&&i<cur)
            $('#GoodItems').append("<div class=\"panel panel-default\">    \n" +
                "\n" +
                "                                    <div class=\"panel-heading\">           \n" +
                "                                        <div class=\"row\">\n" +
                "                                            <div align=\"left\" class=\"col-md-10\">\n" +
                "                                                <a href=\"#panel-element-"+i+"\" data-parent=\"#panel\" data-toggle=\"collapse\" class=\"panel-title\">"+item.title+"</a>\n" +
                "                                            </div>\n" +
                "                                            <div align=\"right\" class=\"col-md-2\">\n" +
                "                                                <a onclick=\"addHot(this)\" name=\""+item.id+"\" class=\"glyphicon glyphicon-fire btn\" style=\"color: red\" role=\"button\">"+item.hot+"</a>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                    <div id=\"panel-element-"+i+"\" class=\"panel-collapse collapse\">\n" +
                "                                        <div class=\"panel-body\">\n" +
                "                                            "+item.detail+"\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>");
    });
}


