var array=[false,false,false,false];

function checkUserName() {
    var username= $('#registerUser input').val();
    var first=$('#registerUser');
    var second=$('#registerUser span');
    if(username===null)
    {
        array[0]=false;
        Set(first,second,array[0]);
    }
    else
        $.post('CheckUserName.action',{"user.username":username},function (msg) {
            if(msg === "true")
            {
                array[0]=true;
                Set(first,second,array[0]);
             }
             else
            {
                array[0]=false;
                Set(first,second,array[0]);
            }
        },'json')
}

function CheckPassword() {
    var string1=$('#registerPassword input').val();
    var first=$('#registerPassword');
    var second=$('#registerPassword span');
    if((string1!==null)&&(string1.length>=6))
    {
        array[1]=true;
        Set(first,second,array[1]);
    }
    else
    {
        array[1]=false;
        Set(first,second,array[1]);
    }
}
function ConfirmPassword() {
    var string1=$('#registerPassword input').val();
    var string2=$('#registerConfirmPassword input').val();
    var first=$('#registerConfirmPassword');
    var second=$('#registerConfirmPassword span');
    if(string1 === string2)
    {
        array[2]=true;
        Set(first,second,array[2]);
    }
    else
    {
        array[2]=false;
        Set(first,second,array[2]);
    }
}

function CheckEmail(msg) {
    var regx=/@/;
    var first=$('#registerEmail');
    var second=$('#registerEmail span');
    array[3]=regx.test(msg.value);
    Set(first,second,array[3]);
}

function Set(first, second,flag) {
    if(!flag)
    {
        first.removeClass('has-success has-feedback');
        first.addClass('has-error has-feedback');
        second.attr('class','glyphicon glyphicon-remove form-control-feedback');
    }
    else
    {
        first.removeClass('has-error has-feedback');
        first.addClass('has-success has-feedback');
        second.attr('class','glyphicon glyphicon-ok form-control-feedback');
    }
    if(array[0]&&array[1]&&array[2]&&array[3])
        $('#registerButton').removeAttr('disabled');
    else
        $('#registerButton').attr('disabled','disabled');
}
