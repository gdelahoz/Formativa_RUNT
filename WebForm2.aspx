<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Formativa1_Corte2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />  
    <title>Gridviews</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
      <a class="navbar-brand  text-light" href="#">RUNT</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link  text-light" href="WebForm1.aspx">Formulario</a>
          <a class="nav-item nav-link active text-light" href="WebForm2.aspx">Gridviews</a>
        </div>
      </div>
    </nav>
    <form id="form1" runat="server">
        <div class="py-4">
            <h3 class="font-weight-bold text-center mb-4">Datos obtenidos</h3>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" class="mb-4" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="letras" HeaderText="letras" SortExpression="letras" />
                    <asp:BoundField DataField="numeros" HeaderText="numeros" SortExpression="numeros" />
                    <asp:BoundField DataField="tramite" HeaderText="tramite" SortExpression="tramite" />
                    <asp:BoundField DataField="maquinaria" HeaderText="maquinaria" SortExpression="maquinaria" />
                    <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                    <asp:BoundField DataField="linea" HeaderText="linea" SortExpression="linea" />
                    <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                    <asp:BoundField DataField="traccion" HeaderText="traccion" SortExpression="traccion" />
                    <asp:BoundField DataField="colores" HeaderText="colores" SortExpression="colores" />
                    <asp:BoundField DataField="modelo" HeaderText="modelo" SortExpression="modelo" />
                    <asp:BoundField DataField="peso" HeaderText="peso" SortExpression="peso" />
                    <asp:BoundField DataField="largo" HeaderText="largo" SortExpression="largo" />
                    <asp:BoundField DataField="ancho" HeaderText="ancho" SortExpression="ancho" />
                    <asp:BoundField DataField="alto" HeaderText="alto" SortExpression="alto" />
                    <asp:BoundField DataField="capacidadCarga" HeaderText="capacidadCarga" SortExpression="capacidadCarga" />
                    <asp:BoundField DataField="cabina" HeaderText="cabina" SortExpression="cabina" />
                    <asp:BoundField DataField="noMotor" HeaderText="noMotor" SortExpression="noMotor" />
                    <asp:BoundField DataField="regrabado" HeaderText="regrabado" SortExpression="regrabado" />
                    <asp:BoundField DataField="noIdentificacion" HeaderText="noIdentificacion" SortExpression="noIdentificacion" />
                    <asp:BoundField DataField="noEjes" HeaderText="noEjes" SortExpression="noEjes" />
                    <asp:BoundField DataField="importRemate" HeaderText="importRemate" SortExpression="importRemate" />
                    <asp:BoundField DataField="noDocumento" HeaderText="noDocumento" SortExpression="noDocumento" />
                    <asp:BoundField DataField="fechaImportRemate" HeaderText="fechaImportRemate" SortExpression="fechaImportRemate" />
                    <asp:BoundField DataField="tipoCombustible" HeaderText="tipoCombustible" SortExpression="tipoCombustible" />
                    <asp:BoundField DataField="datosAlerta" HeaderText="datosAlerta" SortExpression="datosAlerta" />
                    <asp:BoundField DataField="observacion" HeaderText="observacion" SortExpression="observacion" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Solicitud] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Solicitud] ([letras], [numeros], [tramite], [maquinaria], [marca], [linea], [tipo], [traccion], [colores], [modelo], [peso], [largo], [ancho], [alto], [capacidadCarga], [cabina], [noMotor], [regrabado], [noIdentificacion], [noEjes], [importRemate], [noDocumento], [fechaImportRemate], [tipoCombustible], [datosAlerta], [observacion]) VALUES (@letras, @numeros, @tramite, @maquinaria, @marca, @linea, @tipo, @traccion, @colores, @modelo, @peso, @largo, @ancho, @alto, @capacidadCarga, @cabina, @noMotor, @regrabado, @noIdentificacion, @noEjes, @importRemate, @noDocumento, @fechaImportRemate, @tipoCombustible, @datosAlerta, @observacion)" SelectCommand="SELECT * FROM [Solicitud]" UpdateCommand="UPDATE [Solicitud] SET [letras] = @letras, [numeros] = @numeros, [tramite] = @tramite, [maquinaria] = @maquinaria, [marca] = @marca, [linea] = @linea, [tipo] = @tipo, [traccion] = @traccion, [colores] = @colores, [modelo] = @modelo, [peso] = @peso, [largo] = @largo, [ancho] = @ancho, [alto] = @alto, [capacidadCarga] = @capacidadCarga, [cabina] = @cabina, [noMotor] = @noMotor, [regrabado] = @regrabado, [noIdentificacion] = @noIdentificacion, [noEjes] = @noEjes, [importRemate] = @importRemate, [noDocumento] = @noDocumento, [fechaImportRemate] = @fechaImportRemate, [tipoCombustible] = @tipoCombustible, [datosAlerta] = @datosAlerta, [observacion] = @observacion WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="letras" Type="String" />
                    <asp:Parameter Name="numeros" Type="String" />
                    <asp:Parameter Name="tramite" Type="String" />
                    <asp:Parameter Name="maquinaria" Type="String" />
                    <asp:Parameter Name="marca" Type="String" />
                    <asp:Parameter Name="linea" Type="String" />
                    <asp:Parameter Name="tipo" Type="String" />
                    <asp:Parameter Name="traccion" Type="String" />
                    <asp:Parameter Name="colores" Type="String" />
                    <asp:Parameter Name="modelo" Type="String" />
                    <asp:Parameter Name="peso" Type="String" />
                    <asp:Parameter Name="largo" Type="String" />
                    <asp:Parameter Name="ancho" Type="String" />
                    <asp:Parameter Name="alto" Type="String" />
                    <asp:Parameter Name="capacidadCarga" Type="String" />
                    <asp:Parameter Name="cabina" Type="String" />
                    <asp:Parameter Name="noMotor" Type="String" />
                    <asp:Parameter Name="regrabado" Type="String" />
                    <asp:Parameter Name="noIdentificacion" Type="String" />
                    <asp:Parameter Name="noEjes" Type="String" />
                    <asp:Parameter Name="importRemate" Type="String" />
                    <asp:Parameter Name="noDocumento" Type="String" />
                    <asp:Parameter Name="fechaImportRemate" Type="String" />
                    <asp:Parameter Name="tipoCombustible" Type="String" />
                    <asp:Parameter Name="datosAlerta" Type="String" />
                    <asp:Parameter Name="observacion" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="letras" Type="String" />
                    <asp:Parameter Name="numeros" Type="String" />
                    <asp:Parameter Name="tramite" Type="String" />
                    <asp:Parameter Name="maquinaria" Type="String" />
                    <asp:Parameter Name="marca" Type="String" />
                    <asp:Parameter Name="linea" Type="String" />
                    <asp:Parameter Name="tipo" Type="String" />
                    <asp:Parameter Name="traccion" Type="String" />
                    <asp:Parameter Name="colores" Type="String" />
                    <asp:Parameter Name="modelo" Type="String" />
                    <asp:Parameter Name="peso" Type="String" />
                    <asp:Parameter Name="largo" Type="String" />
                    <asp:Parameter Name="ancho" Type="String" />
                    <asp:Parameter Name="alto" Type="String" />
                    <asp:Parameter Name="capacidadCarga" Type="String" />
                    <asp:Parameter Name="cabina" Type="String" />
                    <asp:Parameter Name="noMotor" Type="String" />
                    <asp:Parameter Name="regrabado" Type="String" />
                    <asp:Parameter Name="noIdentificacion" Type="String" />
                    <asp:Parameter Name="noEjes" Type="String" />
                    <asp:Parameter Name="importRemate" Type="String" />
                    <asp:Parameter Name="noDocumento" Type="String" />
                    <asp:Parameter Name="fechaImportRemate" Type="String" />
                    <asp:Parameter Name="tipoCombustible" Type="String" />
                    <asp:Parameter Name="datosAlerta" Type="String" />
                    <asp:Parameter Name="observacion" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" class="mb-4"  AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="primerApellido" HeaderText="primerApellido" SortExpression="primerApellido" />
                    <asp:BoundField DataField="segundoApellido" HeaderText="segundoApellido" SortExpression="segundoApellido" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="tipoDocumento" HeaderText="tipoDocumento" SortExpression="tipoDocumento" />
                    <asp:BoundField DataField="noDocumento" HeaderText="noDocumento" SortExpression="noDocumento" />
                    <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                    <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                    <asp:BoundField DataField="solicitudId" HeaderText="solicitudId" SortExpression="solicitudId" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Propietario] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Propietario] ([primerApellido], [segundoApellido], [nombre], [tipoDocumento], [noDocumento], [ciudad], [direccion], [telefono], [solicitudId]) VALUES (@primerApellido, @segundoApellido, @nombre, @tipoDocumento, @noDocumento, @ciudad, @direccion, @telefono, @solicitudId)" SelectCommand="SELECT * FROM [Propietario]" UpdateCommand="UPDATE [Propietario] SET [primerApellido] = @primerApellido, [segundoApellido] = @segundoApellido, [nombre] = @nombre, [tipoDocumento] = @tipoDocumento, [noDocumento] = @noDocumento, [ciudad] = @ciudad, [direccion] = @direccion, [telefono] = @telefono, [solicitudId] = @solicitudId WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="primerApellido" Type="String" />
                    <asp:Parameter Name="segundoApellido" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="tipoDocumento" Type="String" />
                    <asp:Parameter Name="noDocumento" Type="String" />
                    <asp:Parameter Name="ciudad" Type="String" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="solicitudId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="primerApellido" Type="String" />
                    <asp:Parameter Name="segundoApellido" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="tipoDocumento" Type="String" />
                    <asp:Parameter Name="noDocumento" Type="String" />
                    <asp:Parameter Name="ciudad" Type="String" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="solicitudId" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" class="mb-4"  AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="primerApellido" HeaderText="primerApellido" SortExpression="primerApellido" />
                <asp:BoundField DataField="segundoApellido" HeaderText="segundoApellido" SortExpression="segundoApellido" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="tipoDocumento" HeaderText="tipoDocumento" SortExpression="tipoDocumento" />
                <asp:BoundField DataField="noDocumento" HeaderText="noDocumento" SortExpression="noDocumento" />
                <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                <asp:BoundField DataField="solicitudId" HeaderText="solicitudId" SortExpression="solicitudId" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Comprador] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Comprador] ([primerApellido], [segundoApellido], [nombre], [tipoDocumento], [noDocumento], [ciudad], [direccion], [telefono], [solicitudId]) VALUES (@primerApellido, @segundoApellido, @nombre, @tipoDocumento, @noDocumento, @ciudad, @direccion, @telefono, @solicitudId)" SelectCommand="SELECT * FROM [Comprador]" UpdateCommand="UPDATE [Comprador] SET [primerApellido] = @primerApellido, [segundoApellido] = @segundoApellido, [nombre] = @nombre, [tipoDocumento] = @tipoDocumento, [noDocumento] = @noDocumento, [ciudad] = @ciudad, [direccion] = @direccion, [telefono] = @telefono, [solicitudId] = @solicitudId WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="primerApellido" Type="String" />
                <asp:Parameter Name="segundoApellido" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="tipoDocumento" Type="String" />
                <asp:Parameter Name="noDocumento" Type="String" />
                <asp:Parameter Name="ciudad" Type="String" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="telefono" Type="String" />
                <asp:Parameter Name="solicitudId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="primerApellido" Type="String" />
                <asp:Parameter Name="segundoApellido" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="tipoDocumento" Type="String" />
                <asp:Parameter Name="noDocumento" Type="String" />
                <asp:Parameter Name="ciudad" Type="String" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="telefono" Type="String" />
                <asp:Parameter Name="solicitudId" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
