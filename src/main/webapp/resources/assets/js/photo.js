
// 이미지 업로드 함수
function fn_temp_upload(formobj) {
	formobj = formobj || document.uploadForm;
	
	var filepath = formobj.uploadFile.value;
	var validate_str = /\.(gif|jpg|jpeg)$/gi;
	
	if(filepath.trim()=='') {
		alert('사진첨부를 해주십시오.');
		return;
	}
	
	if(validate_str.test(filepath)) {
		$('#dummy').val( Math.random()*99999 );
		formobj.submit();
	} else {
		alert('사진파일은 jpg, gif만 업로드가 가능합니다.');
		return;
	}
}


// jcrop 관련 
jQuery(function($){

    // Create variables (in this scope) to hold the API and image size
    var jcrop_api,
        boundx,
        boundy,

        // Grab some information about the preview pane
        $preview = $('#preview-pane'),
        $pcnt = $('#preview-pane .preview-container'),
        $pimg = $('#preview-pane .preview-container img'),

        xsize = $pcnt.width(),
        ysize = $pcnt.height();
    
    	
    

    
    $('#original-img').Jcrop({    
      setSelect: [ 0,0,100,100], 
      onChange: updatePreview,
      onSelect: updatePreview,
      onRelease:  clearCoords,
      canSelect:true,
      canDrag:true,
      canDelete:true,
      canResize:true,
      aspectRatio: xsize / ysize
    },function(){
      // Use the API to get the real image size
      var bounds = this.getBounds();
      boundx = bounds[0];
      boundy = bounds[1];
      // Store the API in the jcrop_api variable
      jcrop_api = this;

      // Move the preview into the jcrop container for css positioning
      $preview.appendTo(jcrop_api.ui.holder);
    });

    function clearCoords()
    {
      $('#coords input').val('');
    };
    
    function updatePreview(c)
    {
    	$('#x').val(c.x);
	    $('#y').val(c.y);
	    $('#w').val(c.w);
	    $('#h').val(c.h);
    	
      if (parseInt(c.w) > 0)
      {
        var rx = xsize / c.w;
        var ry = ysize / c.h;

        $pimg.css({
          width: Math.round(rx * boundx) + 'px',
          height: Math.round(ry * boundy) + 'px',
          marginLeft: '-' + Math.round(rx * c.x) + 'px',
          marginTop: '-' + Math.round(ry * c.y) + 'px'
        });
      }
    };

  });




