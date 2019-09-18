<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pet_grooming_booking.aspx.cs" Inherits="N01119610_Assignment1_A.pet_grooming_booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <form id="form1" runat="server">

                <h1>Pet Grooming Booking</h1>
                <section>
                    <h2>Pet Owner Name:</h2>
                    <label>What is your name?</label>
                    <asp:TextBox runat="server" ID="aspx_petowner_name" ></asp:TextBox>
                </section>
                <section>
                    <h2>Pet Name:</h2>
                    <label>What is your pet's name?</label>
                    <asp:TextBox runat="server" ID="aspx_pet_name" ></asp:TextBox>
                </section>
                <section>
                    <h2>Day of Grooming</h2>
                    <label>What day would you like to do the grooming?</label>
                    <div>
                        <asp:RadioButtonList runat="server" ID="aspx_grooming_dayofweek">
                            <asp:ListItem Text="MONDAY" Value="monday"></asp:ListItem>
                            <asp:ListItem Text="TUESDAY" Value="tuesday"></asp:ListItem>
                            <asp:ListItem Text="WEDNESDAY" Value="wednesday"></asp:ListItem>
                            <asp:ListItem Text="THURSDAY" Value="thursday"></asp:ListItem>
                            <asp:ListItem Text="FRIDAY" Value="Friday"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </section>
                <section>
                    <h2>What type of animal do you have?</h2>
                    <asp:DropDownList runat="server" ID="aspx_animal_type">
                        <asp:ListItem Text="Dog" Value="dog"></asp:ListItem>
                        <asp:ListItem Text="Cat" Value="cat"></asp:ListItem>
                        <asp:ListItem Text="Bird" Value="bird"></asp:ListItem>
                    </asp:DropDownList>
                </section>
                <section>
                    <h2>Where service would you like?</h2>
                    <asp:CheckBoxList ID="aspx_service_type" runat="server">
                        <asp:ListItem Text="Bath" Value="bath"></asp:ListItem>
                        <asp:ListItem Text="Grooming" Value="grooming"></asp:ListItem>
                        <asp:ListItem Text="Oral Care" Value="oralcare"></asp:ListItem>
                    </asp:CheckBoxList>
                </section>
                <section>
                    <asp:Button runat="server" />
                </section>
            </div>
        </main>

    </form>


</body>
</html>
