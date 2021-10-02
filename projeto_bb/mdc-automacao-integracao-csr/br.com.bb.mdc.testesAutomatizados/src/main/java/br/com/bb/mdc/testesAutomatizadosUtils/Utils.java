package br.com.bb.mdc.testesAutomatizadosUtils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import cucumber.api.Scenario;

public class Utils {

	private Utils() {

	}

	private static WebDriver driver;

	public static WebDriver getDriver() {
		if (driver == null) {
			ChromeOptions options = new ChromeOptions();
			options.addArguments("--headless");
			driver = new ChromeDriver(options);
			driver.manage().window().fullscreen();
		}
		return driver;
	}

	public static void killDriver() {
		if (driver != null) {
			driver.quit();
			driver = null;
		}
	}

	public static File gerarScreenShot(Scenario scenario) {
		final byte[] screenshot = ((TakesScreenshot) getDriver()).getScreenshotAs(OutputType.BYTES);
		scenario.embed(screenshot, "image/png");
		File imagem = ((TakesScreenshot) getDriver()).getScreenshotAs(OutputType.FILE);
		try {
			FileUtils.copyFile(imagem, (new File("./target/surefire-reports",
					scenario.getName() + " - " + scenario.getStatus() + ".png")));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return imagem;
	}

	public static void esperarPagina(int tempo) throws Exception {
		for (int i = 0; i < tempo; i++) {
			Thread.sleep(1000);
		}
	}

	public static void abrirDiretorio(String caminho) throws IOException {
		Runtime.getRuntime().exec("explorer " + caminho);
	}

	public static String moverArquivo(ArrayList<String> info) {
		/*
		 * As posições informadas faz referência ao seguinte odem: Diretório de Origem
		 * Arquivo que deseja Mover Diretório de Destino
		 */
		String status = null;
		File arquivo = new File(info.get(0) + info.get(1));

		if (!arquivo.exists()) {
			System.out.println("Arquivo não encontrado");
		} else {

			// Diretorio de destino
			File diretorioDestino = new File(info.get(2));

			// Move o arquivo para o novo diretorio
			boolean sucesso = arquivo.renameTo(new File(diretorioDestino, arquivo.getName()));
			if (sucesso) {
				System.out.println("Arquivo movido para '" + diretorioDestino.getAbsolutePath() + "'");
				status = diretorioDestino.getAbsolutePath();
			} else {
				System.out.println("Erro ao mover arquivo '" + arquivo.getAbsolutePath() + "' para '"
						+ diretorioDestino.getAbsolutePath() + "'");
				status = arquivo.getAbsolutePath();
			}
		}
		return status;
	}

	public static String verificarArquivo(String path, String arquivo) {
		/*
		 * Método responsável onde verifica se um arquivo existe no diretório informado
		 */

		File file = new File(path);
		File afile[] = file.listFiles();
		String status = null;

		int i = 0;
		for (int j = afile.length; i < j; i++) {
			File arquivos = afile[i];
			if (arquivo.equals(arquivos.getName())) {
				status = "Arquivo Existente no Diretório";
			}
		}
		return status;
	}

	public static ArrayList<String> AnalisandoArquivo(String path, String file) {
		/*
		 * Método responsável pela verificação análise do arquivo Abre o arquivo
		 * informado, lê suas linhas e injeta as informações em uma Lista
		 */

		ArrayList<String> registro = null;
		try {
			registro = new ArrayList<String>();
			BufferedReader br = new BufferedReader(new FileReader(path + "\\" + file));

			while (br.ready()) {
				String linha = br.readLine();
				registro.add(linha);
			}
			br.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return registro;
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

	// Métodos a serem Consumidos pelas Classes do Gerador CSR714

	public static String gerarNoves(int qtd) {
		String nove = "";
		for (int i = 0; i < qtd; i++) {
			nove += "9";
		}
		return nove;
	}

	public static String gerarZeros(int qtd) {
		String zero = "";
		for (int i = 0; i < qtd; i++) {
			zero += "0";
		}
		return zero;
	}

	public static String gerarBrancos(int qtd) {
		String espaco = "";
		for (int i = 0; i < qtd; i++) {
			espaco += " ";
		}
		return espaco;
	}

	public static String gerarSequencial(String tipoSequencial) {
		String sequencial;
		int qtdRegistrosEntrada = 0;
		tipoSequencial = tipoSequencial.toUpperCase();

		if (tipoSequencial.equals("FICHA LOTE")) {
			sequencial = new Integer(qtdRegistrosEntrada + 2).toString();
		} else if (tipoSequencial.equals("TRAILLER")) {
			sequencial = new Integer(qtdRegistrosEntrada + 3).toString();

		} else {
			sequencial = new Integer(qtdRegistrosEntrada + 1).toString();
		}

		int qtdZeros = 10 - sequencial.length();

		for (int i = 0; i < qtdZeros; i++) {
			sequencial = "0" + sequencial;
		}
		if (!sequencial.matches("\\d{10}")) {
			throw new RuntimeException("Erro na geração do sequencial do " + tipoSequencial);
		}

		return sequencial;
	}
	
	public static String completaZeros(int n, int tamanho) {
		String retorno = String.valueOf(n);
		for (int i = String.valueOf(n).length(); i < tamanho; i++) {
			retorno = "0" + retorno;
		}
		return retorno;
	}

}