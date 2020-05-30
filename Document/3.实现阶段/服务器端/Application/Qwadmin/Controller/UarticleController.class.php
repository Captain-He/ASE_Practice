<?php
/**
 *
 * 版权所有：新睿社区<qwadmin.010xr.com>
 * 作    者：素材水<hanchuan@010xr.com>
 * 日    期：2016-09-20
 * 版    本：1.0.0
 * 功能说明：文章控制器。
 *
 **/

namespace Qwadmin\Controller;

use Vendor\Tree;

class UarticleController extends ComController
{

    public function index($sid = 0, $p = 1)
    {

      
        $p = intval($p) > 0 ? $p : 1;

        $article = M('dirary');
        $pagesize = 20;#每页数量
        $offset = $pagesize * ($p - 1);//计算记录偏移量
        $prefix = C('DB_PREFIX');
        $sid = isset($_GET['sid']) ? $_GET['sid'] : '';
        $keyword = isset($_GET['keyword']) ? htmlentities($_GET['keyword']) : '';
        $order = isset($_GET['order']) ? $_GET['order'] : 'DESC';
        $where = '1 = 1 ';
        if ($sid) {
            $sids_array = category_get_sons($sid);
            $sids = implode(',',$sids_array);
            $where .= "and {$prefix}article.sid in ($sids) ";
        }
        if ($keyword) {
            $where .= "and {$prefix}article.title like '%{$keyword}%' ";
        }


        $count = $article->where($where)->count();
        $list = $article->where($where)->limit($offset . ',' . $pagesize)->select();
        $data = array();
        $i=0;
        foreach ($list as $key => $value) {
                $sql = M('Userinfo');
                $openid = $value['openid'];
                $res = $sql->query("select nick from userinfo where openid = '$openid'");
                $data[$i]['name'] = $res['0']['nick'];
                $data[$i]['title'] = $value['title'];
                $data[$i]['ctime'] = $value['ctime'];
                $data[$i]['id'] = $value['id'];
                $data[$i]['pdfurl'] = $value['pdfurl'];
                $i++;
        }
        $page = new \Think\Page($count, $pagesize);
        $page = $page->show();
        $this->assign('list', $data);
        $this->assign('page', $page);
        $this->display();
    }

    public function del(){
        $aids = isset($_REQUEST['aids']) ? $_REQUEST['aids'] : false;
        if ($aids) {
            if (is_array($aids)) {
                $aids = implode(',', $aids);
                $map['id'] = array('in', $aids);
            } else {
                $map = 'id=' . $aids;
            }
            if (M('dirary')->where($map)->delete()) {
                addlog('删除笔记，AID：' . $aids);
                $this->success('恭喜，文章删除成功！');
            } else {
                $this->error('参数错误！a');
            }
        } else {
            $this->error('参数错误！b');
        }
    }
}