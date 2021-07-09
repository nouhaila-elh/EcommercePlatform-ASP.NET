<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestArticle.aspx.cs" Inherits="commerce.gestArticle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <br />
            &nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="141px" ImageUrl="https://spreecommerce.org/wp-content/uploads/2019/02/spree-logo@2x.png" Width="236px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Nom d'article"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="227px" style="margin-left: 83px"></asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ID "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="227px" style="margin-left: 178px"></asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Prix Unitaire"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="227px" style="margin-left: 95px"></asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Catégorie de l'article   "></asp:Label>
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="libelle" DataValueField="libelle" Height="16px" style="margin-left: 7px" Width="229px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT [libelle] FROM [t_categorie]"></asp:SqlDataSource>
            <div class="auto-style2">
            <br />
            <br />
            <br />
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" style="margin-left: 33px" Text="Ajouter" OnClick="Button1_Click" Height="41px" Width="144px" BackColor="#66CCFF" Font-Bold="True" Font-Size="Large" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Modifier" OnClick="Button2_Click" Height="42px" Width="143px" BackColor="#66CCFF" Font-Bold="True" Font-Size="Large" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Supprimer" OnClick="Button3_Click" Height="40px" style="margin-left: 0px" Width="137px" BackColor="#66CCFF" Font-Bold="True" Font-Size="Large" />
            <br />
            <br />
            <br />
            <br />
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="199px" style="margin-left: 104px" Width="497px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="libelle" HeaderText="libelle" SortExpression="libelle" />
                    <asp:BoundField DataField="prix_unitaire" HeaderText="prix_unitaire" SortExpression="prix_unitaire" />
                    <asp:BoundField DataField="categorie" HeaderText="categorie" SortExpression="categorie" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT * FROM [t_article]"></asp:SqlDataSource>
            <div class="auto-style2">
            <br />
            <br />
            <br />
            <br />
            </div>
        </div>
    </form>
</body>
</html>
