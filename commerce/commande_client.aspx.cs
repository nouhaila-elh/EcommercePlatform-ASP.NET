using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace commerce
{
    public partial class commande_client : System.Web.UI.Page
    {
        DCDataContext dc = new DCDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            Object nom = Session["nom"];
            if (nom == null)
                Response.Redirect("authentifier_client.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label3.Text = "Votre commande a été bien enregistrée ";

            String lib1 = DropDownList1.SelectedValue;
            String lib2 = TextBox2.Text;

            int lib3 = int.Parse(TextBox1.Text);

            float pu;
            float pt;

            t_article art2 = dc.t_article.Single(u => u.libelle == lib1);

            pu = (float)art2.prix_unitaire;
            pt = pu * lib3;

            t_commande cmd = new t_commande();

            cmd.Article_commandee = lib1;
            cmd.Client_email = lib2;
            cmd.Quantite = lib3;
            cmd.Date_commande = DateTime.Now;
            cmd.prix_totale = pt;

            dc.t_commande.InsertOnSubmit(cmd);
            dc.SubmitChanges();

        }
    }
}