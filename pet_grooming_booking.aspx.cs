using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N01119610_Assignment1_A
{
    public partial class pet_grooming_booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Page.IsPostBack)
            {
                Page.Validate();

                if (Page.IsValid)
                {



                    
                    string Pet_OwnerName = petowner_name.Text.ToString();
                    string Pet_Name = pet_name.Text.ToString();
                    string Grooming_DayofWeek = grooming_dayofweek.SelectedValue.ToString();
                    string Animal_Tyle = animal_type.SelectedValue.ToString();
                    int Guest_Friendcount = Convert.ToInt32(guest_friendcount.Text);
                    string Pet_OwnerPhone = petowner_phone.Text.ToString();

                    
                    confirmbox.InnerHtml = "Thank you for RSVPing! Your Summary is as follows: <br>";

                    confirmbox.InnerHtml += " First Name: " + Guest_Fname + "<br>";
                    confirmbox.InnerHtml += " Last Name: " + Guest_Lname + "<br>";
                    confirmbox.InnerHtml += " Costume Type: " + Guest_Costumetype + "<br>";



                    confirmbox.InnerHtml += " You are bringing " + Guest_Friendcount.ToString() + " friend(s) " + "<br>";
                    if (Guest_Friendcount == 0)
                    {
                        confirmbox.InnerHtml += "You'll make friends at the party";
                    }

                    if (Guest_Friendcount == 1)
                    {
                        confirmbox.InnerHtml += "Glad you found a friend!";
                    }

                    if (Guest_Friendcount == 2)
                    {
                        confirmbox.InnerHtml += "Three's a crowd, isn't it?";
                    }



                    confirmbox.InnerHtml += " We can reach you at: " + Guest_Phone;

                }
            }
        }
    }
}




        }
    }
}