/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
    function postVote(pid){
        var pid = pid;
        $.ajax({
                type: "POST",
                        url: "/ajax/postVote/",
                        data: {'pid':pid},
                        dataType: "json",
                        success: function(data){
                                alert(data.mess);
                                if(data.state == '2'){
                                    $('#like'+pid).attr('src','/app/static/images/like.jpg');
                                    $('#vote'+pid).text(parseInt($('#vote'+pid).text()) +1);
                                }
                        }
        });
    }


