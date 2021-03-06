﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formularioOracle.aspx.cs" Inherits="WebApplicationora22015.formularioOracle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Mi primer Formulario</h1>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="EMPLOYEE_ID_lb" runat="server" Text="EMPLOYEE_ID"></asp:Label>
        <asp:TextBox ID="EMPLOYEE_ID" runat="server"></asp:TextBox><br />
        <asp:Label ID="FIRST_NAME_lb" runat="server" Text="FIRST_NAME"></asp:Label>
        <asp:TextBox ID="FIRST_NAME" runat="server"></asp:TextBox><br />
        <asp:Label ID="LAST_NAME_lb" runat="server" Text="LAST_NAME"></asp:Label>
        <asp:TextBox ID="LAST_NAME" runat="server"></asp:TextBox><br />
        <asp:Label ID="EMAIL_lb" runat="server" Text="EMAIL"></asp:Label>
        <asp:TextBox ID="EMAIL" runat="server"></asp:TextBox><br />
        <asp:Label ID="PHONE_NUMBER_lb" runat="server" Text="PHONE_NUMBER"></asp:Label>
        <asp:TextBox ID="PHONE_NUMBER" runat="server"></asp:TextBox><br />
        <asp:Label ID="HIRE_DATE_lb" runat="server" Text="HIRE_DATE"></asp:Label>
        <asp:TextBox ID="HIRE_DATE" runat="server"></asp:TextBox><br />
        <asp:Label ID="JOB_ID_lb" runat="server" Text="JOB_ID"></asp:Label>
        <asp:TextBox ID="JOB_ID" runat="server"></asp:TextBox><br />
        <asp:Label ID="SALARY_lb" runat="server" Text="SALARY"></asp:Label>
        <asp:TextBox ID="SALARY" runat="server"></asp:TextBox><br />
        <asp:Label ID="COMMISSION_PCT_lb" runat="server" Text="COMMISSION_PCT"></asp:Label>
        <asp:TextBox ID="COMMISSION_PCT" runat="server"></asp:TextBox><br />
        <asp:Label ID="MANAGER_ID_lb" runat="server" Text="MANAGER_ID"></asp:Label>
        <asp:TextBox ID="MANAGER_ID" runat="server"></asp:TextBox><br />
        <asp:Label ID="DEPARTMENT_ID_lb" runat="server" Text="DEPARTMENT_ID"></asp:Label>
        <asp:TextBox ID="DEPARTMENT_ID" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="create" runat="server" Text="Nuevo" OnClick="create_Click" />  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
        <asp:Button ID="read" runat="server" Text="Mostrar" OnClick="read_Click" />   
        &nbsp;&nbsp;&nbsp;&nbsp;   
        <asp:Button ID="update" runat="server" Text="Actualizar" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="delete" runat="server" Text="Borrar" />
        <br />
    </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:Label ID="lbmensaje" runat="server" Text="Mensaje:"></asp:Label>
        <br />
    </form>
</body>
</html>
