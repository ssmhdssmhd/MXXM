<?php
/*
Name:分页方法
Version:1.0
*/

function pagination($count, $perlogs, $page, $url) {
	$pnums = @ceil($count / $perlogs);
	$re = '';
	$urlHome = preg_replace("|[\?&/][^\./\?&=]*page[=/\-]|", "", $url);
	for ($i = $page - 2; $i <= $page + 2 && $i <= $pnums; $i++) {
		if ($i > 0) {
			if ($i == $page) {
				$re .= "<li class=\"page-item active\"><a class=\"page-link\">$i</a></li>";
				//$re ."<li class=\"page-item active\"><a class=\"page-link\" >$i</a></li>";
				//$re .= "<li><span>$i</span></li>";
			} elseif ($i == 1) {
				
				$re .= "<li class=\"page-item\"><a class=\"page-link\" href=\"$urlHome\">$i</a></li>";
			} else {
				$re .= "<li class=\"page-item\"><a class=\"page-link\" href=\"$url$i\">$i</a></li>";
				//$re .= "<li><a href=\"$url$i\">$i</a></li>";
			}
		}
	}
	if($page > 0)
		if($pnums > $page){//前进
			$go = $page +1;
		}else{
			$go = $page;
		}
		if($page > 1){
			$after = $page -1;
		}else{
			$after = $page;
		}
		
		$re = "<li class=\"page-item\">	<a class=\"page-link\" href=\"$url$after\" aria-label=\"Previous\">		<span aria-hidden=\"true\">&laquo;</span>		<span class=\"sr-only\">Previous</span>	</a> </li>$re";
		$re .= "<li class=\"page-item\"><a class=\"page-link\" href=\"$url$go\" aria-label=\"Next\"><span aria-hidden=\"true\">&raquo;</span><span class=\"sr-only\">Next</span></a></li>";
	if ($pnums <= 1)
		$re = '';
	return "<ul class=\"pagination justify-content-end\">".$re."</ul>";
}

?>