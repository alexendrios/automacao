package br.com.bb.ath.hbk.mobile.pages;

import org.apache.commons.lang3.StringUtils;

import br.com.bb.ath.ftabb.FTABBContext;
import br.com.bb.ath.ftabb.Pagina;
import br.com.bb.ath.ftabb.anotacoes.MapearElementoAndroid;
import br.com.bb.ath.ftabb.elementos.ElementoBotao;
import br.com.bb.ath.ftabb.elementos.ElementoInput;
import br.com.bb.ath.ftabb.elementos.ElementoTexto;
import br.com.bb.ath.ftabb.enums.AmbienteDeTeste;
import br.com.bb.ath.ftabb.exceptions.ElementoNaoLocalizadoException;
import br.com.bb.ath.ftabb.exceptions.FTABBRuntimeException;

public class PaginaConfiguracaoAmbiente extends Pagina {

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ic_settings_login")
	ElementoBotao btnConfiguracaoAmbiente;

	@MapearElementoAndroid(texto = "Ambiente")
	ElementoBotao btnAmbiente;

	@MapearElementoAndroid(texto = "URL Específica")
	ElementoBotao btnUrlEspecifica;

	@MapearElementoAndroid(resourceID = "android:id/edit")
	ElementoInput imputUrl;

	@MapearElementoAndroid(texto = "OK")
	ElementoBotao btnConfirmarUrl;

	@MapearElementoAndroid(texto = "__param__")
	ElementoBotao btnAmbienteSelecao;

	@MapearElementoAndroid(textoParcial = "não funciona sem o Google Play Services")
	ElementoTexto alertPlayServices;

	public void definirAmbiente(String ambiente) {

		if (StringUtils.isNoneBlank(ambiente)) {

			String url = "hbk.desenv.bb.com.br:8008";//"172.18.112.50"
			
			try {
				btnConfiguracaoAmbiente.clicar();
				btnAmbiente.clicar();
				System.out.println("Ambiente: " + ambiente);
				btnAmbienteSelecao.setParam(ambiente).clicar();
				if (ambiente.equals("URL Específica (HTTP)")) {
					btnUrlEspecifica.clicar();
					imputUrl.escrever(url);
					btnConfirmarUrl.clicar();
				}
				FTABBContext.getContext().getRunnerModule().getPainel().definirAmbiente(getAmbienteDeTeste(ambiente));
			} catch (ElementoNaoLocalizadoException e) {
				throw new FTABBRuntimeException("Erro ao definir ambiente!!");
			}
		}
	}

	public boolean avisoAtualizacaoPlayServiceAtivo() {
		return alertPlayServices.elementoExiste();
	}

	private AmbienteDeTeste getAmbienteDeTeste(String ambiente) {
		// verificar os demais ambientes
		switch (ambiente) {
		case "Produção":
			return AmbienteDeTeste.PRODUÇÃO;
		case "Piloto":
			return AmbienteDeTeste.PILOTO;
		case "Desenvolvimento (8007)":
		case "Desenvolvimento (8003)":
			return AmbienteDeTeste.DESENVOLVIMENTO;
		case "Homologação":
			return AmbienteDeTeste.HOMOLOGAÇÃO;
		case "URL Específica (HTTP)":
		case "URL Específica (HTTPS)":
			return AmbienteDeTeste.INDEFINIDO;
		default:
			return AmbienteDeTeste.INDEFINIDO;
		}
	}

}
