//window.onload  = function(){
//var logon = document.getElementsByClassName('logon_1');
//var box = document.getElementsByClassName('logon');
//logon.onclick = function(){
//	console.log(123);
//	box.style.transform = "translateX(0%)";
//	box.style.display = "block";
//	
//}
$(function(){
var i=-1;
var loop = setInterval(function (){ 
	i++;
	slide();
},2000);
function slide(){
	var num = 20*i*-1;
	$('.loop ul:nth-child(1)').css({
		'transform':'translateX(' + num + '%)'
	})
	$('.loop ul:nth-child(2) li').css({
		'background-color': '#ccc'
	}).eq(i).css({
		'background-color': 'red'
	})
	if(i>=4){
		i=-1;
	}
}
/*$.get('data.txt',function(response){
	var data = JSON.parse(response);
	for(var i = 0;i < data.length; i++)
	{
		var html = "<div class='introduce_" + i + "'>";
		html += "<div class='introduce'><div class='left'><img src='" + data[i].Pic1 +"'/></div><div class='right'><p>" + data[i].name1 + "</p><p>" + data[i].type1 + "</p><p>" + data[i].introduce1 + "</p></div></div>";
		html += "<div class='introduce'><div class='left'><img src='" + data[i].Pic1 +"'/></div><div class='right'><p>" + data[i].name1 + "</p><p>" + data[i].type1 + "</p><p>" + data[i].introduce1 + "</p></div></div>"
		html += "<div class='introduce'><div class='left'><img src='" + data[i].Pic1 +"'/></div><div class='right'><p>" + data[i].name1 + "</p><p>" + data[i].type1 + "</p><p>" + data[i].introduce1 + "</p></div></div>"
	    $(html).appendTo('#detail');}
})
$('.one').click(function(){
	$('.introduce_0').css({
		"display":"block"
	})
	$('.introduce_1').css({
		"display":"none"
	})
	$('.introduce_2').css({
		"display":"none"
	})
	$('.introduce_3').css({
		"display":"none"
	})
})
$('.two').click(function(){
	$('.introduce_0').css({
		"display":"none"
	})
	$('.introduce_1').css({
		"display":"block"
	})
	$('.introduce_2').css({
		"display":"none"
	})
	$('.introduce_3').css({
		"display":"none"
	})
})
$('.three').click(function(){
	$('.introduce_0').css({
		"display":"none"
	})
	$('.introduce_1').css({
		"display":"none"
	})
	$('.introduce_2').css({
		"display":"block"
	})
	$('.introduce_3').css({
		"display":"none"
	})
})
$('.four').click(function(){
	$('.introduce_0').css({
		"display":"none"
	})
	$('.introduce_1').css({
		"display":"none"
	})
	$('.introduce_2').css({
		"display":"none"
	})
	$('.introduce_3').css({
		"display":"block"
	})
})

$('.bottom ul ').click(function(event){
	if($(event.target).is('a'))
	{
		$('li',this).removeClass('active');
		$(event.target).addClass('active')
	}
})*/
})
function check(){
	var username = $('#username').val();
	var password = $('#password').val();
	if(password != ""  ){
    $('.password_').css({
     	'display':'none'
     })
     }
	else{
	$('.password_').css({
     	'display':'block'
     })	
	}
	if(username == ""  ){
     $('.username_').css({
     	'display':'block'
     })
   }
	else{
	$('.username_').css({
     	'display':'none'
     })	
	}
   if(password == ""|| username == ""){
   	return false;
   }
   else{
   	return true;
   }
}
//}

