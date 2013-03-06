﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAzulli.aspx.cs" Inherits="Azuli.Web.Portal.Account.LoginAzulli" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head id="Head1" runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/ScriptAzuli.js" type="text/javascript"></script>
 
</head>
<body>
    <form id="Form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                      Sistema de Gerenciamento de Condominio -  Spazio azuli 
                </h1>
            </div>

              </div>
        <div class="main">
        <center> 
        <h2>
            &nbsp;</h2>
            <h2>
        Tela de Acesso
    </h2>
            <p>
                &nbsp;</p>
            </center>
    <center>
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup" Height="43px" 
            Width="427px"/>
            <div class="accountInfo">
                <fieldset class="login">
                    <legend>Entre com seu Bloco/AP e Senha por favor:</legend>
                    <table id="tbPassword" runat="server">
                    <tr>
                    <td>
                    <p>
                        <asp:Label ID="UserNameLabel" runat="server" Font-Bold="True">Bloco: </asp:Label>
                        <asp:DropDownList ID="drpBloco" runat="server" Height="19px" Width="35px">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                             <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList>
                        
                        <asp:RequiredFieldValidator ID="requiredBloco" runat="server" ControlToValidate="drpBloco" 
                             CssClass="failureNotification" ErrorMessage="Favor Digite seu Bloco!" ToolTip="Favor Digite seu Bloco!" 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                        
                    </p>
                    </td>
                    <td>
                    <p>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True">AP: </asp:Label>
                        <asp:TextBox ID="txtAP" runat="server" onKeyPress="return Decimal(this,event);"  CssClass="textEntry"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="requiredAP" runat="server" ControlToValidate="txtAP" 
                             CssClass="failureNotification" 
                            ErrorMessage="Favor informe o número do Apartamento" ToolTip="Favor informe o número do Apartamento" 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                        
                    </p>
                    </td>
                    </tr>
                      </table>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" 
                            Font-Bold="True" Height="24px">Password:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="Favor digite sua senha!" ToolTip="Favor digite sua senha!" 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Entrar" 
                        ValidationGroup="LoginUserValidationGroup" CssClass="botao" 
                            onclick="LoginButton_Click" Width="65px"/>
                    </p>
                    
                    <p>
                        &nbsp;</p>
                    <asp:LinkButton ID="lnkBtnTeste" runat="server" onclick="lnkBtnTeste_Click" >Solicite aqui seu Acesso para teste!</asp:LinkButton>
                <br /><br />
                </fieldset>
              

                    
            </div>
              <div id="dvDadosMorador" runat="server">
    
    
      <center>  <table style="border: thin solid #C0C0C0; height: auto; width: auto;">
            <tr>
                <td class="style11" align="center" style="margin-left: 40px">
                    <table class="style1" border='0'>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="lblProprietario" runat="server" Font-Bold="True" Text="Nome:"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtNome" ErrorMessage="*" Font-Bold="True" ForeColor="Red" 
                                    ValidationGroup="solicitaAcesso"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Apartamento: "></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtSolicitaAP" runat="server"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtSolicitaAP" ErrorMessage="*" Font-Bold="True" 
                                    ForeColor="Red" ValidationGroup="solicitaAcesso"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="lblBloco" runat="server" Font-Bold="True" Text="Bloco:"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtSolicitaBloco" runat="server"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtSolicitaBloco" ErrorMessage="*" Font-Bold="True" 
                                    ForeColor="Red" ValidationGroup="solicitaAcesso"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                            <tr>
                            <td class="style6">
                                  <asp:Label ID="lblEmail" runat="server" Font-Bold="True">E-mail</asp:Label></td>
                            <td class="style6">
                                  <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                </td>
                            <td class="style9">
                              
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="*" Font-Bold="True" ForeColor="Red" 
                                    ValidationGroup="solicitaAcesso"></asp:RequiredFieldValidator>
                              
                            </td>
                        </tr>
                        </table>
                    <br />
                    <br />
                    <asp:Button ID="btnOkSolicita" runat="server" CssClass="botao" Text="Ok" 
                        Width="63px" onclick="btnOkPesquisa_Click" 
                        ValidationGroup="solicitaAcesso" />
&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Button ID="btnCancel0" runat="server" CssClass="botao" 
                        Text="Cancelar" onclick="btnCancel0_Click1"  />
                </td>
            </tr>
        </table></center>
                 
    </div>
     <asp:Label ID="lblMsg" runat="server"></asp:Label>
                  <br />
        </LayoutTemplate>
   </center>
        </div>
        <div class="clear">
        </div>
    </div>
    <div class="footer">
        
    </div>
    </form>
</body>
</html>
