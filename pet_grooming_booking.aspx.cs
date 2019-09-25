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
                    string Animal_Type = animal_type.SelectedValue.ToString();
                    int Services_TotalAmount = Convert.ToInt32(services_amount.Text);
                    string Pet_OwnerPhone = petowner_phone.Text.ToString();

                    
                    confirmbox.InnerHtml = "Thank you for booking! Your booking info is: <br>";

                    confirmbox.InnerHtml += " Pet Owner Name: " + Pet_OwnerName + "<br>";
                    confirmbox.InnerHtml += " Pet Name: " + Pet_Name + "<br>";
                    confirmbox.InnerHtml += " Animal Type: " + Animal_Type + "<br>";
                    confirmbox.InnerHtml += " Grooming Day " + Grooming_DayofWeek + "<br>";



                    confirmbox.InnerHtml += " You are booking " + Services_TotalAmount.ToString() + " service(s) " + "<br>";
                    if (Services_TotalAmount == 0)
                    {
                        confirmbox.InnerHtml += "You need to book atleast one service.";
                    }

                    if (Services_TotalAmount == 1)
                    {
                        confirmbox.InnerHtml += "Great he/she will love their solo treatment!";
                    }

                    if (Services_TotalAmount == 2)
                    {
                        confirmbox.InnerHtml += "A double - I'm sure he/she will feel special.";
                    }

                    if (Services_TotalAmount == 3)
                    {
                        confirmbox.InnerHtml += "Three services. He/She is definetly getting spoiled today!";
                    } 



                    confirmbox.InnerHtml += " You can be reached by phone at: " + Pet_OwnerPhone;

                }
            }
        }
    }
}



