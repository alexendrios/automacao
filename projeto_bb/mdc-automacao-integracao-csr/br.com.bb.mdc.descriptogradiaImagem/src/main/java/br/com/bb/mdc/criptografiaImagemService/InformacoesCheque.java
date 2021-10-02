package br.com.bb.mdc.criptografiaImagemService;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import br.com.bb.mdc.criptografiaImagemUtil.Util;


public class InformacoesCheque {

	private static ArrayList<String> protocolo;
	private static ArrayList<String> data;
	private static ArrayList<String> codAgencia;
	private static ArrayList<String> numeroConta;
	private static ArrayList<String> numeroCheque;
	private static ArrayList<String> valorCheque;
	private static ArrayList<String> digitoVerificador;

	private static void dadosCSVcheque(String file) {

		protocolo = new ArrayList<String>();
		data = new ArrayList<String>();
		codAgencia = new ArrayList<String>();
		numeroConta = new ArrayList<String>();
		numeroCheque = new ArrayList<String>();
		valorCheque = new ArrayList<String>();
		digitoVerificador = new ArrayList<String>();

		ArrayList<String> infoCsv = new ArrayList<String>();
		ArrayList<String> infoCheque = new ArrayList<String>();
		String csvFile = file;
		BufferedReader br = null;
		String line = "";
		String cvsSplitBy = ";";

		try {
			// trecho responsável pela leitura do csv
			br = new BufferedReader(new FileReader(csvFile));
			while ((line = br.readLine()) != null) {
				String[] country = line.split(cvsSplitBy);
				for (int i = 0; i < country.length; i++) {
					infoCsv.add(country[i].trim());
				}
			}

			// Trecho responsável pelo Tratamento das informações
			for (int i = 7; i < infoCsv.size(); i++) {
				infoCheque.add(infoCsv.get(i));
			}

			int a = 0;
			int b = 1;
			int c = 2;
			int d = 3;
			int e = 4;
			int f = 5;
			int g = 6;

			for (int i = 0; i < infoCheque.size(); i++) {
				if (!(a == infoCheque.size() + 6)) {
					protocolo.add(infoCheque.get(a));

				} else {
					break;
				}
				if (!(b == infoCheque.size())) {
					data.add(infoCheque.get(b));
				} else {
					break;
				}
				if (!(c == infoCheque.size() + 1)) {
					codAgencia.add(infoCheque.get(c));
				} else {
					break;
				}
				if (!(d == infoCheque.size() + 2)) {
					numeroConta.add(infoCheque.get(d));
				} else {
					break;
				}
				if (!(e == infoCheque.size() + 3)) {
					numeroCheque.add(infoCheque.get(e));
				} else {
					break;
				}
				if (!(f == infoCheque.size() + 4)) {
					valorCheque.add(infoCheque.get(f));
				} else {
					break;
				}
				if (!(g == infoCheque.size() + 5)) {
					digitoVerificador.add(infoCheque.get(g));
				} else {
					break;
				}
				b += 7;
				a += 7;
				c += 7;
				d += 7;
				e += 7;
				f += 7;
				g += 7;
			}

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	private static ArrayList<String> tratarColecaoDados(ArrayList<String> listaInformacao) {
		ArrayList<String> lista = new ArrayList<String>();
		int a = 0;
		int b = 1;

		for (int i = 0; i < listaInformacao.size(); i++) {
			String linha = "";
			for (int j = 0; j < listaInformacao.get(i).length(); j++) {
				if (a < (listaInformacao.get(i).length() + 1) && b < (listaInformacao.get(i).length() + 2)) {
					linha += listaInformacao.get(i).subSequence(a, b);
					a += 2;
					b += 2;
				}
			}
			lista.add(linha);
			a = 0;
			b = 1;
		}

		return lista;
	}

	public static void criarArquivoTexto(String file) throws IOException {

		/*
		 * Método responsável: Carregamento das informações contidas no CSV Criação de
		 * um arquivo texto referente a cada linha do CSV
		 */
		ArrayList<String> listaProtocolo = new ArrayList<String>();
		ArrayList<String> listaData = new ArrayList<String>();
		ArrayList<String> listaCodAgencia = new ArrayList<String>();
		ArrayList<String> listaNumeroConta = new ArrayList<String>();
		ArrayList<String> listaNumeroCheque = new ArrayList<String>();
		ArrayList<String> listaValorCheque = new ArrayList<String>();
		ArrayList<String> listaDigitoVerificadoranumeroCheque = new ArrayList<String>();

		dadosCSVcheque(file);

		listaProtocolo = tratarColecaoDados(protocolo);
		listaData = tratarColecaoDados(data);
		listaCodAgencia = tratarColecaoDados(codAgencia);
		listaNumeroConta = tratarColecaoDados(numeroConta);
		listaNumeroCheque = tratarColecaoDados(numeroCheque);
		listaValorCheque = tratarColecaoDados(valorCheque);
		listaDigitoVerificadoranumeroCheque = tratarColecaoDados(digitoVerificador);

		int tamanhoRegistro = listaProtocolo.size() - 1;

		for (int i = 0; i < tamanhoRegistro; i++) {
			String conteudo = listaProtocolo.get(i) + " " 
					+ listaData.get(i) + " " 
					+ listaCodAgencia.get(i) + " "
					+ listaNumeroConta.get(i) + " " 
					+ listaNumeroCheque.get(i) + " " 
					+ listaValorCheque.get(i) + " "
					+ listaDigitoVerificadoranumeroCheque.get(i);
			String nomeArquivo = "C:\\temp\\0"+listaProtocolo.get(i)+".txt";
			Util.escritorArquivos(nomeArquivo, conteudo);
		}

	}
}
