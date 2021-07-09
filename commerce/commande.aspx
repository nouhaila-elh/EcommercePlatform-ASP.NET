<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="commande.aspx.cs" Inherits="commerce.commande" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="152px" ImageUrl="https://spreecommerce.org/wp-content/uploads/2019/02/spree-logo@2x.png" style="margin-left: 0px" Width="175px" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Article commandée "></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="libelle" DataValueField="libelle" Height="45px" Width="199px" style="margin-left: 3px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT [libelle] FROM [t_article]"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Client Email  "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="197px" style="margin-left: 71px"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Quantité  "></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="197px" style="margin-left: 104px"></asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ID  "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="197px" style="margin-left: 174px; margin-right: 0px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Height="52px" OnClick="Button5_Click" Text="Ajouter" Width="111px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" Height="54px" OnClick="Button6_Click" Text="Modifier" Width="118px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" Height="54px" OnClick="Button7_Click" Text="Supprimer" Width="124px" />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Article_commandee" HeaderText="Article_commandee" SortExpression="Article_commandee" />
                    <asp:BoundField DataField="Quantite" HeaderText="Quantite" SortExpression="Quantite" />
                    <asp:BoundField DataField="Client_email" HeaderText="Client_email" SortExpression="Client_email" />
                    <asp:BoundField DataField="Date_commande" HeaderText="Date_commande" SortExpression="Date_commande" />
                    <asp:BoundField DataField="prix_totale" HeaderText="prix_totale" SortExpression="prix_totale" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT [Article_commandee], [Quantite], [Client_email], [Date_commande], [prix_totale] FROM [t_commande]"></asp:SqlDataSource>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
