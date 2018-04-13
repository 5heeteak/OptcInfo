//example 0 - 초기화 블럭
//window.addEventListener("load",function(){});
//$(window)
//jquery(window)

$(function()
{
	//alert("message");	
});

//example 1 - 노드 선택

$(function()
{
	//var okBtn = document.querySelector("#ex1 .btn-default");
	var okBtn = $("#ex1 .btn-default");
	okBtn.val("HOHOHOHOHOHOHO");	
});

//example 2 - 이벤트 처리

$(function()
{
	var okBtn = $("#ex2 .btn-default");
	/*okBtn.on("click",function(){
		alert("message");
	});*/
	
	okBtn.click(function(){
		okBtn.val("버튼!!");
		alert("버튼 바꾸기");
	});

});

//example 3 -속성, 스타일 수정

$(function()
{
	var okBtn = $("#ex3 .btn-default");
	var img =$("#ex3 img");
	var textBox = $("#ex3 input[type=text]");

	
	okBtn.click(function(){
		//img.attr("src","img/1234.png");
		//var imgName = textBox.attr("val");
		var imgName = textBox.val();
		img.attr("src","img/"+ imgName +".png");
		
		/*img.css("width", "300px");
		img.css("height", "100px");
		img.css("box-shadow", "#979797 3px 3px 3px");*/
		
		var imgStyle = {
				width: "300px",
				height: "100px",
				"box-shadow": "#979797 3px 3px 3px"
		};
		
		img.css(imgStyle);
	});

});