$(function(){




    $("#attach").uploadify({
        swf:$("#ctx").val()+"/resources/uploadify/uploadify.swf",
        uploader:$("#ctx").val()+"/pic/upload",
        fileObjName:"attach",
        auto:false,
        formData:{"sid":$("#sid").val()},
        fileTypeExts:"*.jpg;*.gif;*.png;*.doc;*.docx;*.txt;*.xls;*.xlsx;*.rar;*.zip;*.pdf;*.flv;*.swf",
        onUploadSuccess:function(file, data, response) {
            alert(data);
        }
    });
    var uploadPath = $(ctx).val()+"/resources/upload/";

    var picture_http_address =$("#picture_http_address").val();

    function createAttachNode(attach) {

        var node = "<tr>";
        if(attach.isImg) {
            node+="<td><img src='"+uploadPath+"thumbnail/"+attach.newName+"'/></td>";
            //node+="<td><img src='"+picture_http_address+""+attach.newName+"'/></td>";
        } else {
            node+="<td>普通类型附件</td>";
        }
        node+="<td>"+attach.oldName+"</td>";
        node+="<td>"+Math.round(attach.size/1024)+"K</td>";
        if(attach.isImg) {
            node+="<td><input type='checkbox' value='"+attach.id+"' name='indexPic' class='indexPic'></td>";
            node+="<td><input type='radio' value='"+attach.id+"' name='channelPicId'></td>";
        } else {
            node+="<td>&nbsp;</td><td>&nbsp;</td>";
        }
        node+="<td><input type='checkbox' value='"+attach.id+"' name='isAttach' class='isAttach'><input type='hidden' name='aids' value='"+attach.id+"'/></td>";
        node+="<td><a href='#' class='list_op insertAttach' title='"+attach.id+"' isImg='"+attach.isImg+"' name='"+attach.newName+"' oldName='"+attach.oldName+"'>插入附件</a>&nbsp;<a href='#' title='"+attach.id+"' class='list_op deleteAttach delete'>删除附件</a></td>";
        node+="</tr>";
        return node;
    }
    $("#ok_attach").on("click",".indexPic",function(){
        //alert($(this).val());
        dwrService.updateIndexPic($(this).val());
    });
    $("#ok_attach").on("click",".insertAttach",function(){
        var node = "";
        var isImg = $(this).attr("isimg");
        if(isImg==1) {
            //node = "<img height='400' src='"+uploadPath+$(this).attr("name")+"' id='attach_"+$(this).attr("title")+"'/>"
            node = "<img height='400' src='"+picture_http_address+$(this).attr("name")+"' id='attach_"+$(this).attr("title")+"'/>"
        } else {
            //alert("abc");
            //	node = "<a href='"+uploadPath+$(this).attr("name")+"' id='attach_"+$(this).attr("title")+"'>"+$(this).attr("oldName")+"</a>"
            node = "<a href='"+picture_http_address+$(this).attr("name")+"' id='attach_"+$(this).attr("title")+"'>"+$(this).attr("oldName")+"</a>"
        }
        editor.pasteHTML(node);
    });
    $("#ok_attach").on("click",".isAttach",function(){
        dwrService.updateAttachInfo($(this).val());
    });
    $("#ok_attach").on("click",".deleteAttach",function(){
        var conf = confirm("确定删除附件信息吗？");



        if(conf) {
            var ad = this;
            var id = $(this).attr("title");
            dwrService.deleteAttach(id,function(data) {

                $(ad).parent("td").parent("tr").remove();

                //alert($("#xhe0_iframe").contents().find("#attach_"+id).html());
                $("#xhe0_iframe").contents().find("#attach_"+id).remove();
            });
        }
    });
    $("#uploadFile").click(function() {
        $("#attach").uploadify("upload","*");
    })
})

