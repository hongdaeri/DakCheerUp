          </div>
        </div>
      </div>
    </div>
  </div>
</div>



<!-- ================== BEGIN PAGE LEVEL JS ================== -->
<div id="siteMeshJavaScript">

  <script src="/resources/plugins/masked-input/masked-input.min.js"></script>
  <script src="/resources/js/resume-my.js"></script>
  <script src="/resources/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
  <script src="/resources/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
  <script src="/resources/js/form-wysiwyg.demo.min.js"></script>
  <script src="/resources/plugins/switchery/switchery.min.js"></script>
  <script src="/resources/js/form-slider-switcher.demo.min.js"></script>
  
  <script src="/resources/js/add-tag.js"></script>
  <script>
    //example

   
    $(document).ready(function() {
      App.init();
      FormWysihtml5.init();
      FormSliderSwitcher.init();

      document.getElementById("m_util").className = "active";
      resumeBtnToolTipAndAction();     
      
      
    });

    $(".masked-input-phone").mask("999-9999-9999");
    $(".masked-input-yyyy-mm-dd").mask("9999.99.99");
    $(".masked-input-yyyy-mm").mask("9999.99");
    $(".masked-input-period").mask("9999.99 - 9999.99");





  </script>

</div>
<!-- ================== END PAGE LEVEL JS ================== -->



</body>

</html>