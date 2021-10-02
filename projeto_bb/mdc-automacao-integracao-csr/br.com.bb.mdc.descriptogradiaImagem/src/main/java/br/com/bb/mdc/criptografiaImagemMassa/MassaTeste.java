package br.com.bb.mdc.criptografiaImagemMassa;

import java.util.ArrayList;
import br.com.bb.mdc.criptografiaImagemService.GerarMassaTeste;
import br.com.bb.mdc.criptografiaImagemService.InformacoesCheque;

public class MassaTeste {

	private static String path;
	private static String pathImagesEncrypted;
	private static String fileCSV;
	private static String pathNameNewDirectory;
	private static String pathNameNewDirectoryImagesDecryption;
	private static String fileNameMassTest;
	private static ArrayList<String> informationCreateMassTest;

	public static void main(String[] args) throws Exception {

		informationCreateMassTest = new ArrayList<String>();

		// setup criar coleção de Imagens

//		pathImagesEncrypted = "C:\\massa_cheque_tratar";
//		fileCSV = "C:\\massa_cheque_tratar\\Motivo 40 - Moeda inválida.csv";
//		pathNameNewDirectory = "C:\\massa_cheque_tratar_moedas_invalidas";
//		pathNameNewDirectoryImagesDecryption = "C:\\massa_cheque_tratados_moedas_invalidas";
//		fileNameMassTest = "moedas_invalidas";
//
//		informationCreateMassTest.add(pathImagesEncrypted);
//		informationCreateMassTest.add(fileCSV);
//		informationCreateMassTest.add(pathNameNewDirectory);
//		informationCreateMassTest.add(pathNameNewDirectoryImagesDecryption);
//		informationCreateMassTest.add(fileNameMassTest);
//
//		gerarMassaTeste(informationCreateMassTest);

		 pathImagesEncrypted = "C:\\massa_cheque_tratar\\020191022610264756_F.tif";
		 path = "C:\\temp";
		 fileNameMassTest = "020191022610264756_F";
		
		 informationCreateMassTest.add(pathImagesEncrypted);
		 informationCreateMassTest.add(path);
		 informationCreateMassTest.add(fileNameMassTest);
		 //InformacoesCheque.criarArquivoTexto("C:\\massa_cheque_tratar\\Motivo 39 - qualidade imagem.csv");
		 gerarMassaTesteUnicaImagem(informationCreateMassTest);

	}

	private static void gerarMassaTeste(ArrayList<String> infomacoes) throws Exception {

		/*
		 * ###### Posições para Gerar uma coleção de Imagens ######## 1 º Caminho do
		 * Arquivo onde estão as imagens a serem tratadas 2 º Arquivo CSV 3 º Caminho do
		 * Novo Diretório onde serão transferido as imagens criptografadas conforme o
		 * CSV 4 º Caminho do Novo diretório os as imagens serão criadas comforme o
		 * tratamento; essas imagens serão a base para criação da coleção da massa de
		 * teste 5 º Nome do arquivo para a massa de Teste que será criada no endereço
		 * C:/temp
		 */

		GerarMassaTeste.gerarMassaTesteVariasImagens(infomacoes);
	}

	private static void gerarMassaTesteUnicaImagem(ArrayList<String> infomacoes) throws Exception {

		GerarMassaTeste.gerarMassaTesteUnicaImagem(infomacoes);
	}

}
