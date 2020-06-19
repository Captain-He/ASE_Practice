<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>ADMIN</title>

    <meta name="keywords" content="<?php echo (C("keywords")); ?>"/>
    <meta name="description" content="<?php echo (C("description")); ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>


    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="/xcx/Public/qwadmin/css/bootstrap.css"/>
    <link rel="stylesheet" href="/xcx/Public/qwadmin/css/font-awesome.css"/>
    <link rel="stylesheet" href="/xcx/Public/qwadmin/css/jquery-ui.css"/>
    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <link rel="stylesheet" href="/xcx/Public/qwadmin/css/ace-fonts.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="/xcx/Public/qwadmin/css/ace.css" class="ace-main-stylesheet" id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/xcx/Public/qwadmin/css/ace-part2.css" class="ace-main-stylesheet"/>
    <![endif]-->

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/xcx/Public/qwadmin/css/ace-ie.css"/>

    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="/xcx/Public/qwadmin/js/ace-extra.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="/xcx/Public/qwadmin/js/html5shiv.js"></script>
    <script src="/xcx/Public/qwadmin/js/respond.js"></script>
    <![endif]-->
</head>
<body class="no-skin">
    <!-- #section:basics/navbar.layout -->
    <div id="navbar" class="navbar navbar-default">
        <script type="text/javascript">
            try {
                ace.settings.check('navbar', 'fixed')
            } catch (e) {
            }
        </script>

        <div class="navbar-container" id="navbar-container">
            <!-- #section:basics/sidebar.mobile.toggle -->
            <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
                <span class="sr-only">Toggle sidebar</span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>
            </button>

            <!-- /section:basics/sidebar.mobile.toggle -->
            <div class="navbar-header pull-left">
                <!-- #section:basics/navbar.layout.brand -->
                <a href="<?php echo U('index/index');?>" class="navbar-brand">
                    <small>
                        <i class="fa fa-home"></i>
                       <?php echo (C("sitename")); ?> 
                    </small>
                </a>

                <!-- /section:basics/navbar.layout.brand -->

                <!-- #section:basics/navbar.toggle -->

                <!-- /section:basics/navbar.toggle -->
            </div>

            <!-- #section:basics/navbar.dropdown -->
            <div class="navbar-buttons navbar-header pull-right" role="navigation">
                <ul class="nav ace-nav">
                    <!-- #section:basics/navbar.user_menu -->
                    <li class="red">
                        <a href="<?php echo U('cache/clear');?>" title="清除缓存" target="_self">
                            <i class="ace-icon fa glyphicon-trash"></i>
                        </a>
                    </li>
                    <li class="red">
                        <a href="/" title="前台首页" target="_blank">
                            <i class="ace-icon fa fa-home"></i>
                        </a>
                    </li>
                    <li class="light-blue">
                        <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                            <img class="nav-user-photo" src="https://www.caption-he.com.cn/xcx/<?php echo ($user["head"]); ?>" alt="<?php echo ($user["user"]); ?>" />
                            <span class="user-info">
                                <small>欢迎光临，</small>
                                <?php echo ($user["user"]); ?>
                            </span>

                            <i class="ace-icon fa fa-caret-down"></i>
                        </a>

                        <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                            <li>
                                <a href="<?php echo U('Setting/Setting');?>">
                                    <i class="ace-icon fa fa-cog"></i>
                                    设置
                                </a>
                            </li>

                            <li>
                                <a href="<?php echo U('Personal/profile');?>">
                                    <i class="ace-icon fa fa-user"></i>
                                    个人资料
                                </a>
                            </li>

                            <li class="divider"></li>

                            <li>
                                <a href="<?php echo U('logout/index');?>">
                                    <i class="ace-icon fa fa-power-off"></i>
                                    退出
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- /section:basics/navbar.user_menu -->
                </ul>
            </div>

            <!-- /section:basics/navbar.dropdown -->
        </div><!-- /.navbar-container -->
    </div>

    <!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

        <!-- #section:basics/sidebar -->
    <div id="sidebar" class="sidebar responsive">
        <script type="text/javascript">
            try {
                ace.settings.check('sidebar', 'fixed')
            } catch (e) {
            }
        </script>

        <ul class="nav nav-list">
            <?php if(is_array($menu)): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><li
                <?php if(($v['id'] == $current['id']) OR ($v['id'] == $current['pid']) OR ($v['id'] == $current['ppid'])): ?>class="active
                    <?php if($current['pid'] != '0'): ?>open<?php endif; ?>
                    "<?php endif; ?>
                >
                <a href="<?php if(empty($v["name"])): ?>#
                <?php else: ?>
                <?php echo U($v['name']); endif; ?>"
                <?php if(!empty($v["children"])): ?>class="dropdown-toggle"<?php endif; ?>
                >
                <i class="<?php echo ($v["icon"]); ?>"></i>
                <span class="menu-text">
                                    <?php echo ($v["title"]); ?>
                                </span>
                <?php if(!empty($v["children"])): ?><b class="arrow fa fa-angle-down"></b><?php endif; ?>
                </a>

                <b class="arrow"></b>
                <?php if(!empty($v["children"])): ?><ul class="submenu">
                        <?php if(is_array($v["children"])): $i = 0; $__LIST__ = $v["children"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vv): $mod = ($i % 2 );++$i;?><li
                            <?php if(($vv['id'] == $current['id']) OR ($vv['id'] == $current['pid'])): ?>class="active
                                <?php if($current['ppid'] != '0'): ?>open<?php endif; ?>
                                "<?php endif; ?>
                            >
                            <a href="<?php if(empty($vv["children"])): echo U($vv['name']);?>
                            <?php else: ?>
                            #<?php endif; ?>"
                            <?php if(!empty($vv["children"])): ?>class="dropdown-toggle"<?php endif; ?>
                            >
                            <i class="<?php echo ($vv["icon"]); ?>"></i>
                            <?php echo ($vv["title"]); ?>
                            <?php if(!empty($vv["children"])): ?><b class="arrow fa fa-angle-down"></b><?php endif; ?>
                            </a>

                            <b class="arrow"></b>
                            <?php if(!empty($vv["children"])): ?><ul class="submenu">
                                    <?php if(is_array($vv["children"])): $i = 0; $__LIST__ = $vv["children"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vvv): $mod = ($i % 2 );++$i;?><li
                                        <?php if($vvv['id'] == $current['id']): ?>class="active"<?php endif; ?>
                                        >
                                        <a href="<?php echo U($vvv['name']);?>">
                                            <i class="<?php echo ($vvv["icon"]); ?>"></i>
                                            <?php echo ($vvv["title"]); ?>
                                        </a>
                                        <b class="arrow"></b>
                                        </li><?php endforeach; endif; else: echo "" ;endif; ?>
                                </ul><?php endif; ?>
                            </li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul><?php endif; ?>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>

        </ul><!-- /.nav-list -->

        <!-- #section:basics/sidebar.layout.minimize -->
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left"
               data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>

        <!-- /section:basics/sidebar.layout.minimize -->
        <script type="text/javascript">
            try {
                ace.settings.check('sidebar', 'collapsed')
            } catch (e) {
            }
        </script>
    </div>

    <!-- /section:basics/sidebar -->
    <div class="main-content">
        <div class="main-content-inner">
            <!-- #section:basics/content.breadcrumbs -->
                <div class="breadcrumbs" id="breadcrumbs">
        <script type="text/javascript">
            try {
                ace.settings.check('breadcrumbs', 'fixed')
            } catch (e) {
            }
        </script>

        <ul class="breadcrumb">
            <li>
                <i class="ace-icon fa fa-home home-icon"></i>
                <a href="<?php echo U('index/index');?>">首页</a>
            </li>
            <?php if(isset($current['ptitle'])): ?><li>
                    <a href="#"><?php echo ($current['ptitle']); ?></a>
                </li><?php endif; ?>
            <li class="active"><?php echo ($current['title']); ?></li>
        </ul><!-- /.breadcrumb -->
    </div>

            <!-- /section:basics/content.breadcrumbs -->
            <div class="page-content">
                

                <!-- /section:settings.box -->
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th class="col-xs-7">分类名称</th>
                                <th class="col-xs-1">排序</th>
                                <th class="col-xs-2">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if(!empty($category)): function showTree($data,$pre=null) { foreach ($data as $key => $val) { echo '
                                    <tr>'; echo '
                                        <td>'; if($pre){ echo $pre.'┗━'.$val['name']; }else{ echo $val['name']; } echo '
                                        </td>
                                        '; echo '
                                        <td>'; echo '<input name="o" class="inputorder" type="number" value="'.$val['o'].'"
                                                         val="'.$val['id'].'"/>'; echo '
                                        </td>
                                        '; echo '
                                        <td>'; echo '<a class="green" href="'.U('add',array('pid'=>$val['id'])).'"
                                                     title="新增分类"><i class="ace-icon fa fa-plus-circle bigger-100"></i>新增</a>&nbsp;&nbsp;'; echo '<a class="blue" href="'.U('edit',array('id'=>$val['id'])).'"
                                                     title="编辑分类"><i class="ace-icon fa fa-plus-circle bigger-100"></i>编辑</a>&nbsp;&nbsp;'; echo '<a class="red del" href="javascript:void(0);" val="'.$val['id'].'"
                                                     title="删除分类"><i class="ace-icon fa fa-plus-circle bigger-100"></i>删除</a>'; echo '
                                        </td>
                                        '; if (!empty($val['children'])) { showTree($val['children'],$pre.'&nbsp;&nbsp;'); } echo '
                                    </tr>
                                    '; } } showTree($category); ?>
                                <?php else: ?>
                                <tr>
                                    <td colspan="3">无分类</td>
                                </tr><?php endif; ?>
                            </tbody>
                        </table>
                        <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
        <div class="footer">
        <div class="footer-inner">
            <!-- #section:basics/footer -->
            <div class="footer-content">
                            <span class="bigger-120">
                                <small>Copyright &copy; 2019 <a href="http://www.caption-he.com.cn" target="_blank"><?php echo (C("footer")); ?></a> All Rights Reserved.</small>
                            </span>
            </div>

            <!-- /section:basics/footer -->
        </div>
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>

</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='/xcx/Public/qwadmin/js/jquery.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='/xcx/Public/qwadmin/js/jquery1x.js'>" + "<" + "/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='/xcx/Public/qwadmin/js/jquery.mobile.custom.js'>" + "<" + "/script>");
</script>
<script src="/xcx/Public/qwadmin/js/bootstrap.js"></script>

<!-- page specific plugin scripts -->
<script charset="utf-8" src="/xcx/Public/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="/xcx/Public/kindeditor/lang/zh_CN.js"></script>
<script src="/xcx/Public/qwadmin/js/bootbox.js"></script>
<!-- ace scripts -->
<script src="/xcx/Public/qwadmin/js/ace/elements.scroller.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/elements.colorpicker.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/elements.fileinput.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/elements.typeahead.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/elements.wysiwyg.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/elements.spinner.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/elements.treeview.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/elements.wizard.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/elements.aside.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.ajax-content.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.touch-drag.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.sidebar.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.sidebar-scroll-1.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.submenu-hover.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.widget-box.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.settings.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.settings-rtl.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.settings-skin.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.widget-on-reload.js"></script>
<script src="/xcx/Public/qwadmin/js/ace/ace.searchbox-autocomplete.js"></script>
<script src="/xcx/Public/qwadmin/js/jquery-ui.js"></script>
<!-- inline scripts related to this page -->
<script type="text/javascript">
    $(function () {
        $(".inputorder").change(function () {
            var id = $(this).attr('val');
            var o = $(this).val();
            if (id != o) {
                $.post("<?php echo U('update',array('act'=>'order'));?>", {id: id, o: o}, function (data) {
                    if (data == 1) {
                        window.location.reload(true);
                    }
                }
            )
                ;
            }
        })
        $(".del").on('click', function () {
            var obj = $(this);
            var id = obj.attr('val');
            bootbox.confirm({
                title: "系统提示",
                message: "是否要删除该分类？",
                callback: function (result) {
                    if (result) {
                        $.get("<?php echo U('del');?>?id=" + id, function (result) {
                            if (result == 2) {
                                bootbox.alert({
                                    buttons: {
                                        ok: {
                                            label: '确定',
                                            className: 'btn-myStyle'
                                        }
                                    },
                                    message: '该类下拥有子类，无法删除。',
                                    title: "提示信息",
                                });
                                return;
                            } else if (result == 1) {
                                bootbox.alert({
                                    buttons: {
                                        ok: {
                                            label: '确定',
                                            className: 'btn-danger'
                                        }
                                    },
                                    message: '恭喜，删除成功！',
                                    callback: function () {
                                        window.location.reload(true);
                                    },
                                    title: "友情提示",
                                });
                                return;
                            } else {
                                bootbox.dialog({
                                    message: "抱歉，系统错误，请稍后再试。",
                                    buttons: {
                                        "success": {
                                            "label": "确定",
                                            "className": "btn-danger"
                                        }
                                    }
                                });
                                return;
                            }
                        });
                    } else {
                        return true;
                    }
                },
                buttons: {
                    "cancel": {"label": "取消"},
                    "confirm": {
                        "label": "确定",
                        "className": "btn-danger"
                    }
                }
            });
        })
    })


</script>

</body>
</html>