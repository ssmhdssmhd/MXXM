<?php
/*
Name:中文转换方法
Version:1.0
*/
function replaceChineseAndSpaceWithUtf8($url) {
    $url = preg_replace_callback('/[\x{4e00}-\x{9fa5}]+/u', function($matches) {
        return urlencode($matches[0]);
    }, $url);
    
    return str_replace(' ', '%20', $url);
}

?>