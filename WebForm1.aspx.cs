using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formativa1_Corte2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private SqlConnection con;
        private SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            string[] opciones = { "Manif. o Acta", "Dec de Import." };
            DropDownList6.DataSource = opciones;
            DropDownList6.DataBind();
        }

        protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string[] opciones1 = { "Manif. o Acta", "Dec de Import." };
            string[] opciones2 = { "Acta", "Entidad", "Lugar (Ciudad)", "Codigo" };
            switch (RadioButtonList1.SelectedIndex)
            {
                case 0:
                    // Importacion 
                    DropDownList6.DataSource = opciones1;
                    DropDownList6.DataBind();
                    break;
                case 1:
                    // Remate
                    DropDownList6.DataSource = opciones2;
                    DropDownList6.DataBind();
                    break;
            }
        }

        public void Conectar()
        {
            //con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Runt.mdf;Integrated Security=True");
            con.Open();
        }

        public void abrirConexion()
        {
            con.Open();
        }

        public void Desconectar()
        {
            con.Close();
            con = null;
            cmd = null;
        }

        public void CrearComando(string consulta)
        {
            cmd = new SqlCommand(consulta, con);
        }

        public void AsignarParametro(string param, SqlDbType tipo, object val)
        {
            cmd.Parameters.Add(param, tipo).Value = val;
        }

        public int EjecutarComando()
        {
            int id = Convert.ToInt32(cmd.ExecuteScalar());

            if (con.State == System.Data.ConnectionState.Open)
                Desconectar();

            return id;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nombre, ciudad, letras, numeros, tramite, maquinaria, marca, linea, tipo, traccion, colores,
                modelo, peso, largo, ancho, alto, capacidadCarga, cabina, noMotor, regrabado, noIdentificacion, noEjes, importRemate,
                noDocumento, fechaImportRemate, tipoCombustible, datosAlerta, observaciones, primerApellido, segundoApellido,
                tipoDocumento, direccion, telefono;

            letras = txtPlacaLetras.Text;
            numeros = txtPlacaNumeros.Text;
            tramite = DropDownList2.SelectedValue;
            maquinaria = DropDownList3.SelectedValue;
            marca = txtMarca.Text;
            linea = txtLineaVehiculo.Text;
            tipo = txtTipoVehiculo.Text;
            traccion = DropDownList4.SelectedValue;
            colores = txtColor.Text;
            modelo = txtModelo.Text;
            peso = txtPesoVehiculo.Text;
            largo = txtLargoVehiculo.Text;
            ancho = txtAnchoVehiculo.Text;
            alto = txtAltoVehiculo.Text;
            capacidadCarga = txtCargaVehiculo.Text;
            cabina = DropDownList5.SelectedValue;
            noMotor = txtIdMotor.Text;
            regrabado = CheckBox1.Checked ? "Si" : CheckBox2.Checked ? "No" : null;
            noIdentificacion = txtIdId.Text;
            noEjes = txtIdEjes.Text;
            importRemate = DropDownList6.SelectedValue;
            noDocumento = txtDocumentoImporte.Text;
            fechaImportRemate = txtFechaImporte.Text;
            tipoCombustible = DropDownList9.SelectedValue;
            datosAlerta = CheckBoxList2.SelectedValue;
            observaciones = txtObservacion.Text;

            Conectar();
            CrearComando("INSERT INTO Solicitud" +
                "(letras, numeros, tramite, maquinaria, marca, linea, tipo, " +
                "traccion, colores, modelo, peso, largo, ancho, alto, capacidadCarga, cabina, noMotor, " +
                "regrabado, noIdentificacion, noEjes, importRemate, noDocumento, fechaImportRemate, " +
                "tipoCombustible, datosAlerta, observacion) " +
                "VALUES" +
                "(@letras, @numeros, @tramite, @maquinaria, @marca, @linea, @tipo, " +
                "@traccion, @colores, @modelo, @peso, @largo, @ancho, @alto, @capacidadCarga, @cabina, @noMotor, " +
                "@regrabado, @noIdentificacion, @noEjes, @importRemate, @noDocumento, @fechaImportRemate, " +
                "@tipoCombustible, @datosAlerta, @observacion);SELECT SCOPE_IDENTITY();");

            AsignarParametro("@letras", SqlDbType.VarChar, letras);
            AsignarParametro("@numeros", SqlDbType.VarChar, numeros);
            AsignarParametro("@tramite", SqlDbType.VarChar, tramite);
            AsignarParametro("@maquinaria", SqlDbType.VarChar, maquinaria);
            AsignarParametro("@marca", SqlDbType.VarChar, marca);
            AsignarParametro("@linea", SqlDbType.VarChar, linea);
            AsignarParametro("@tipo", SqlDbType.VarChar, tipo);
            AsignarParametro("@traccion", SqlDbType.VarChar, traccion);
            AsignarParametro("@colores", SqlDbType.VarChar, colores);
            AsignarParametro("@modelo", SqlDbType.VarChar, modelo);
            AsignarParametro("@peso", SqlDbType.VarChar, peso);
            AsignarParametro("@largo", SqlDbType.VarChar, largo);
            AsignarParametro("@ancho", SqlDbType.VarChar, ancho);
            AsignarParametro("@alto", SqlDbType.VarChar, alto);
            AsignarParametro("@capacidadCarga", SqlDbType.VarChar, capacidadCarga);
            AsignarParametro("@cabina", SqlDbType.VarChar, cabina);
            AsignarParametro("@noMotor", SqlDbType.VarChar, noMotor);
            AsignarParametro("@regrabado", SqlDbType.VarChar, regrabado);
            AsignarParametro("@noIdentificacion", SqlDbType.VarChar, noIdentificacion);
            AsignarParametro("@noEjes", SqlDbType.VarChar, noEjes);
            AsignarParametro("@importRemate", SqlDbType.VarChar, importRemate);
            AsignarParametro("@noDocumento", SqlDbType.VarChar, noDocumento);
            AsignarParametro("@fechaImportRemate", SqlDbType.VarChar, fechaImportRemate);
            AsignarParametro("@tipoCombustible", SqlDbType.VarChar, tipoCombustible);
            AsignarParametro("@datosAlerta", SqlDbType.VarChar, datosAlerta);
            AsignarParametro("@observacion", SqlDbType.VarChar, observaciones);

            int solicitudId = EjecutarComando();

            //Propietario
            primerApellido = txtPropApellido1.Text;
            segundoApellido = txtPropApellido2.Text;
            nombre = txtPropNombre.Text;
            tipoDocumento = DropDownList7.SelectedValue;
            noDocumento = txtPropId.Text;
            direccion = txtPropDireccion.Text;
            ciudad = txtPropCiudad.Text;
            telefono = txtPropTelefono.Text;

            Conectar();
            CrearComando("INSERT INTO Propietario" +
                "(solicitudId, primerApellido, segundoApellido, nombre, " +
                "tipoDocumento, noDocumento, direccion, ciudad, telefono)" +
                "VALUES" +
                "(@solicitudId, @primerApellido, @segundoApellido, @nombre, " +
                "@tipoDocumento, @noDocumento, @direccion, @ciudad, @telefono);" +
                "SELECT SCOPE_IDENTITY();");

            AsignarParametro("@solicitudId", SqlDbType.Int, solicitudId);
            AsignarParametro("@primerApellido", SqlDbType.VarChar, primerApellido);
            AsignarParametro("@segundoApellido", SqlDbType.VarChar, segundoApellido);
            AsignarParametro("@nombre", SqlDbType.VarChar, nombre);
            AsignarParametro("@tipoDocumento", SqlDbType.VarChar, tipoDocumento);
            AsignarParametro("@noDocumento", SqlDbType.VarChar, noDocumento);
            AsignarParametro("@direccion", SqlDbType.VarChar, direccion);
            AsignarParametro("@ciudad", SqlDbType.VarChar, ciudad);
            AsignarParametro("@telefono", SqlDbType.VarChar, telefono);
            EjecutarComando();

            // Comprador
            primerApellido = txtCompApellido1.Text;
            segundoApellido = txtCompApellido2.Text;
            nombre = txtCompNombre.Text;
            tipoDocumento = DropDownList8.SelectedValue;
            noDocumento = txtCompId.Text;
            direccion = txtCompDireccion.Text;
            ciudad = txtCompCiudad.Text;
            telefono = txtCompTelefono.Text;

            Conectar();
            CrearComando("INSERT INTO Comprador" +
                "(solicitudId, primerApellido, segundoApellido, nombre, " +
                "tipoDocumento, noDocumento, direccion, ciudad, telefono)" +
                "VALUES" +
                "(@solicitudId, @primerApellido, @segundoApellido, @nombre, " +
                "@tipoDocumento, @noDocumento, @direccion, @ciudad, @telefono);" +
                "SELECT SCOPE_IDENTITY();");
            AsignarParametro("@solicitudId", SqlDbType.Int, solicitudId);
            AsignarParametro("@primerApellido", SqlDbType.VarChar, primerApellido);
            AsignarParametro("@segundoApellido", SqlDbType.VarChar, segundoApellido);
            AsignarParametro("@nombre", SqlDbType.VarChar, nombre);
            AsignarParametro("@tipoDocumento", SqlDbType.VarChar, tipoDocumento);
            AsignarParametro("@noDocumento", SqlDbType.VarChar, noDocumento);
            AsignarParametro("@direccion", SqlDbType.VarChar, direccion);
            AsignarParametro("@ciudad", SqlDbType.VarChar, ciudad);
            AsignarParametro("@telefono", SqlDbType.VarChar, telefono);
            EjecutarComando();
        }
    }
}