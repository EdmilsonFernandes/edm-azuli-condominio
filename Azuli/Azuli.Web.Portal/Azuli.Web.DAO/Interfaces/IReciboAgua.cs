﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Azuli.Web.Model;

namespace Azuli.Web.DAO.Interfaces
{
    public interface IReciboAgua
    {

        listaSegundaViaAgua buscaTodosRecibos(ReciboAgua oReciboAguaModel);
        listaSegundaViaAgua buscaTodosRecibosByYearAndMonth(int ano, int mes);
        listaSegundaViaAgua buscaTodosRecibosByBlocoAndApto(ReciboAgua oReciboModel);
        void importIntegracaoWeb(ReciboAgua oReciboModel);
        listaSegundaViaAgua validaImportacao(ReciboAgua oReciboModel);
        listaSegundaViaAgua graficosConsumoAgua(int yearBase);
        listaSegundaViaAgua graficoExcedentePorApartamento(int yearBase);
        listaSegundaViaAgua graficoConsumoPorBloco(int yearBase);
        listaSegundaViaAgua graficoQuantidadeApAnormal(int yearBase);
        listaSegundaViaAgua graficosConsumoAguaIndividual(int yearBase, int bloco, int apto);
             

        
    }
}
