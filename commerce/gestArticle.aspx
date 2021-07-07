<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestArticle.aspx.cs" Inherits="commerce.gestArticle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            &nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="141px" ImageUrl="https://spreecommerce.org/wp-content/uploads/2019/02/spree-logo@2x.png" Width="236px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Libelle :
            <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="227px"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; id :
            <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="227px"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prix Unitaire :
            <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="227px"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; catégorie de l&#39;article :
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="libelle" DataValueField="libelle">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT [libelle] FROM [t_categorie]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" style="margin-left: 48px" Text="Ajouter" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Modifier" OnClick="Button2_Click" />
&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Supprimer" OnClick="Button3_Click" />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="libelle" HeaderText="libelle" SortExpression="libelle" />
                    <asp:BoundField DataField="prix_unitaire" HeaderText="prix_unitaire" SortExpression="prix_unitaire" />
                    <asp:BoundField DataField="categorie" HeaderText="categorie" SortExpression="categorie" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT * FROM [t_article]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
