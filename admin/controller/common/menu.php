<?php
class ControllerCommonMenu extends Controller {
	public function index() {
		$this->load->language('common/menu');

		$data['text_dashboard'] = $this->language->get('text_dashboard');
		$data['text_users'] = $this->language->get('text_users');
		$data['text_user'] = $this->language->get('text_user');
		$data['text_user_group'] = $this->language->get('text_user_group');
		$data['text_db_setting'] = $this->language->get('text_db_setting');
		$data['text_data_config'] = $this->language->get('text_data_config');
		$data['text_manager_service'] = $this->language->get('text_manager_service');
		$data['text_logs_files'] = $this->language->get('text_logs_files');
		$data['text_logs_platforme'] = $this->language->get('text_logs_platforme');
		$data['text_admin_log'] = $this->language->get('text_admin_log');
		$data['text_system_log'] = $this->language->get('text_system_log');
		$data['text_article'] = $this->language->get('text_article');
		
		$data['home'] = $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL');
		$data['db_setting'] = $this->url->link('elastic/many_database_setting', 'token=' . $this->session->data['token'], 'SSL');
		$data['data_config'] = $this->url->link('elastic/dataconfig', 'token=' . $this->session->data['token'], 'SSL');
		$data['user_group'] = $this->url->link('user/user_permission', 'token=' . $this->session->data['token'], 'SSL');
		$data['user'] = $this->url->link('user/user', 'token=' . $this->session->data['token'], 'SSL');
		$data['logs_files'] = $this->url->link('report/logs', 'token=' . $this->session->data['token'], 'SSL');
		$data['admin_log'] = $this->url->link('tool/error_log', 'token=' . $this->session->data['token'], 'SSL');
		$data['system_log'] = $this->url->link('tool/sys_log', 'token=' . $this->session->data['token'], 'SSL');
		$data['backup_log'] = $this->url->link('tool/backup_es_log', 'token=' . $this->session->data['token'], 'SSL');
		$data['config_search_engines'] = $this->url->link('setting/search_engines', 'token=' . $this->session->data['token'], 'SSL');
		$data['article'] = $this->url->link('contenu/article', 'token=' . $this->session->data['token'], 'SSL');
		
		return $this->load->view('common/menu.tpl', $data);
	}
}