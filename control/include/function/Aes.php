<?php
/*
Name:AES方法
Version:1.0
*/

function AESencrypt($data, $key, $iv) {//AES加密
    $cipher = "AES-256-CBC";
    $options = OPENSSL_RAW_DATA;
    $encrypted = openssl_encrypt($data, $cipher, $key, $options, $iv);
    $encrypted = base64_encode($encrypted);
    return $encrypted;
}

function AESdecrypt($data, $key, $iv) {//AES解密
    $cipher = "AES-256-CBC";
    $options = OPENSSL_RAW_DATA;
    $data = base64_decode($data);
    $decrypted = openssl_decrypt($data, $cipher, $key, $options, $iv);
    return $decrypted;
}

?>