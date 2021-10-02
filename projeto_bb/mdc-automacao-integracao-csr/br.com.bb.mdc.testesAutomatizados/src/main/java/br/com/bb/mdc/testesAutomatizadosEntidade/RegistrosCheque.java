package br.com.bb.mdc.testesAutomatizadosEntidade;

import java.util.ArrayList;

import br.com.bb.mdc.testesAutomatizadosUtils.Utils;

public class RegistrosCheque {

	private InformacoesCheque info = new InformacoesCheque();
	private ArrayList<String> dados;
	private int sequencialRegistro;

	public int getSequencialRegistro() {
		return sequencialRegistro;
	}

	public void setSequencialRegistro(int sequencialRegistro) {
		this.sequencialRegistro = sequencialRegistro;
	}

	private void registros(String path, String file) {
		dados = new ArrayList<String>();
		dados = Utils.AnalisandoArquivo(path, file);
		String[] infoDoc = dados.get(0).split(" ");
		String[] tratamento = infoDoc[5].split(",");
		String valorDocumento = tratamento[0] + tratamento[1];
		

		info.setNumeroIdentificadorCheque(infoDoc[0]);
		info.setDataMovimentoTroca(infoDoc[1]);
		info.setCodigoAgenciaCheque(infoDoc[2]);
		info.setNumeroContaCheque(infoDoc[3]);
		info.setNumeroCheque(infoDoc[4]);
		info.setValorDocumento(valorDocumento);

		info.setDigitoVerificadorDV2(Utils.completaZeros(0, 1));
		info.setDigitoVerificadorDV1(Utils.completaZeros(0, 1));
		info.setDigitoVerificadorDV3(Utils.completaZeros(0, 1));
		info.setUfAcolhimento(Utils.gerarBrancos(2));
		info.setNumeroTipicacaoCheque(Utils.gerarZeros(1));
		info.setCodBancoAcolhedor(Utils.gerarZeros(3));
		info.setNumeroAgenciaApresentante(Utils.gerarZeros(4));
		info.setNumeroAgenciaDeposito(Utils.gerarZeros(4));
		info.setNumeroContaDeposito(Utils.gerarZeros(12));
		info.setInfoControleRepresentante(Utils.completaZeros(0, 6));
		info.setNumeroTD(Utils.completaZeros(0, 3));

	}

	public String gerarInformacoesCheque(String path, String file) {
		registros(path, file);
		String registro = "";

		registro = info.getCOD_COMP() + info.getCOD_BANCO_CHEQ() + info.getCodigoAgenciaCheque()
				+ info.getDigitoVerificadorDV2() + info.getNumeroContaCheque() + info.getDigitoVerificadorDV1()
				+ info.getNumeroCheque() + info.getDigitoVerificadorDV3() + info.getUfAcolhimento()
				+ info.getValorDocumento() + info.getNumeroTipicacaoCheque() + Utils.gerarBrancos(4)
				+ info.getCodBancoAcolhedor() + info.getNumeroAgenciaApresentante() + info.getNumeroAgenciaDeposito()
				+ info.getNumeroContaDeposito() + info.getCOD_COMP() + info.getDataMovimentoTroca()
				+ info.getNUMERO_LOTE() + Utils.completaZeros(getSequencialRegistro(), 3)
				+ info.getInfoControleRepresentante() + info.getNumeroIdentificadorCheque() + Utils.gerarBrancos(18)
				+ info.getCOD_COMP() + info.getNUMERO_VERSAO_ARQUIVO() + info.getNumeroTD()
				+ Utils.gerarSequencial("registro") + Utils.gerarBrancos(40);
		
	
		return registro;
	}
}
