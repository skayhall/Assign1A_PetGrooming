<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pet_grooming_booking.aspx.cs" Inherits="N01119610_Assignment1_A.pet_grooming_booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <main>
            <div>
                <h1>Pet Grooming Booking</h1>
                <section>
                    <h2>Pet Owner Name</h2>
                    <label>What is your name?</label>
                    <asp:TextBox runat="server" ID="petowner_name" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" 
                        ControlToValidate="petowner_name"
                        ErrorMessage="Please enter your name."></asp:RequiredFieldValidator>
                </section>
                <section>
                    <% /*
                        WHERE: https://www.codeproject.com/Questions/1240381/Regular-expression-in-Csharp-for-phone-number
                        AUTHOR: Unknown
                        HOW: Searching through Google.
                        WHY: To validate phone number. It was verified to be successful by other professional developers. 
                        DATE ACCESSED: September 23, 2019
                      */%>
                    <h2>Pet Owner Phone Number</h2>
                    <label>What is your phone numner?</label>
                    <asp:TextBox runat="server" ID="petowner_phone"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server"
                        ControlToValidate="petowner_phone" ValidationExpression="/^\+[0-9]{2}[^0-9]*/0/"
                        ErrorMessage="Please put a phone number."></asp:RegularExpressionValidator>
                </section>
                <section>
                    <h2>Pet Name</h2>
                    <label>What is your pet's name?</label>
                    <asp:TextBox runat="server" ID="pet_name"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server"
                        ControlToValidate="pet_name"
                        ErrorMessage="Please enter your pet name."></asp:RequiredFieldValidator>
                </section>
                <section>
                    <h2>Day of Grooming</h2>
                    <label>What day would you like to do the grooming?</label>
                    <div>
                        <asp:RadioButtonList runat="server" ID="grooming_dayofweek">
                            <asp:ListItem Text="Monday" Value="mon"></asp:ListItem>
                            <asp:ListItem Text="Tuesday" Value="tue"></asp:ListItem>
                            <asp:ListItem Text="Wednesday" Value="wed"></asp:ListItem>
                            <asp:ListItem Text="Thursday" Value="thurs"></asp:ListItem>
                            <asp:ListItem Text="Friday" Value="fri"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="grooming_dayofweek"
                            ErrorMessage="Please choose a day of the week"></asp:RequiredFieldValidator>
                    </div>
                </section>
                <section>
                    <h2>Animal Type</h2>
                    <label>What type of animal do you have?</label>
                    <asp:DropDownList runat="server" ID="animal_type">
                        <asp:ListItem Text="Dog" Value="dog"></asp:ListItem>
                        <asp:ListItem Text="Cat" Value="cat"></asp:ListItem>
                        <asp:ListItem Text="Bird" Value="bird"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" 
                        ControlToValidate="animal_type"
                        ErrorMessage="Please choose an animal type"></asp:RequiredFieldValidator>
                </section>
                <section>
                    <h2>Total Number of Services</h2>
                    <label>How many services do you need?</label>
                    <asp:TextBox ID="services_amount" runat="server"></asp:TextBox>
                    <asp:RangeValidator runat="server" 
                    ControlToValidate="services_amount"
                    MinimumValue="1"
                    MaximumValue="3"
                    ErrorMessage="Sorry that's too many services. Min 1 service needed. Max 3 services allowed.">
                    </asp:RangeValidator>
                </section>
                <section>
                    <asp:ValidationSummary runat="server" ShowSummary="true" />
                </section>
                <section id="confirmbox" runat="server">
                </section>
                <section>
                    <input type="submit" value="submit" />
                   
                    <% /* <asp:Button runat="server" />
                   */ %>

                </section>
            </div>
        </main>
    </form>

</body>
</html>
