</div>


      
	

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<div id="siteMeshJavaScript">		
		<script src="/resources/js/jaso.js"></script>
		<script src="/resources/js/add-tag.js"></script>
		<script src="/resources/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
		<script src="/resources/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
		<script src="/resources/js/form-wysiwyg.demo.min.js"></script>
		<script src="/resources/plugins/switchery/switchery.min.js"></script>
		<script src="/resources/js/form-slider-switcher.demo.min.js"></script>
		<script src="/resources/plugins/se2/js/HuskyEZCreator.js"></script>
		
		<script>
		
			$(document).ready(function() {
				document.getElementById("m_jaso").className = "active";	
				App.init();
				
				$('.wysihtml5').wysihtml5({
					"font-styles": true, //Font styling, e.g. h1, h2, etc. Default true
					"emphasis": true, //Italics, bold, etc. Default true
					"lists": true, //(Un)ordered lists, e.g. Bullets, Numbers. Default true
					"html": false, //Button which allows you to edit the generated HTML. Default false
					"link": false, //Button to insert a link. Default true
					"image": false, //Button to insert an image. Default true,
					"color": true //Button to change color of font  
				});
				
				FormSliderSwitcher.init();
				
				$("#sajun-div").hide();
				$("#note-div").hide();
				$("#new-file-div").hide();
				$("#new-group-div").hide();
				
				
				$("#new-file-up").click(function(){
					$("#new-file-div").fadeToggle("fast");
					$("#sajun-div").hide();
					$("#note-div").hide();
					$("#new-group-div").hide();
				});
				
				$("#new-group-up").click(function(){
					$("#new-group-div").fadeToggle("fast");
					$("#sajun-div").hide();
					$("#note-div").hide();
					$("#new-file-div").hide();
				});
				
				$("#sajun-up").click(function(){
					$("#sajun-div").fadeToggle("fast");
					$("#note-div").hide();
					$("#new-file-div").hide();
					$("#new-group-div").hide();
				});
				
			
				$("#note-up").click(function(){
					$("#note-div").fadeToggle("fast");
					$("#sajun-div").hide();
					$("#new-file-div").hide();
					$("#new-group-div").hide();
				});
				
				
				$("#close-new-file-div").click(function(){
					$("#new-file-div").hide();
				});
					
				$("#close-new-group-div").click(function(){
					$("#new-group-div").hide();
				});
				
				$("#close-note-div").click(function(){
					$("#note-div").hide();
				});
					
				$("#close-sajun-div").click(function(){
					$("#sajun-div").hide();
				});
				
				$("#qna-tab-prev").click();
				$("#qna-tab-1").click();
				
				
				
			});
			
		
				
	
				
					
		</script>		
	</div>
	<!-- ================== END PAGE LEVEL JS ================== -->
  	
</body>
</html>
