package br.com.fiap.store.teste;

import java.util.Calendar;
import java.util.List;

import br.com.fiap.store.bean.Produto;
import br.com.fiap.store.dao.ProdutoDAO;
import br.com.fiap.store.exception.DBException;
import br.com.fiap.store.factory.DAOFactory;


public class TesteProdutoDAO {

	public static void main(String[] args) {
		ProdutoDAO dao = DAOFactory.getProdutoDAO();
		
		Produto produto = new Produto(0, "Caderno", 20, Calendar.getInstance(), 100);
		
		try {
			dao.cadastrar(produto);
			System.out.println("Produto Cadastrado!");
		} catch (DBException e) {
			e.printStackTrace();
		}
		
		produto = dao.buscar(1);
		produto.setNome("Caderno capa dura");
		produto.setValor(30);
		try {
			dao.atualizar(produto);
			System.out.println("Produto Atualizado!");
		} catch (DBException e) {
			e.printStackTrace();
		}
		
		List<Produto> lista	= dao.listar();
		for (Produto item: lista) {
			System.out.println(item.getNome() + " " + item.getQuantidade() + " " + item.getValor());
		}
		
		try {
			dao.remover(1);
			System.out.println("Produto Removido!");
		} catch (DBException e) {
			e.printStackTrace();
		}
		
		
	}

}
