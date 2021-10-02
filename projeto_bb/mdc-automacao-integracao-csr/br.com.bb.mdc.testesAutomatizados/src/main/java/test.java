import br.com.bb.mdc.testesAutomatizadosEntidade.RegistrosCheque;
import br.com.bb.mdc.testesAutomatizadosService.RegistroCSR714;

public class test {

	public static void main(String[] args) throws Exception {
		String dataMovimentoArquivo = "20200120";
		RegistroCSR714 registro = new RegistroCSR714();
		String diretorio = "c:\\temp";
		String arquivo = "020191022610264756_F.txt";
		
		registro.gerarCRS714(dataMovimentoArquivo, diretorio);
		
		RegistrosCheque inf = new RegistrosCheque();
		//inf.gerarInformacoesCheque(diretorio, arquivo );
	}

}
