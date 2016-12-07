<%@ page contentType ="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>树叶识别--石大</title>
    <!-- load stylesheets -->
    <link rel="stylesheet" href="http://fonts.useso.com/css?family=Open+Sans:300,400">    <!-- Google web font "Open Sans" -->    
    <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css">            <!-- Font awesome -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                  <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/hero-slider-style.css">                              <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/) -->
    <link rel="stylesheet" href="css/magnific-popup.css">                                 <!-- Magnific popup style (http://dimsemenov.com/plugins/magnific-popup/) -->
    
    <link rel="stylesheet" href="css/templatemo-style.css" >
    <script type="text/javascript" src="js/bootstrap.min.js" charset="utf-8"></script>
    <%--<script type="text/javascript" src="js/bootstrap.js" charset="utf-8"></script>--%>
    <%--<script type="text/javascript" src="js/bootstrap-filestyle.min.js" charset="utf-8"></script>--%>
    <script type="text/javascript" src="js/jquery-1.11.3.min.js" charset="utf-8"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
    <body>
        <!-- Content -->
        <div class="cd-hero">

            <!-- Navigation -->        
            <div class="cd-slider-nav">
                <nav class="navbar">

                    <button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                        &#9776;
                    </button>

                    <div class="collapse navbar-toggleable-sm text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                        <ul class="nav navbar-nav">
                            <li class="nav-item active selected">
                                <a class="nav-link" href="#0" data-no="1">介绍 <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#0" data-no="2">图片识别</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#0" data-no="3">test1</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#0" data-no="4">test2</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#0" data-no="5">树叶种类查询</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div> 
            
            <div class="copyrights">Collect from <a href=""  title="石大图片识别">石大图片识别</a></div>

            <ul class="cd-hero-slider">  <!-- autoplay -->
                <li class="selected">
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content tm-page-1" data-page-no="1">
                            <div class="row">
                                <div class="col-xs-12">
                                    <i class="fa fa-4x fa-camera tm-icon"></i>
                                    <h2 class="tm-site-name">植物图片识别</h2>
                                    <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">
                                        <p class="tm-text">Flat design used <a rel="nofollow" href="https://codyhouse.co/gem/hero-slider/" target="_blank">Hero Slider</a> for left and right page transitions. Responsiveness is based on <a rel="nofollow" href="http://getbootstrap.com/" target="_blank">Bootstrap</a> 4 alpha 2. Images are taken from <a rel="nofollow" href="https://unsplash.com/" target="_blank">Unsplash</a>. This web template is provided by <a href="https://plus.google.com/+templatemo" target="_blank">templatemo</a> for free of charge.</p>
                                        <p class="tm-text">Mauris eros lacus, sollicitudin sit amet lacinia et, vehicula bibendum felis. Pellentesque in quam iaculis erat iaculis lacinia. Donec sagittis sapien odio, a sodales velit elementum nec.</p>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div> <!-- .cd-full-width -->
                </li>

                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="2">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="tm-bg-white-translucent col-xs-6 tm-2-col-textbox text-xs-left">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <div class="col-xs-8">
                                                    <form  action="/upload" method="post" enctype="multipart/form-data">
                                                        <div class="col-xs-12" style="padding-right: 0px;">
                                                            <div class="input-append" style="padding-top: 10px;padding-bottom: 5px">
                                                                <input id="lefile" type="file"  class="showimage" style="display: none"/>
                                                                <input id = "photoCover" class="col-xs-8" type="text" style="padding: 0px;">
                                                                <a class="tm-file-btn " onclick="$('input[id=lefile]').click();" style="padding-top: 0px;padding-bottom: 5px">点击上传图片</a>
                                                            </div>
                                                            <hr />
                                                            <button type="submit" class="tm-submit-btn" >开始识别</button>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="col-xs-4" >
                                                    <img class="preview" style="max-width:150px;max-height: 150px;">
                                                </div>
                                            </div>
                                            <hr />
                                            <div class="col-xs-12" style="padding-top: 5px">
                                                <label class="text-xs-left" id="progress1">上传进度</label>
                                                <progress class="progress" value="40" max="100" aria-describedby="progress1"></progress>
                                            </div>
                                            <hr />
                                            <div class="col-xs-12" style="padding-top: 5px">
                                                <label class="text-xs-left" id="progress2">识别进度</label>
                                                <progress class="progress" value="80" max="100" aria-describedby="progress2"></progress>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tm-bg-white-translucent col-xs-6  tm-2-col-textbox text-xs-left">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">相似度排序</div>
                                            <div class="panel-body">
                                                <p>以下显示的是您所查询的植物的相似度排序结果，您可以点击相关结果行来转到信息详情页面</p>
                                            </div>

                                            <table class="table table-hover table-bordered ">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>种类</th>
                                                        <th>相似度</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>test1</td>
                                                        <td>89%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>test2</td>
                                                        <td>89%</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div> <!-- .cd-full-width -->

                </li>
                
                <!-- Page 3 -->
                <li>
                    
                    <div class="cd-full-width">

                        <div class="container-fluid js-tm-page-content" data-page-no="3">
                            
                            <div class="row tm-img-gallery">
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                                    <a href="img/tm-img-01.jpg">
                                        <img src="img/tm-img-01-tn.jpg" alt="Image" class="img-fluid tm-img">
                                    </a>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                                    <a href="img/tm-img-02.jpg">
                                        <img src="img/tm-img-02-tn.jpg" alt="Image" class="img-fluid tm-img">
                                    </a>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                                    <a href="img/tm-img-03.jpg">
                                        <img src="img/tm-img-03-tn.jpg" alt="Image" class="img-fluid tm-img">
                                    </a>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                                    <a href="img/tm-img-04.jpg">
                                        <img src="img/tm-img-04-tn.jpg" alt="Image" class="img-fluid tm-img">
                                    </a>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                                    <a href="img/tm-img-05.jpg">
                                        <img src="img/tm-img-05-tn.jpg" alt="Image" class="img-fluid tm-img">
                                    </a>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                                    <a href="img/tm-img-06.jpg">
                                        <img src="img/tm-img-06-tn.jpg" alt="Image" class="img-fluid tm-img">
                                    </a>
                                </div>                                
                            </div>

                        </div>
                                                    
                    </div>
                    
                </li>

                <li>  <!-- class="cd-bg-video" -->
                    <div class="js-tm-page-content" data-page-no="4">
                        <div class="tm-bg-white-translucent">
                            <input type="text" name="test3"/>
                        </div>
                    </div>                    

                </li>

                <li>
                    <div class="js-tm-page-content">
                        <div class="container-fluid" data-page-no="5" style="padding-top: 120px">
                            <div class="row">
                                <div class="col-xs-12 ">
                                    <div class="col-xs-2"></div>
                                    <div class="col-xs-8 " style="padding-left: 0px;padding-right: 0px">
                                        <form class="form-horizontal" role="form" style="padding-left: 0px;padding-right: 0px">
                                            <div class="col-xs-8" style="padding-right: 0px">
                                                <input class="form-control" placeholder="请输入花的类别"   style="padding:14px " id="search_content" required/>
                                            </div>
                                            <button type="button" class="col-xs-4 tm-submit-btn" id="search" onclick="postdata()">搜索</button>
                                        </form>
                                    </div>
                                    <div class="col-xs-2"></div>
                                </div>
                                <div>
                                    <hr>
                                </div>
                                <!-- result form -->
                                <%--利用ajax进行内容的输出--%>
                                <div class="container-fluid" style="padding-top: 60px">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6" style="padding-left: 0px">
                                        <div class="form-group" id="search_result_label">
                                            <label class="form-control">结果显示在此</label>
                                            <%--植入显示结果的位置--%>
                                        </div>
                                    </div>

                                    <div class="tm-bg-white-translucent col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6" style="padding-right: 0px">
                                        <div class="form-group" id="search_result_image">
                                            <%--<img src="img/tm-img-01-tn.jpg" alt="Image" >--%>
                                            <%--<img src="img/tm-img-01-tn.jpg" alt="Image" >--%>
                                        </div>
                                        <label class="col-lg-2 form-control" id="search_result_content">相关内容显示在此</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div> <!-- .cd-full-width -->
                </li>
            </ul> <!-- .cd-hero-slider -->
            
            <footer class="tm-footer">
            
                <div class="tm-social-icons-container">
                    <a href="#" class="tm-social-link"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-google-plus"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-behance"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-linkedin"></i></a>
                </div>
                
                <p class="tm-copyright-text">Copyright &copy; 2016 <a href="" target="_blank" title="中国石油大学(北京)">中国石油大学(北京)</a></p>

            </footer>
                    
        </div> <!-- .cd-hero -->
        

        <!-- Preloader, https://ihatetomatoes.net/create-custom-preloading-screen/ -->
        <div id="loader-wrapper">
            
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

        </div>
        
        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
        <script src="js/tether.min.js"></script> <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) -->
        <script src="js/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
        <script src="js/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->
        <script src="js/jquery.magnific-popup.min.js"></script> <!-- Magnific popup (http://dimsemenov.com/plugins/magnific-popup/) -->
        
        <script>

            function adjustHeightOfPage(pageNo) {
               
                // Get the page height
                var totalPageHeight = 15 + $('.cd-slider-nav').height()
                                        + $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .js-tm-page-content").height() + 160
                                        + $('.tm-footer').height();

                // Adjust layout based on page height and window height
                if(totalPageHeight > $(window).height()) 
                {
                    $('.cd-hero-slider').addClass('small-screen');
                    $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", totalPageHeight + "px");
                }
                else 
                {
                    $('.cd-hero-slider').removeClass('small-screen');
                    $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", "100%");
                }

            }

            /*
                Everything is loaded including images.
            */
            $(window).load(function(){

                adjustHeightOfPage(1); // Adjust page height

                /* Gallery pop up
                -----------------------------------------*/
                $('.tm-img-gallery').magnificPopup({
                    delegate: 'a', // child items selector, by clicking on it popup will open
                    type: 'image',
                    gallery:{enabled:true}                
                });

                /* Collapse menu after click 
                -----------------------------------------*/
                $('#tmNavbar a').click(function(){
                    $('#tmNavbar').collapse('hide');

                    adjustHeightOfPage($(this).data("no")); // Adjust page height       
                });

                /* Browser resized 
                -----------------------------------------*/
                $( window ).resize(function() {
                    var currentPageNo = $(".cd-hero-slider li.selected .js-tm-page-content").data("page-no");
                    adjustHeightOfPage( currentPageNo );
                });
        
                // Remove preloader
                // https://ihatetomatoes.net/create-custom-preloading-screen/
                $('body').addClass('loaded');
                           
            });

            //图片上传前预览js
            $(function (){

                function format_float(num, pos)
                {
                    var size = Math.pow(10, pos);
                    return Math.round(num * size) / size;
                }

                function preview(input) {

                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function (e) {
                            $('.preview').attr('src', e.target.result);
                            var KB = format_float(e.total / 1024, 2);
                            $('.size').text("檔案大小：" + KB + " KB");
                        }

                        reader.readAsDataURL(input.files[0]);
                    }
                }

                $("body").on("change", ".showimage", function (){
                    preview(this);
                })

            })

            $('input[id=lefile]').change(function(){
                $('#photoCover').val($(this).val());
            });
        </script>

        <script type="text/javascript">
            var json_all_searchdata;
            function postdata() {
                var serach_value=$("#search_content").val();
                $("#search_result_label").empty()
                alert(serach_value);
                $.ajax({
                    type:"post",
                    url:"search?value="+encodeURI(encodeURI(serach_value)),
                    timeout:30000,
                    dataType:"json",
                    success:function(json_data){
//                       TODO:从服务器获取json数据并显示
                        json_all_searchdata=null;
                        json_all_searchdata=json_data;
                        $(json_data).each(function(i){
                            $("#search_result_label").append("<label class=\"form-control\" id=\""+json_data[i].name+"\" onclick=\"set_content("+i+")\">"+json_data[i].name+"</label>");
                            if(i==0){
                                $("#search_result_image").empty();
                                $("#search_result_image").append("<img src="+json_data[i].img1_path+" alt=\" Image\" width=\"300\" height=\"200\">");
                                $("#search_result_image").append("<img src="+json_data[i].img2_path+" alt=\" Image\" width=\"300\" height=\"200\">");
                                $("#search_result_content").html(json_data[i].content);
                            }
                        })
                        alert(json_data);
                    },
                    error:function(){
                        alert("未查询到相关内容");
                    }
                });
            }
            function set_content(val){
                $("#search_result_image").empty();
                $("#search_result_image").append("<img src="+json_all_searchdata[val].img1_path+" alt=\" Image\" width=\"300\" height=\"200\">");
                $("#search_result_image").append("<img src="+json_all_searchdata[val].img2_path+" alt=\" Image\" width=\"300\" height=\"200\">");
                $("#search_result_content").html(json_all_searchdata[val].content);
            }
        </script>

</body>
</html>