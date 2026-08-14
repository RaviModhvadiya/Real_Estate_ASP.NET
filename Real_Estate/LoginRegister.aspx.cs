using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Real_Estate
{
    public partial class LoginRegister : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        // =========================
        // LOGIN
        // =========================
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand(
                "SELECT * FROM Users WHERE Email = '" +
                txtLoginEmail.Text + "' AND Password = '" +
                txtLoginPassword.Text + "'",
                con);

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                Session["ClientID"] = ds.Tables[0].Rows[0]["UserID"].ToString();
                Session["ClientName"] = ds.Tables[0].Rows[0]["FullName"].ToString();

                Response.Redirect("Default.aspx");
            }
            else
            {
                lblLoginMessage.Text = "Invalid Email or Password.";
            }
        }

        // =========================
        // REGISTER
        // =========================
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtRegisterPassword.Text != txtConfirmPassword.Text)
            {
                lblRegisterMessage.Text = "Passwords do not match.";
                return;
            }

            getcon();

            cmd = new SqlCommand(
                "SELECT * FROM Users WHERE Email = '" +
                txtRegisterEmail.Text + "'",
                con);

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                lblRegisterMessage.Text = "Email already registered.";
            }
            else
            {
                getcon();

                cmd = new SqlCommand(
                    "INSERT INTO Users(FullName, Email, Phone, Password) VALUES('" +
                    txtRegisterName.Text + "', '" +
                    txtRegisterEmail.Text + "', '" +
                    txtRegisterPhone.Text + "', '" +
                    txtRegisterPassword.Text + "')",
                    con);

                cmd.ExecuteNonQuery();

                lblRegisterMessage.Text = "Registration Successful.";

                clear();
            }
        }

        // =========================
        // CLEAR
        // =========================
        void clear()
        {
            txtRegisterName.Text = "";
            txtRegisterEmail.Text = "";
            txtRegisterPhone.Text = "";
            txtRegisterPassword.Text = "";
            txtConfirmPassword.Text = "";
        }
    }
}