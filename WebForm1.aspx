<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Formativa1_Corte2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />  
    <title>Formulario RUNT</title>
    <style type="text/css">
        .auto-style1 {
            width: 210px;
        }

        .auto-style2 {
            width: 210px;
            height: 36px;
        }

        .auto-style3 {
            height: 36px;
        }

        .auto-style4 {
            width: 225px;
        }

        .auto-style5 {
            width: 228px;
        }

        .auto-style6 {
            width: 125px;
        }
        .auto-style7 {
            width: 885px;
        }
        .auto-style8 {
            width: 135px;
        }
        .auto-style9 {
            width: 476px;
        }
        .auto-style10 {
            width: 682px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
      <a class="navbar-brand  text-light" href="#">RUNT</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link active text-light" href="WebForm1.aspx">Formulario</a>
          <a class="nav-item nav-link text-light" href="WebForm2.aspx">Gridviews</a>
        </div>
      </div>
    </nav>
    <div class="d-flex justify-content-center p-4">
        <div class="col-8 card p-4">
           <form id="form1" runat="server">
                <h3 class="mb-4">FORMULARIO DE SOLICITUD DE TRÁMITES DEL REGISTRO NACIONAL DE MAQUINARIA
                AGRÍCOLA, Y DE CONSTRUCCIÓN AUTOPROPULSADA</h3>
                <h4>2. Placa</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Letras:</td>
                        <td>
                            <asp:TextBox ID="txtPlacaLetras" runat="server" Width="450px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Numeros</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtPlacaNumeros" runat="server" Width="450px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <h4>3. Tramite Solicitado</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Seleccione el tramite:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>Registro</asp:ListItem>
                                <asp:ListItem>Traspaso</asp:ListItem>
                                <asp:ListItem>Traslado registro</asp:ListItem>
                                <asp:ListItem>Duplicado tarjeta registro</asp:ListItem>
                                <asp:ListItem>Cancelacion registro</asp:ListItem>
                                <asp:ListItem>Radicado Registro</asp:ListItem>
                                <asp:ListItem>Regrabar numero de identifiación</asp:ListItem>
                                <asp:ListItem>Cambio de placas</asp:ListItem>
                                <asp:ListItem>Cambio de registro por recuperación del vehiculo</asp:ListItem>
                                <asp:ListItem>Inscrip. Prenda</asp:ListItem>
                                <asp:ListItem>Levanta Prenda</asp:ListItem>
                                <asp:ListItem>Duplicado placa</asp:ListItem>
                                <asp:ListItem>Otros</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <h4>4. Clase de maquinaria</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style4">Seleccione la maquinaria:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>Agricola</asp:ListItem>
                                <asp:ListItem>Industrial</asp:ListItem>
                                <asp:ListItem>Construcción</asp:ListItem>
                                <asp:ListItem>Otro</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <h4>5. Marca</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Marca:</td>
                        <td>
                            <asp:TextBox ID="txtMarca" runat="server" Width="445px"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>6. Linea</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Linea del vehiculo:</td>
                        <td>
                            <asp:TextBox ID="txtLineaVehiculo" runat="server" Width="444px"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>7. Tipo</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Tipo de vehiculo:</td>
                        <td>
                            <asp:TextBox ID="txtTipoVehiculo" runat="server" Width="441px"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>8. Tipo de tracción</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Seleccione la tracción:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server">
                                <asp:ListItem>Llantas</asp:ListItem>
                                <asp:ListItem>Orugas</asp:ListItem>
                                <asp:ListItem>Cilindros</asp:ListItem>
                                <asp:ListItem>Mixto</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <h4>9. Colores</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Color del vehiculo:</td>
                        <td>
                            <asp:TextBox ID="txtColor" runat="server" Width="440px"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>10. Modelo</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Modelo del vehiculo:</td>
                        <td>
                            <asp:TextBox ID="txtModelo" runat="server" Width="444px"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>11. Peso bruto vehicular</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Peso del vehiculo (kg):</td>
                        <td>
                            <asp:TextBox ID="txtPesoVehiculo" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>12. Largo</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Largo del vehiculo(m):</td>
                        <td>
                            <asp:TextBox ID="txtLargoVehiculo" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>13. Ancho</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Ancho del vehiculo(m):</td>
                        <td>
                            <asp:TextBox ID="txtAnchoVehiculo" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>14. Alto</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Alto del vehiculo(m):</td>
                        <td>
                            <asp:TextBox ID="txtAltoVehiculo" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>15. Capacidad de carga</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Capacidad de carga del vehiculo:</td>
                        <td>
                            <asp:TextBox ID="txtCargaVehiculo" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>16. Cabina</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Seleccione el tipo de cabina:</td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="DropDownList5" runat="server">
                                <asp:ListItem>Cerrada</asp:ListItem>
                                <asp:ListItem>Parasol</asp:ListItem>
                                <asp:ListItem>Sin Cabina</asp:ListItem>
                                <asp:ListItem>Otros</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <h4>17. Identificación interna de la maquinaria</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1"># de motor:</td>
                        <td>
                            <asp:TextBox ID="txtIdMotor" runat="server" Width="282px"></asp:TextBox></td>
                        <td class="auto-style6">Regrabado</td>
                        <td class="auto-style8">
                            <asp:CheckBox ID="CheckBox1" Text="Sí" runat="server" /><asp:CheckBox ID="CheckBox2" Text="No" runat="server" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">No. de identificación:</td>
                        <td>
                            <asp:TextBox ID="txtIdId" runat="server" Width="282px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">No. de Ejes:</td>
                        <td>
                            <asp:TextBox ID="txtIdEjes" runat="server" Width="282px"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>18. Datos del propietario</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Primer apellido:</td>
                        <td>
                            <asp:TextBox ID="txtPropApellido1" runat="server" Width="282px"></asp:TextBox></td>

                            <td class="auto-style1">Segundo apellido:</td>
                        <td>
                            <asp:TextBox ID="txtPropApellido2" runat="server" Width="282px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Nombres:</td>
                        <td>
                            <asp:TextBox ID="txtPropNombre" runat="server" Width="282px"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td class="auto-style1">Tipo de documento:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList7" runat="server">
                                <asp:ListItem>Cedula de ciudadania</asp:ListItem>
                                <asp:ListItem>NIT</asp:ListItem>
                                <asp:ListItem>N.N.</asp:ListItem>
                                <asp:ListItem>Pasaporte</asp:ListItem>
                                <asp:ListItem>Cedula de Extranjeria</asp:ListItem>
                                <asp:ListItem>NUIP</asp:ListItem>
                                <asp:ListItem>C.Diplomatico</asp:ListItem>
                            </asp:DropDownList>
                        </td>

                            <td class="auto-style1">N. de Documento:</td>
                        <td>
                            <asp:TextBox ID="txtPropId" runat="server" Width="282px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Ciudad:</td>
                        <td>
                            <asp:TextBox ID="txtPropCiudad" runat="server" Width="282px"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td class="auto-style1">Dirección:</td>
                        <td>
                            <asp:TextBox ID="txtPropDireccion" runat="server" Width="282px"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td class="auto-style1">Telefono:</td>
                        <td>
                            <asp:TextBox ID="txtPropTelefono" runat="server" Width="282px"></asp:TextBox></td>

                    </tr>
                </table>
                <h4>19. Importación o remate</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Seleccione el tipo:</td>
                        <td class="auto-style5">
                            <asp:RadioButtonList class="form-check" ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1" >
                                <asp:ListItem  CssClass="form-check-input" Selected="True">Importación</asp:ListItem>
                                <asp:ListItem  CssClass="form-check-input">Remate</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:DropDownList ID="DropDownList6" class="form-select" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">No. Documento:</td>
                        <td class="auto-style5"><asp:TextBox ID="txtDocumentoImporte" runat="server" Width="282px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Fecha:</td>
                        <td class="auto-style5"><asp:TextBox ID="txtFechaImporte" TextMode="Date" runat="server" Width="282px"></asp:TextBox></td>
                    </tr>
                </table>
                <h4>20. Tipo de combustible</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Seleccionar combustible del vehiculo:</td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="DropDownList9" runat="server">
                                <asp:ListItem>Gasolina</asp:ListItem>
                                <asp:ListItem>Diesel</asp:ListItem>
                                <asp:ListItem>Electrico</asp:ListItem>
                                <asp:ListItem>Gas</asp:ListItem>
                                <asp:ListItem>Mixto</asp:ListItem>
                                <asp:ListItem>Otros</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <h4>21. Datos del comprador (Traspaso)</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Primer apellido:</td>
                        <td>
                            <asp:TextBox ID="txtCompApellido1" runat="server" Width="282px"></asp:TextBox></td>

                            <td class="auto-style1">Segundo apellido:</td>
                        <td>
                            <asp:TextBox ID="txtCompApellido2" runat="server" Width="282px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Nombres:</td>
                        <td>
                            <asp:TextBox ID="txtCompNombre" runat="server" Width="282px"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td class="auto-style1">Tipo de documento:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList8" runat="server">
                                <asp:ListItem>Cedula de ciudadania</asp:ListItem>
                                <asp:ListItem>NIT</asp:ListItem>
                                <asp:ListItem>N.N.</asp:ListItem>
                                <asp:ListItem>Pasaporte</asp:ListItem>
                                <asp:ListItem>Cedula de Extranjeria</asp:ListItem>
                                <asp:ListItem>NUIP</asp:ListItem>
                                <asp:ListItem>C.Diplomatico</asp:ListItem>
                            </asp:DropDownList>
                        </td>

                            <td class="auto-style1">N. de Documento:</td>
                        <td>
                            <asp:TextBox ID="txtCompId" runat="server" Width="282px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Ciudad:</td>
                        <td>
                            <asp:TextBox ID="txtCompCiudad" runat="server" Width="282px" ></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td class="auto-style1">Dirección:</td>
                        <td>
                            <asp:TextBox ID="txtCompDireccion" runat="server" Width="282px"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td class="auto-style1">Telefono:</td>
                        <td>
                            <asp:TextBox ID="txtCompTelefono" runat="server" Width="282px"></asp:TextBox></td>

                    </tr>
                </table>
                <h4>22. Datos de alerta</h4>
                <table class="mb-4">
                    <tr>
                        <td class="auto-style1">Seleccionar si el vehiculo aplica:</td>
                        <td class="auto-style5">
                            <asp:CheckBoxList ID="CheckBoxList2" runat="server" Width="346px">
                                <asp:ListItem>Ninguno</asp:ListItem>
                                <asp:ListItem>Hurto</asp:ListItem>
                                <asp:ListItem>Lim. Propiedad</asp:ListItem>
                                <asp:ListItem>Embargo</asp:ListItem>
                                <asp:ListItem>Otro</asp:ListItem>
                                <asp:ListItem>A favor de</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                </table>
                <h4>23. Observaciones</h4>
                <table class="auto-style7 mb-4">
                    <tr>
                        <td class="auto-style1">Observaciones y comentarios:</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="txtObservacion" runat="server" Width="50%" Height="106px"></asp:TextBox></td>
                    </tr>
                </table>
                <div class="d-flex justify-content-center"><asp:Button ID="Button1" runat="server" Text="Cargar datos" class="btn btn-primary" OnClick="Button1_Click"/></div>
            </form>
        </div>
    </div>
</body>
</html>
