using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VetSystem
{
    public partial class EditADoctor : System.Web.UI.Page
    {
        VetSystemDbContext db = new VetSystemDbContext();

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                string name = Request.QueryString["Name"];
                Doctor doctor = db.Doctors.Single(en => en.Name == name);
                this.TextBoxName.Text = doctor.Name;
                this.TextBoxEmail.Text = doctor.Email;
                this.TextBoxPasswort.Text = doctor.Password;
                this.TextBoxPhone.Text = doctor.Phone;
            }
        }

      

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            string name = Request.QueryString["Name"];
            Doctor doctor = db.Doctors.Single(en => en.Name == name);
            doctor.Name = this.TextBoxName.Text;
            doctor.Email = this.TextBoxEmail.Text;
            doctor.Phone = this.TextBoxPhone.Text;
            doctor.Password = this.TextBoxPasswort.Text;
            db.SaveChanges();
            Response.Redirect("Doctor.aspx");
        }
    }
}