using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace commerce
{
    public partial class ajoutercategorie : System.Web.UI.Page
    {
        DCDataContext dc = new DCDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String libe = TextBox1.Text ;
          

            t_categorie cat = new t_categorie();
           
            cat.libelle = libe;

            dc.t_categorie.InsertOnSubmit(cat);
            dc.SubmitChanges();

            GridView1.DataSource = dc.t_categorie.ToList();
            GridView1.DataBind();
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            int lib2 = int.Parse(TextBox2.Text);      
            t_categorie cat2 = dc.t_categorie.Single(u => u.Id == lib2);

            cat2.libelle = TextBox1.Text;

            dc.SubmitChanges();

            GridView1.DataSource = dc.t_categorie.ToList();
            GridView1.DataBind();

            
        }

       

        protected void Button3_Click1(object sender, EventArgs e)
        {

            String lib = TextBox1.Text;
           

           t_categorie  cat3 = dc.t_categorie.Single(u => u.libelle ==lib);
            dc.t_categorie.DeleteOnSubmit(cat3);
            dc.SubmitChanges();
            GridView1.DataSource = dc.t_categorie.ToList();
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = dc.t_categorie.ToList();
            GridView1.DataBind();
        }
    }
}