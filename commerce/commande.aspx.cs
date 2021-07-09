using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace commerce
{
    public partial class commande : System.Web.UI.Page
    {
        DCDataContext dc = new DCDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Object nom = Session["nom"];
            if (nom == null)
                Response.Redirect("authentifier.aspx"); 
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
    

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String lib1 = DropDownList1.Text;
            String lib2 = TextBox1.Text;
            int lib3 = int.Parse(TextBox2.Text);
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

            GridView1.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TextBox3.Text);
            String lib1 = DropDownList1.Text;
            String lib2 = TextBox1.Text;
            int lib3 = int.Parse(TextBox2.Text);
            float pu;
            float pt;
            t_article art2 = dc.t_article.Single(u => u.libelle == lib1);

            pu = (float)art2.prix_unitaire;
            pt = pu * lib3;
            t_commande cmd = dc.t_commande.Single(u => u.Id == id);

            cmd.Article_commandee = lib1;
            cmd.Client_email = lib2;
            cmd.Quantite = lib3;
            cmd.prix_totale = pt;
            dc.SubmitChanges();
            GridView1.DataBind();

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TextBox3.Text);

            t_commande art2 = dc.t_commande.Single(u => u.Id ==id);

            dc.t_commande.DeleteOnSubmit(art2);
            dc.SubmitChanges();
            GridView1.DataBind();
        }
    }
}