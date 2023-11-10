package br.com.fiap.store.factory;

import br.com.fiap.store.dao.CategoriaDAO;
import br.com.fiap.store.dao.ProdutoDAO;
import br.com.fiap.store.dao.UsuarioDAO;
import br.com.fiap.store.dao.impl.OracleCategoriaDAO;
import br.com.fiap.store.dao.impl.OracleProdutoDAO;
import br.com.fiap.store.dao.impl.OracleUsuarioDAO;

public class DAOFactory {

	public static ProdutoDAO getProdutoDAO() {
		return new OracleProdutoDAO();
	}
	
	public static CategoriaDAO getCategoriaDAO() {
		return new OracleCategoriaDAO();
	}
	
	public static UsuarioDAO getUsuarioDAO() {
		return new OracleUsuarioDAO();
	}
	
}
