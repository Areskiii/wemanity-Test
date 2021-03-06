<?php
class ModelContenuArticle extends Model {
	
	/**** Get Nombre des Aricles ***/
	public function getTotalArticle() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "article`");
		return $query->row['total'];
	}
	
	/**** Get List des Aricles ***/
	public function getArticle($data = array()) {
		$sql = "SELECT * FROM `" . DB_PREFIX . "article`";

		$sort_data = array(
			'id',
			'title',
			'text',
			'Actif'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY article_id";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 10;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}
	
		$query = $this->db->query($sql);

		return $query->rows;
	}

	/**** Ajouter un Arctile ***/
	public function addArticle($data) {
		
		$this->db->query("INSERT INTO `" . DB_PREFIX . "article` SET 
		title_article = '" . $this->db->escape($data['title']) . "',
		text_article = '" . $this->db->escape($data['text']) . "',	
		Actif = '" . $this->db->escape($data['status']) . "'
		");
	}	
	
	/**** Supprimer un ou des Aricle(s) ***/
	public function deleteArticle($Article_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "article WHERE UniteMesureNum = '" . (int)$Article_id . "'");
	}
	
	/**** Modifier un Aricle ***/
	public function editArticle($Article_id, $data) {
		

		$this->db->query("UPDATE " . DB_PREFIX . "article SET
		title_article = '" . $this->db->escape($data['title']) . "',
		text_article = '" . $this->db->escape($data['text']) . "',	
		Actif = '" . $this->db->escape($data['status']) . "'
		WHERE article_id = '" . (int)$Article_id . "'");
	}
	
	/**** Get Détais d'Aricle par ID ***/
	public function getArticleByID($Article_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "article WHERE article_id = '" . (int)$Article_id . "'");
		return $query->row;
	}
	
}