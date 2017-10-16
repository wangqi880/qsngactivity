function verifyForm(form){
		var isOk ='';
		$.ajax({
	        type: "POST",
            url: "/ajax/checkcode/",
            data: {'code':$('#code_1').val()},
            dataType: "json",
            async: false,
            success: function(data){
            			isOk=data;
            		 }
        });
		if(isOk == 1){
			var imageName = form.elements['imageName[]'];
			var image = form.elements['image[]'];
			var m = 0;
			var n = 0;
			for(var i=0;i<form.elements.length;i++){
				if(form.elements[i].id=="provinceid_1" && form.elements[i].value==0){
					alert("请选择所在地");
					form.elements[i].focus();
					return false;
				}
				if(form.elements[i].id=="schoolid_1" && form.elements[i].value==0){
					alert("请选择学校");
					form.elements[i].focus();
					return false;
				}
				if(form.elements[i].id=="schoolid_1" && form.elements[i].value=='all' && form.elements['schoolname_1'].value==""){
					alert("请填写学校名字");
					form.elements[i].focus();
					return false;
				}
				if(form.elements[i].id=="provinceid_1" && form.elements[i].value==0){
					alert("请选择所在地");
					form.elements[i].focus();
					return false;
				}
				for(var j=0;j<imageName.length;j++){
					if(imageName[j].value == ''){
						m+=1;
					}
				}
				if(m == imageName.length){
					alert("至少上传一个作品，填写作品名字");
					form.elements[i].focus();
					return false;
				}
				for(var k=0;k<image.length;k++){
					if(image[k].value == ''){
						n+=1;
					}
				}
				if(n == image.length){
					alert("至少上传一个作品，选择上传作品");
					form.elements[i].focus();
					return false;
				}
				if(form.elements[i].id=="username_1" && form.elements[i].value==0){
					alert("作者不能为空");
					form.elements[i].focus();
					return false;
				}
				if(form.elements[i].id=="phone_1" && form.elements[i].value==0){
					alert("电话不能为空");
					form.elements[i].focus();
					return false;
				}
				if(form.elements[i].id=="phone_1" && form.elements[i].value){
					var myreg = /^1\d{10}$/;
					if(!myreg.test(form.elements[i].value)){
						alert('请输入有效的手机号码！');
						form.elements[i].focus();
						return false;
					}
				}
				if(form.elements[i].id=="email_1" && form.elements[i].value==0){
					alert("邮箱不能为空");
					form.elements[i].focus();
					return false;
				}
				if(form.elements[i].id=="email_1" && form.elements[i].value){
					var myreg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
					if(!myreg.test(form.elements[i].value)){
						alert('请输入有效的E_mail！');
						form.elements[i].focus();
						return false;
					}
				}
				
			}
		}else{
			alert('验证码不对！');
			form.elements['code'].focus();
			return false;
		}
		
}

function verifyForm_2(form){
	var isOk ='';
	$.ajax({
        type: "POST",
        url: "/ajax/checkcode/",
        data: {'code':$('#code_2').val()},
        dataType: "json",
        async: false,
        success: function(data){
        			isOk=data;
        		 }
    });
	if(isOk == 1){
		var imageName = form.elements['imageName[]'];
		var image = form.elements['image[]'];
		var m = 0;
		var n = 0;
		for(var i=0;i<form.elements.length;i++){
			if(form.elements[i].id=="provinceid_2" && form.elements[i].value==0){
				alert("请选择所在地");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="schoolid_2" && form.elements[i].value==0){
				alert("请选择学校");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="schoolid_2" && form.elements[i].value=='all' && form.elements['schoolname_2'].value==""){
				alert("请填写学校名字");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="provinceid_2" && form.elements[i].value==0){
				alert("请选择所在地");
				form.elements[i].focus();
				return false;
			}
			for(var j=0;j<imageName.length;j++){
				if(imageName[j].value == ''){
					m+=1;
				}
			}
			if(m == imageName.length){
				alert("至少上传一个作品，填写作品名字");
				form.elements[i].focus();
				return false;
			}
			for(var k=0;k<image.length;k++){
				if(image[k].value == ''){
					n+=1;
				}
			}
			if(n == image.length){
				alert("至少上传一个作品，选择上传作品");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="username_2" && form.elements[i].value==0){
				alert("作者不能为空");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="phone_2" && form.elements[i].value==0){
				alert("电话不能为空");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="phone_2" && form.elements[i].value){
				var myreg = /^1\d{10}$/;
				if(!myreg.test(form.elements[i].value)){
					alert('请输入有效的手机号码！');
					form.elements[i].focus();
					return false;
				}
			}
			if(form.elements[i].id=="email_2" && form.elements[i].value==0){
				alert("邮箱不能为空");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="email_3" && form.elements[i].value){
				var myreg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
				if(!myreg.test(form.elements[i].value)){
					alert('请输入有效的E_mail！');
					form.elements[i].focus();
					return false;
				}
			}
		}
	}else{
		alert('验证码不对！');
		form.elements['code'].focus();
		return false;
	}
}
function verifyForm_3(form){
	var isOk ='';
	$.ajax({
        type: "POST",
        url: "/ajax/checkcode/",
        data: {'code':$('#code_3').val()},
        dataType: "json",
        async: false,
        success: function(data){
        			isOk=data;
        		 }
    });
	if(isOk == 1){
		var imageName = form.elements['imageName[]'];
		var image = form.elements['image[]'];
		var m = 0;
		var n = 0;
		for(var i=0;i<form.elements.length;i++){
			if(form.elements[i].id=="provinceid_3" && form.elements[i].value==0){
				alert("请选择所在地");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="schoolid_3" && form.elements[i].value==0){
				alert("请选择学校");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="schoolid_3" && form.elements[i].value=='all' && form.elements['schoolname_3'].value==""){
				alert("请填写学校名字");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="provinceid_3" && form.elements[i].value==0){
				alert("请选择所在地");
				form.elements[i].focus();
				return false;
			}
			for(var j=0;j<imageName.length;j++){
				if(imageName[j].value == ''){
					m+=1;
				}
			}
			if(m == imageName.length){
				alert("至少上传一个作品，填写作品名字");
				form.elements[i].focus();
				return false;
			}
			for(var k=0;k<image.length;k++){
				if(image[k].value == ''){
					n+=1;
				}
			}
			if(n == image.length){
				alert("至少上传一个作品，选择上传作品");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="username_3" && form.elements[i].value==0){
				alert("作者不能为空");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="phone_3" && form.elements[i].value==0){
				alert("电话不能为空");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="phone_3" && form.elements[i].value){
				var myreg = /^1\d{10}$/;
				if(!myreg.test(form.elements[i].value)){
					alert('请输入有效的手机号码！');
					form.elements[i].focus();
					return false;
				}
			}
			if(form.elements[i].id=="email_3" && form.elements[i].value==0){
				alert("邮箱不能为空");
				form.elements[i].focus();
				return false;
			}
			if(form.elements[i].id=="email_3" && form.elements[i].value){
				var myreg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
				if(!myreg.test(form.elements[i].value)){
					alert('请输入有效的E_mail！');
					form.elements[i].focus();
					return false;
				}
			}
		}
	}else{
		alert('验证码不对！');
		form.elements['code'].focus();
		return false;
	}
}