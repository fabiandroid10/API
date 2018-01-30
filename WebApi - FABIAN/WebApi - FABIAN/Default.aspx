<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApi___FABIAN.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 914px">
    
        <br />
        DashBoard&nbsp; Activos Empresa<br />
        <br />
        Agregar nuevo Activo<br />
        <br />
        <br />
     <div style="width:50%; float:left;">
        <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtID" runat="server" Width="82px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Descripcion:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDescripcion" runat="server" Height="16px" Width="125px"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Color:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
         <br />
         <asp:Label ID="Label11" runat="server" Text="Valor Compra:"></asp:Label>
&nbsp;$<asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
         <br />
         <br />
         <br />
         <asp:Label ID="Label12" runat="server" Text="Serial:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="txtSerial" runat="server"></asp:TextBox>
         <br />
         <asp:Label ID="Label16" runat="server" Text="Tipo:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="dropTipo" runat="server" Height="16px" Width="127px">
         </asp:DropDownList>
         <br />
         <br />
         <asp:Label ID="Label14" runat="server" Text="Fecha Compra:"></asp:Label>
         <asp:Calendar ID="calCompra" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
             <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
             <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
             <OtherMonthDayStyle ForeColor="#999999" />
             <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
             <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
             <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
             <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
             <WeekendDayStyle BackColor="#CCCCFF" />
         </asp:Calendar>
         <br />
         <asp:Button ID="btnBuscar" runat="server" Height="31px" OnClick="btnBuscar_Click" Text="Buscar" Width="79px" />
         <br />
         <br />
         <asp:Button ID="btnAreas" runat="server" Text="Lista Areas" />
&nbsp;
         <asp:Button ID="btnPersonas" runat="server" Text="Lista Personas" />
         <br />
        <br />
      </div>
      <div style="width:50%; float:left;">
        <asp:Label ID="Label6" runat="server" Text="N° Inventario:"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtInventario" runat="server"></asp:TextBox>
          <br />
          <br />
        <asp:Label ID="Label7" runat="server" Text="Peso:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPeso" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Ancho:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAncho" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Alto:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAlto" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Largo:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLargo" runat="server"></asp:TextBox>
        <br />
          <br />
          <asp:Label ID="Label13" runat="server" Text="Estado:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:DropDownList ID="dropEstado" runat="server" Height="22px" Width="128px">
          </asp:DropDownList>
          <br />
          <br />
          <br />
          <asp:Label ID="Label15" runat="server" Text="Fecha Baja:"></asp:Label>
          <asp:Calendar ID="calBaja" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
              <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
              <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
              <OtherMonthDayStyle ForeColor="#999999" />
              <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
              <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
              <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
              <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
              <WeekendDayStyle BackColor="#CCCCFF" />
          </asp:Calendar>
          <br />
          <asp:Button ID="btnAgregar" runat="server" Height="29px" Text="Agregar" Width="86px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btnActualizar" runat="server" Height="29px" Text="Actualizar" Width="89px" />
          <br />
          <br />
        <br />
    </div>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridViewTodo" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        <br />
    </div>
    </form>
</body>
</html>
