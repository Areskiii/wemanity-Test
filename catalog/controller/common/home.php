<?php

class ControllerCommonHome extends Controller 
{
	private $error = array();

	public function index() {
		$this->load->language('common/home');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/home');

		$this->getList();
	}

	protected function getList() {
		
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'site';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}


		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('Wemanity - Article'),
			'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'] . $url, 'SSL')
		);

		$data['Articles'] = array();

		$filter_data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * 10,
			'limit' => 10
		);

		$user_total = $this->model_catalog_home->getTotalArticle();

		$results = $this->model_catalog_home->getArticle($filter_data);
		
		foreach ($results as $result) 
		{
			$data['Articles'][] = array(
				'id'    => $result['article_id'],
				'title'  => $result['title_article'],
				'text' => $result['text_article'],
				'read' => $this->url->link('common/home/more', 'token=' . $this->session->data['token'] . '&Article_id=' . $result['article_id'] . $url, 'SSL'),
			);
		}

		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['text_list'] = $this->language->get('text_list');
		$data['text_no_results'] = $this->language->get('text_no_results');
		$data['text_confirm'] = $this->language->get('text_confirm');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
			
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $user_total;
		$pagination->page = $page;
		$pagination->limit = 10;
		$pagination->url = $this->url->link('common/home', $url . '&page={page}', 'SSL');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($user_total) ? (($page - 1) * 20) + 1 : 0, ((($page - 1) * 20) > ($user_total - 20)) ? $user_total : ((($page - 1) * 20) + 20), $user_total, ceil($user_total / 20));

		$data['sort'] = $sort;
		$data['order'] = $order;

		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}
	}

	public function more() {
	
		$this->load->language('common/article');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/home');

		$this->getForm();
	}
	
	
	protected function getForm() {
		
		$data['heading_title'] = $this->language->get('heading_title');
		
		if (isset($this->request->get['Article_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$Article_Info = $this->model_catalog_home->getArticleByID($this->request->get['Article_id']);
		}
		
		
		if (isset($this->request->post['title'])) {
			$data['title'] = $this->request->post['title'];
		} elseif (!empty($Article_Info)) {
			$data['title'] = $Article_Info['title_article'];
		} else {
			$data['title'] = '';
		}
		
		if (isset($this->request->post['text'])) {
			$data['text'] = $this->request->post['text'];
		} elseif (!empty($Article_Info)) {
			$data['text'] = $Article_Info['text_article'];
		} else {
			$data['text'] = '';
		}
		
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/article.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/article.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/article.tpl', $data));
		}
	}	
	
}