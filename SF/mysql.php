<?php
/**
 * 官替算法 v0.1 - 数据库连接池
 * 连接参数由后台「官替算法」页面配置，保存在 save/sf.config.php，无需修改本文件
 */

class mysql {
    private $pool;
    private $maxConnections = 10;  // 最大连接数，不用改
    private $servername;
    private $username;
    private $dbname;
    private $password;

    public function __construct() {
        //读取后台配置
        $SF = @include dirname(__FILE__) . '/../save/sf.config.php';
        if (!is_array($SF)) { $SF = array(); }
        $this->servername = isset($SF['db_host']) ? $SF['db_host'] : 'localhost';
        $this->username   = isset($SF['db_user']) ? $SF['db_user'] : 'root';
        $this->password   = isset($SF['db_pass']) ? $SF['db_pass'] : '';
        $this->dbname     = isset($SF['db_name']) ? $SF['db_name'] : 'root';
        $this->initialize();
    }

    private function initialize() {
        $this->pool = new SplQueue();
        for ($i = 0; $i < $this->maxConnections; $i++) {
            $conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
            if ($conn->connect_error) {
                die("连接失败: " . $conn->connect_error);
            }
            $this->pool->enqueue($conn);
        }
    }

    public function getConnection() {
        if ($this->pool->isEmpty()) {
            return null;
        }
        return $this->pool->dequeue();
    }

    public function releaseConnection($conn) {
        $this->pool->enqueue($conn);
    }
}
