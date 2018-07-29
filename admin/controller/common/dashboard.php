<?php
class ControllerCommonDashboard extends Controller {
	public function index() {
		$this->load->language('common/dashboard');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_statistics'] = $this->language->get('text_statistics');		
		
		$data['text_users'] = $this->language->get('text_users');
		$data['text_article'] = $this->language->get('text_article');
		/**** Get Number User Maintenance EzQuote ***/
		$this->load->model('user/user');
		$data['num_users']=$this->model_user_user->getTotalUsers();
		
		
		/**** Get Number User Maintenance EzQuote ***/
		$this->load->model('contenu/article');
		$data['num_articles']=$this->model_contenu_article->getTotalArticle();
		
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);
		
		// Check install directory exists
		if (is_dir(dirname(DIR_APPLICATION) . '/install')) {
			$data['error_install'] = $this->language->get('error_install');
		} else {
			$data['error_install'] = '';
		}

		$data['token'] = $this->session->data['token'];

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('common/dashboard.tpl', $data));
	}	
}
