<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplicationora22015.WebForm2" %>

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString133 %>" DeleteCommand="DELETE FROM &quot;COUNTRIES&quot; WHERE &quot;COUNTRY_ID&quot; = :COUNTRY_ID" InsertCommand="INSERT INTO &quot;COUNTRIES&quot; (&quot;COUNTRY_ID&quot;, &quot;COUNTRY_NAME&quot;, &quot;REGION_ID&quot;) VALUES (:COUNTRY_ID, :COUNTRY_NAME, :REGION_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString133.ProviderName %>" SelectCommand="SELECT * FROM &quot;COUNTRIES&quot;" UpdateCommand="UPDATE &quot;COUNTRIES&quot; SET &quot;COUNTRY_NAME&quot; = :COUNTRY_NAME, &quot;REGION_ID&quot; = :REGION_ID WHERE &quot;COUNTRY_ID&quot; = :COUNTRY_ID">
            <DeleteParameters>
                <asp:Parameter Name="COUNTRY_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="COUNTRY_ID" Type="String" />
                <asp:Parameter Name="COUNTRY_NAME" Type="String" />
                <asp:Parameter Name="REGION_ID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="COUNTRY_NAME" Type="String" />
                <asp:Parameter Name="REGION_ID" Type="Decimal" />
                <asp:Parameter Name="COUNTRY_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="COUNTRY_ID" DataSourceID="SqlDataSource1">
            <Columns>
                
                <asp:BoundField DataField="COUNTRY_ID" HeaderText="COUNTRY_ID" ReadOnly="True" SortExpression="COUNTRY_ID" />
                <asp:BoundField DataField="COUNTRY_NAME" HeaderText="COUNTRY_NAME" SortExpression="COUNTRY_NAME" />
                <asp:BoundField DataField="REGION_ID" HeaderText="REGION_ID" SortExpression="REGION_ID" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="COUNTRY_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="COUNTRY_ID" HeaderText="COUNTRY_ID" ReadOnly="True" SortExpression="COUNTRY_ID" />
                <asp:BoundField DataField="COUNTRY_NAME" HeaderText="COUNTRY_NAME" SortExpression="COUNTRY_NAME" />
                <asp:BoundField DataField="REGION_ID" HeaderText="REGION_ID" SortExpression="REGION_ID" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
