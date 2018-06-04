$(document).ready(function(){
	/*  Hamburger Menu & Icon  */
	$('.hamburger').on('click', function(e){
		
		e.preventDefault();
		$(this).toggleClass('opned');
		$('header nav').toggleClass('active');
		
	});




	/*  Advanced search form & Icon  */
	$('#advanced_search_btn').on("click", function(e){
		e.preventDefault();

		var ads_box =$('.advanced_search');
		
		if(!ads_box.hasClass('advanced_displayed')){

			$(this).addClass('active');
			ads_box.stop().fadeIn(200).addClass('advanced_displayed');

		}else{

			$(this).removeClass('active');
			ads_box.stop().fadeOut(200).removeClass('advanced_displayed');

		}
	});
	var dn = $('section .form-dn');
	var dk = $('section .form-dk');
	var Menu1 = $('header .menu-1');
	var Menu2 = $('header .menu-2');
	//Hàm hiện form đăng ký
	$('#dang-ky').on("click", function(a){
		a.preventDefault();
		
		if(!dk.hasClass('advanced_displayed')){
			$(this).addClass('active');
			dk.stop().fadeIn(200).addClass('advanced_displayed');
			dn.stop().fadeOut(200).removeClass('advanced_displayed');
			Menu1.stop().fadeOut(200).removeClass('advanced_displayed');
			Menu2.stop().fadeOut(200).removeClass('advanced_displayed');
		}else{

			$(this).removeClass('active');
			dk.stop().fadeOut(200).removeClass('advanced_displayed');
		}
	});
	
	//Hàm hiện form đang nhập
	$('#dang-nhap').on("click", function(b){
		b.preventDefault();
		
		if(!dn.hasClass('advanced_displayed')){
			$(this).addClass('active');
			dn.stop().fadeIn(200).addClass('advanced_displayed');
			dk.stop().fadeOut(200).removeClass('advanced_displayed');
			Menu1.stop().fadeOut(200).removeClass('advanced_displayed');
			Menu2.stop().fadeOut(200).removeClass('advanced_displayed');
		}else{
			$(this).removeClass('active');
			dn.stop().fadeOut(200).removeClass('advanced_displayed');
		}
		
	});
	//menu xổ
	$('#mua').on("click", function(b){
		b.preventDefault();
		
		if(!Menu1.hasClass('advanced_displayed')){
			$(this).addClass('active');
			Menu1.stop().fadeIn(200).addClass('advanced_displayed');
			dk.stop().fadeOut(200).removeClass('advanced_displayed');
			dn.stop().fadeOut(200).removeClass('advanced_displayed');
		}else{
			$(this).removeClass('active');
			Menu1.stop().fadeOut(200).removeClass('advanced_displayed');
			Menu2.stop().fadeOut(200).removeClass('advanced_displayed');
		}
		
	});
	
	$('#mienbac').on("click", function(b){
		b.preventDefault();
		
		if(!Menu2.hasClass('advanced_displayed')){
			$(this).addClass('active');
			Menu2.stop().fadeIn(200).addClass('advanced_displayed');
			dk.stop().fadeOut(200).removeClass('advanced_displayed');
			dn.stop().fadeOut(200).removeClass('advanced_displayed');
		}else{
			$(this).removeClass('active');
			Menu2.stop().fadeOut(200).removeClass('advanced_displayed');
		}
		
	});
});
// Slide--------------------------------------------
var A;
var $auto = 0;
var $max = 7;

$(function () {
    $('.slideshow img:gt(0000)').hide();
    
    
    var $capid = $('.slideshow').children();
    
    $capid.attr("id", function (arr) {
        return "ID" + arr;
    });// cấp id cho ảnh.

    //Khi click vào Next
    $('#next').click(function () {
        if ($auto < $max - 1) {
            next($auto, $max);
            $auto++;
        } else if ($auto === $max - 1) {
            next($auto, $max);
            $auto = 0;
        }
    });

    //Khi click vào Prev
    $('#prev').click(function () {
        if ($auto > 0) {
            prev($auto, $max);
            $auto--;
        } else if ($auto === 0) {
            prev($auto, $max - 1)
            $auto = $max;
        }
    });
});

//Hàm sử lý của next
function next(img, max) {
    var n_img = img + 1;
    if (img < max -1) {
        $('#ID' + img).fadeOut();
        $('#ID' + n_img).hide(1000);
    } else if (img === max -1) {
        $('#ID' + img).fadeOut();
        $('#ID' + 0).hide(1000);
    }
    
}
//Hàm sử lý của Prev
function prev(img, max) {
    var p_img = img - 1;
    if(img > 0){
        $('#ID' + img).fadeOut();
        $('#ID' + p_img).fadeIn();
    } else if (img === 0) {
        $('#ID' + img).fadeOut();
        $('#ID' + max).fadeIn();
    }
}
//tự chuyển động
function Start(){
    document.getElementById("PS").innerHTML = '<input type="image" src="js/img/Pause.png" value="Pause" height="50px" width="auto" onclick='+'Pause()'+' >';
		A = setInterval(function () {
			if($auto < $max - 1){
				
				$('.slideshow :first-child').fadeOut()
				    .next('img').toggle(1000)
                    .end().appendTo('.slideshow');
                $auto++;
			} else if ($auto === $max -1) {
				
				$('.slideshow :first-child').fadeOut()
				.next('img').fadeIn()
                    .end().appendTo('.slideshow');
                $auto = -1;
			}
		}, 2000);
}
//đừng
function Pause(){
	clearInterval(A);
    document.getElementById("PS").innerHTML = '<input type="image" src="js/img/Start.png" value="Start" height="50px" width="auto" onclick='+'Start()'+' >';
}
// ảnh hiển thị theo số ảnh
function number(ID) {
    $('#ID' + $auto).fadeOut();
    $('#ID' + ID).slideDown(1000);
    $auto = ID;
}
//------------------------------------------------------------