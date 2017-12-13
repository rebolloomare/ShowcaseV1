
$(window).resize(function() {
	//console.log('window resize');
	changeScrollerSize();
});
	
$(document).resize(function() {
	
	changeScrollerSize();
});


$(document).ready(function()
{	//console.log("document ready");
	iniciaScroller();
				
});

function changeScrollerSize() {
	var docHeight = $(window).height();
	
	$('#menuScroll').find('.mCSB_draggerContainer').css('height', docHeight);
	$('#menuScroll').find('.mCSB_dragger').css('height', docHeight * 0.8);
	$('#menuScroll').find('.mCSB_dragger_bar').css('height', docHeight * 0.8);
	
	
	
	 
	//$(".contentMenu").mCustomScrollbar("update");
}
	

function iniciaScroller() {
	//console.log("alto window: " + $(window).height());
	//console.log("alto documento: " + $(document).height());
	
	var docHeight = $(window).height();
	
	
			
	$(".contentMenu").mCustomScrollbar({            	
    	
 		setHeight: docHeight,
    	autoHideScrollbar:true,			            	
    	mouseWheel:{ 
    		enable: true 
		},
		advanced:{ 
			autoExpandHorizontalScroll:true,
			updateOnSelectorChange: true
			
		}
	});
	
}