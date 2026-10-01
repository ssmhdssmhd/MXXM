<?php

namespace app\index\controller;

class Help extends Base
{
    var $_config;
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $param = mac_param_url();
        $this->assign('param', $param);
        return $this->label_fetch('help/index');
    }


}
