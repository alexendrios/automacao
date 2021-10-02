package br.com.bb.mdc.criptografiaImagemUtil;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class Util {

	public static ArrayList<String> iniciarArquivo(ArrayList<String> inicio) {
		ArrayList<String> saida;

		saida = new ArrayList<String>();
		for (int i = 0; i < inicio.size(); i++) {
			String linha = inicio.get(i).replace("\\", ";");
			String[] dados = linha.split(";");
			if (dados[2].length() == 24 && dados[2].subSequence(20, dados[2].length()).equals(".tif")) {
				saida.add(dados[2]);
			}
		}
		return saida;
	}

	public static ArrayList<String> listandoArquivos(String path) {

		File file = new File(path);
		File afile[] = file.listFiles();
		ArrayList<String> arquivos = new ArrayList<String>();
		int i = 0;
		for (int j = afile.length; i < j; i++) {
			arquivos.add(afile[i].toString());

		}
		return arquivos;
	}

	public static ArrayList<String> criarChaveImagens(ArrayList<String> arquivos, int inicio, int fim) {
		ArrayList<String> retornochave = new ArrayList<String>();
		for (String arquivo : arquivos) {
			retornochave.add(arquivo.substring(inicio, fim));
		}
		return retornochave;
	}

	public static void criarDiretorio(String caminho) {
		File diretorio = new File(caminho);
		if (!diretorio.exists()) {
			diretorio.mkdir();
		}
	}

	public static ArrayList<String> lerCsv(String arquivo) throws Exception {
		ArrayList<String> csvArray = null;
		String csvFile = arquivo;
		BufferedReader br = null;
		String line = "";
		String cvsSplitBy = ";";

		try {
			csvArray = new ArrayList<String>();
			br = new BufferedReader(new FileReader(csvFile));
			while ((line = br.readLine()) != null) {

				// use comma as separator
				String[] country = line.split(cvsSplitBy);
				csvArray.add(country[0]);
			}
			return csvArray;

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
		return csvArray;

	}

	public static void escritorArquivos(String arquivo, String conteudo) throws IOException {

		// Cria arquivo
		File file = new File(arquivo);

		// Prepara para escrever no arquivo
		FileWriter fw = new FileWriter(file.getAbsoluteFile());
		BufferedWriter bw = new BufferedWriter(fw);

		try {

			// Se o arquivo nao existir, ele gera
			if (!file.exists()) {
				file.createNewFile();
			}

			// Escreve e fecha arquivo
			bw.write(conteudo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		// fecha o arquivo
		bw.close();
	}

	public static ArrayList<String> leitorArquivos(String arquivo) throws IOException {
		ArrayList<String> dados = new ArrayList<String>();
		FileInputStream stream = new FileInputStream(arquivo);
		InputStreamReader reader = new InputStreamReader(stream);
		BufferedReader br = new BufferedReader(reader);
		String linha = br.readLine();
		try {
			while (linha != null) {
				dados.add(linha);
				linha = br.readLine();
			}
		} finally {
			reader.close();
			stream.close();
			br.close();
		}
		return dados;
	}

	public static void moverArquivo(ArrayList<String> info) throws Exception {
		/*
		 * As posições informadas faz referência ao seguinte odem: Diretório de Origem
		 * Arquivo que deseja Mover Diretório de Destino
		 */

		try {
			File arquivo = new File(info.get(0) + info.get(1));

			// Diretorio de destino
			File diretorioDestino = new File(info.get(2));

			// Move o arquivo para o novo diretorio
			arquivo.renameTo(new File(diretorioDestino, arquivo.getName()));

		} catch (Exception e) {
			throw new Exception("** Erro ao Mover os arquivos **");
		}

	}

	public static void apagarDiretorio(String file) {
		File folder = new File(file);
		if (folder.isDirectory()) {
			File[] sun = folder.listFiles();
			for (File toDelete : sun) {
				toDelete.delete();
			}
		}
		folder.deleteOnExit();
	}

	

}
