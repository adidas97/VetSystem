using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VetSystem
{
    public partial class Doctor : System.Web.UI.Page
    {
        VetSystemDbContext db = new VetSystemDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FillData();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void FillData()
        {
            this.GridViewDoctors.DataSource = db.Doctors.Select(e => new
            {
                Id = e.Id,
                Name = e.Name,
                Phone = e.Phone,
                Email = e.Email,
                Password = e.Password
            }).ToList();
            this.GridViewDoctors.DataBind();
        }

        protected void LinkButtonDelete_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenField1");
            Doctor doctor = db.Doctors.Single(a => a.Name == hd.Value);
            db.Doctors.Remove(doctor);
            db.SaveChanges();
            FillData();
        }

        protected void LinkButtonSorting_Click(object sender, EventArgs e)
        {
            this.GridViewDoctors.DataSource = db.Doctors.Select(et => new
            {
                Id = et.Id,
                Name = et.Name,
                Phone = et.Phone,
                Email = et.Email,
                Password = et.Password
            })
            .OrderBy(a=>a.Name)
            .ToList();
            this.GridViewDoctors.DataBind();
        }

        protected void LinkButtonSortingDesc_Click(object sender, EventArgs e)
        {
            this.GridViewDoctors.DataSource = db.Doctors.Select(et => new
            {
                Id = et.Id,
                Name = et.Name,
                Phone = et.Phone,
                Email = et.Email,
                Password = et.Password
            })
            .OrderByDescending(a => a.Name)
            .ToList();
            this.GridViewDoctors.DataBind();
        }

        protected void FilteringByName_TextChanged(object sender, EventArgs e)
        {
            this.GridViewDoctors.DataSource = db.Doctors.Select(et => new
            {
                Id = et.Id,
                Name = et.Name,
                Phone = et.Phone,
                Email = et.Email,
                Password = et.Password
            })
            .Where(a=>a.Name.Contains(FilteringByName.Text))
            .ToList();
            this.GridViewDoctors.DataBind();
        }
    }
}