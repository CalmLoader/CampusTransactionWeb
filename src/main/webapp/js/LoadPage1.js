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
                    "                                            "+"<div class=\"media\">\n" +
                    "                                            <img alt=\"Bootstrap Media Preview\" src=\""+item.pic+"\" onclick=\"ChangPic(this)\" class=\"media-object pull-left min\">\n" +
                    "                                            <div class=\"media-body\">\n" +
                    "                                                <h4 class=\"media-heading\">"+item.title+"" +
                    "                                                </h4>"+item.detail+"" +
                    "                                                <div class=\"media\">\n" +
                    "                                                        <div class=\"media-body\">\n" +
                    "                                                            <h3 class=\"media-heading\">\n" +
                    "                                                                Contact\n" +
                    "                                                            </h3><a href=\"#\" class=\"pull-left\"> "+item.contact+"</a>\n" +
                    "                                                        </div>\n" +
                    "                                                </div>\n" +
                    "                                            </div>\n" +
                    "                                        </div>"+"\n" +
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
                "                                            "+"<div class=\"media\">\n" +
                "                                            <img alt=\"Bootstrap Media Preview\" src=\""+item.pic+"\" onclick=\"ChangPic(this)\" class=\"media-object pull-left min\">\n" +
                "                                            <div class=\"media-body\">\n" +
                "                                                <h4 class=\"media-heading\">"+item.title+"" +
                "                                                </h4>"+item.detail+"" +
                "                                                <div class=\"media\">\n" +
                "                                                        <div class=\"media-body\">\n" +
                "                                                            <h3 class=\"media-heading\">\n" +
                "                                                                Contact\n" +
                "                                                            </h3><a href=\"#\" class=\"pull-left\"> "+item.contact+"</a>\n" +
                "                                                        </div>\n" +
                "                                                </div>\n" +
                "                                            </div>\n" +
                "                                        </div>"+"\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>");
    });
}

function ChangPic(msg) {
    $(msg).toggleClass('min');
    $(msg).toggleClass('max');
}


function CostumeLoad(data) {
    $.each(data,function (i, item) {
            $('#GoodItems').append("<div class=\"panel panel-default\">    \n" +
                "\n" +
                "                                    <div class=\"panel-heading\">           \n" +
                "                                        <div class=\"row\">\n" +
                "                                            <div align=\"left\" class=\"col-md-10\">\n" +
                "                                                <a href=\"#panel-element-" + i + "\" data-parent=\"#panel\" data-toggle=\"collapse\" class=\"panel-title\">" + item.title + "</a>\n" +
                "                                            </div>\n" +
                "                                            <div align=\"right\" class=\"col-md-2\">\n" +
                "                                                <a onclick=\"addHot(this)\" name=\"" + item.id + "\" class=\"glyphicon glyphicon-fire btn\" style=\"color: red\" role=\"button\">" + item.hot + "</a>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                    <div id=\"panel-element-" + i + "\" class=\"panel-collapse collapse\">\n" +
                "                                        <div class=\"panel-body\">\n" +
                "                                            " + "<div class=\"media\">\n" +
                "                                            <img alt=\"Bootstrap Media Preview\" src=\"" + item.pic + "\" onclick=\"ChangPic(this)\" class=\"media-object pull-left min\">\n" +
                "                                            <div class=\"media-body\">\n" +
                "                                                <h4 class=\"media-heading\">" + item.title + "" +
                "                                                </h4>" + item.detail + "" +
                "                                                <div class=\"media\">\n" +
                "                                                        <div class=\"media-body\">\n" +
                "                                                            <h3 class=\"media-heading\">\n" +
                "                                                                Contact\n" +
                "                                                            </h3><a href=\"#\" class=\"pull-left\"> " + item.contact + "</a>\n" +
                "                                                        </div>\n" +
                "                                                </div>\n" +
                "                                            </div>\n" +
                "                                        </div>" + "\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>");
    });
}

