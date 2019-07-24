using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VetSystem
{
    public partial class AddADoctor : System.Web.UI.Page
    {
        VetSystemDbContext db = new VetSystemDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected  void Button_Click(object sender, EventArgs e)
        {

            Doctor doctor = new Doctor();

            doctor.Name = this.TextBoxName.Text;
            doctor.Email = this.TextBoxEmail.Text;
            doctor.Phone = this.TextBoxPhone.Text;
            doctor.Password = this.TextBoxPasswort.Text;

            db.Doctors.Add(doctor);

            db.SaveChanges();

            Response.Redirect("Doctor.aspx");
        }
    }
}