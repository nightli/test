function check(){
	var user = $('.user').val();
	var passw = $('.passw').val();
	var passw2 = $('.passw2').val();
	var ret = /^[a-zA-Z0-9_-]{4,16}$/;
	var reg = ret.test(user);
	if(passw == passw2){
		$('.passw_').css({
			"display":"none"
		})
	}
	else{
		$('.passw_').css({
			"display":"block"
		})
	}
	if(reg == true){
		$('.user_').css({
			'display':'none'
		})
	}
	else{
		$('.user_').css({
			'display':'block'
		})
	}
	if(passw == "" && passw2 == ""){
		$('.passw_1').css({
			'display':'block'
		})
	}
	else{
		$('.passw_1').css({
			'display':'none'
		})
	}
	if(passw != passw2 || reg == false){
		return false;
	}
	else{
		return true;
	}
}
