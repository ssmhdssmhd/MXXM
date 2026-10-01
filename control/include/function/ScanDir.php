<?php
/*
Name:遍历目录方法
Version:1.0
*/

function myScanDir($dir,$type = 0){//PHP 实现遍历出目录及其子文件
	$file_arr = scandir($dir);
	$new_arr = [];
	foreach($file_arr as $item){
		if($type == 0 && $item != ".." && $item != "."){//目录和文件
			$new_arr[] = $item;
		}elseif($type == 1 &&  is_dir($dir.'/'.$item) && $item != ".." && $item != "."){//只要目录
			$new_arr[] = $item;
		}elseif($type == 2 &&  is_file($dir.'/'.$item) && $item != ".." && $item != "."){//只要文件
			$new_arr[] = $item;
		}
	}
	return $new_arr;
}

?>