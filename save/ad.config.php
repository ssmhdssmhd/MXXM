<?php
/**
 * 前台广告配置（由后台「广告设置」页面生成，请勿手动修改格式）
 *
 * off      : 1=开启 0=关闭
 * time     : 广告展示秒数（0=不等待，直接播放）
 * skip     : 1=允许跳过 0=不允许
 * pc_code  : 电脑端广告 HTML（base64 编码）
 * wap_code : 移动端广告 HTML（base64 编码）
 * block    : 1=开启解析页去广告 0=关闭
 * block_mode: strict=禁止弹窗+禁止顶层跳转 popup=仅禁止顶层跳转
 * block_param: 追加到解析接口地址后的参数（如 &ad=0，留空不追加）
 */
return array(
    'off'     => '0',
    'time'    => '5',
    'skip'    => '1',
    'pc_code' => '',
    'wap_code' => '',
    'block'   => '1',
    'block_mode' => 'strict',
    'block_param' => '',
);
