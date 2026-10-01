<?php
namespace app\admin\controller;

class AppContent extends Base
{
    public function index()
    {
        $path = APP_PATH . 'extra/app_content.php';
        $config = file_exists($path) ? include $path : [];
        if (!is_array($config)) {
            $config = [];
        }
        if (Request()->isPost()) {
            $param = input();
            $validate = \think\Loader::validate('Token');
            if(!$validate->check($param)){
                return $this->error($validate->getError());
            }
            $aboutUrl = isset($param['about_url']) ? trim((string)$param['about_url']) : '';
            $raw = isset($param['wallpapers']) ? (string)$param['wallpapers'] : '';
            $items = [];
            $idx = 1;
            foreach (preg_split('/\r\n|\r|\n/', $raw) as $line) {
                $line = trim($line);
                if ($line === '') {
                    continue;
                }
                $parts = array_map('trim', explode('|', $line, 3));
                if (count($parts) < 2 || $parts[0] === '' || !preg_match('#^https?://#i', $parts[1])) {
                    continue;
                }
                $status = isset($parts[2]) && $parts[2] === '0' ? '0' : '1';
                $items[] = [
                    'id' => strval($idx),
                    'skinname' => $parts[0],
                    'skinpath' => $parts[1],
                    'status' => $status,
                ];
                $idx++;
            }
            $config = ['about_url'=>$aboutUrl, 'wallpapers'=>$items];
            $res = mac_arr2file($path, $config);
            if ($res === false) {
                return $this->error(lang('write_err_config'));
            }
            cache('cache_data','1');
            return $this->success(lang('save_ok'));
        }
        $lines = [];
        foreach ((array)($config['wallpapers'] ?? []) as $item) {
            $lines[] = (string)($item['skinname'] ?? '') . '|' . (string)($item['skinpath'] ?? '') . '|' . (string)($item['status'] ?? '1');
        }
        $this->assign('about_url', (string)($config['about_url'] ?? ''));
        $this->assign('wallpapers', implode("\n", $lines));
        $this->assign('title', 'App Appearance');
        return $this->fetch('admin@appcontent/index');
    }
}
