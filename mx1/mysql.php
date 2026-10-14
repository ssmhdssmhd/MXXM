<?php
/**
 * 官替算法 算法1 (mx1) - 数据库连接池
 * 连接参数由后台「官替算法 → 算法1」页面配置，保存在 save/mx1.config.php，无需修改本文件
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
        $MX1 = @include dirname(__FILE__) . '/../save/mx1.config.php';
        if (!is_array($MX1)) { $MX1 = array(); }
        $this->servername = isset($MX1['db_host']) ? $MX1['db_host'] : 'localhost';
        $this->username   = isset($MX1['db_user']) ? $MX1['db_user'] : 'root';
        $this->password   = isset($MX1['db_pass']) ? $MX1['db_pass'] : '';
        $this->dbname     = isset($MX1['db_name']) ? $MX1['db_name'] : 'root';
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
