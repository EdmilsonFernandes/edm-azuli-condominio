﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="enviaMensagemMorador.aspx.cs" Inherits="Azuli.Web.Portal.enviaMensagemMorador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style1
    {
        width: 618px;
    }
    .style2
    {
        width: 621px;
    }
    .style3
    {
        width: 662px;
    }
    .style4
    {
        width: 631px;
    }
    .style5
    {
        width: 634px;
    }
    .style6
    {
        width: 636px;
    }
    .style7
    {
        width: 647px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  

   
    
 
   <fieldset >
   <legend class="AlternatingRowStyle">Enviar mensagem para Morador:</legend>
   <br />
  <div id="dvMsg"  runat="server" class="accountInfo" dir="ltr" 
           style="position: static; z-index: auto; top: -1110px;"> 
  


   
  
      <center>
          <table style="border: thin solid #C0C0C0; height: 306px; width: 838px;" 
          class="HeaderStyle">
            <tr>
                <td class="GridView">
                    <table class="style1" border='0'>
                        <tr>
                            <td class="style7">
                                <asp:Label ID="lblPara" runat="server" style="font-weight: 700" 
                                    Text="Para:"></asp:Label>
                            </td>
                            <td class="style7" align="left">
                                <asp:Label ID="lblBloco" runat="server" CssClass="style5" Text="Bloco:"></asp:Label>
&nbsp;<asp:DropDownList ID="drpBloco" runat="server" DataSourceID="SqlDataSourceBloco" 
                                    DataTextField="BLOCO" DataValueField="BLOCO" Height="25px" 
                                    CssClass="AlternatingRowStyle" Width="108px"  AppendDataBoundItems="True" 
                                    AutoPostBack="True" onselectedindexchanged="drpBloco_SelectedIndexChanged">
                                      <asp:ListItem Value="-1">Selecione ..</asp:ListItem>
                                </asp:DropDownList>
&nbsp;-
                                <asp:Label ID="lblAp" runat="server" CssClass="style6" style="font-weight: 700" 
                                    Text="Apartamento:"></asp:Label>
&nbsp;<asp:DropDownList ID="drpMsg" runat="server" DataSourceID="SqlDataSourceAP" 
                                    DataTextField="APARTAMENTO" DataValueField="APARTAMENTO" Height="25px" 
                                    CssClass="AlternatingRowStyle" Width="103px"  AppendDataBoundItems="True" 
                                    AutoPostBack="True" onselectedindexchanged="drpMsg_SelectedIndexChanged">
                                      <asp:ListItem Value="-1">Selecione ..</asp:ListItem>
                                </asp:DropDownList>
                            &nbsp;&nbsp;
                                <asp:Label ID="lblMorador" runat="server"></asp:Label>
                            </td>
                            <td class="style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:Label ID="lblAssunto" runat="server" Font-Bold="True" Text="Assunto:"></asp:Label>
                            </td>
                            <td class="style3">
                                <asp:TextBox ID="txtAssunto" runat="server" Height="16px" Width="593px"></asp:TextBox>
                            </td>
                            <td class="style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:Label ID="lblMensagem" runat="server" Font-Bold="True" 
                                    Text="Mensagem"></asp:Label>
                            </td><br />
                            <td class="style3">
                                 <asp:TextBox ID="txtDescription" runat="server" Height="112px" TextMode="MultiLine" 
                                     Width="578px"></asp:TextBox>
                            </td>
                            <td class="style4">
                                 <asp:RequiredFieldValidator ID="rfvDescription" runat="server" 
                                     ControlToValidate="txtDescription" ErrorMessage="Favor descrever o problema!" 
                                     Font-Bold="True" ForeColor="Red" ValidationGroup="validaDescricao"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                        </table>
                   
                    <br />
                                <asp:SqlDataSource ID="SqlDataSourceAP" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:azulli %>" 
                                    SelectCommand="LISTA_APARTAMENTO" SelectCommandType="StoredProcedure">
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSourceBloco" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:azulli %>" SelectCommand="LISTA_BLOCO" 
                                    SelectCommandType="StoredProcedure"></asp:SqlDataSource>
               <center>     
                   <asp:Button ID="btnMensagem" runat="server" CssClass="botao" Text="Enviar mensagem" 
                        Width="150px"  
                        ValidationGroup="validaDescricao" onclick="btnMensagem_Click" 
                       Height="17px" />
&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Button ID="btnLimpar" runat="server" CssClass="botao" 
                        Text="Limpar Campos" Height="19px" Width="121px" /></center>
                </td>
            </tr>
        </table>
      <br />
      <br />
      <br />
     </center><br />
      <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label> 
    </div></fieldset>

      <center> </center>
</asp:Content>