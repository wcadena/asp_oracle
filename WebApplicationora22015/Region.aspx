<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplicationora22015.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString133 %>" DeleteCommand="DELETE FROM &quot;REGIONS&quot; WHERE &quot;REGION_ID&quot; = :REGION_ID" InsertCommand="INSERT INTO &quot;REGIONS&quot; (&quot;REGION_ID&quot;, &quot;REGION_NAME&quot;) VALUES (:REGION_ID, :REGION_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString133.ProviderName %>" SelectCommand="SELECT * FROM &quot;REGIONS&quot;" UpdateCommand="UPDATE &quot;REGIONS&quot; SET &quot;REGION_NAME&quot; = :REGION_NAME WHERE &quot;REGION_ID&quot; = :REGION_ID">
            <DeleteParameters>
                <asp:Parameter Name="REGION_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="REGION_ID" Type="Decimal" />
                <asp:Parameter Name="REGION_NAME" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="REGION_NAME" Type="String" />
                <asp:Parameter Name="REGION_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="REGION_ID" DataSourceID="SqlDataSource1">
            <Columns>
                
                <asp:BoundField DataField="REGION_ID" HeaderText="ID" ReadOnly="True" SortExpression="REGION_ID" />
                <asp:BoundField DataField="REGION_NAME" HeaderText="REGION" SortExpression="REGION_NAME" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="REGION_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="REGION_ID" HeaderText="REGION_ID" ReadOnly="True" SortExpression="REGION_ID" />
                <asp:BoundField DataField="REGION_NAME" HeaderText="REGION_NAME" SortExpression="REGION_NAME" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
