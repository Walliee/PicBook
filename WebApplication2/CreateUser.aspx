<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="PicBook.CreateUser" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br />
         <h2><%: Title %>.</h2>
                    <hr />
    <div class="jumbotron" style="background-color: #f0f0f0; opacity: .95; z-index = -1;">
    
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" EnableViewState="False" OnCreatingUser="CreateUserWizard1_CreatingUser">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server">
                    <ContentTemplate>
                        <table border="0" style="font-size: 100%; font-family: Verdana">
            <tr>
                <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #5d7b9d">
                    <h1>Sign Up for Your New Account</h1></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">
                        User Name:</asp:Label></td>
                <td>
                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                        ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="FirstNameLabel" runat="server" AssociatedControlID="FirstName">
                        First Name:</asp:Label></td>
                <td>
                    <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName"
                        ErrorMessage="First Name is required." ToolTip="First Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="MiddleNameLabel" runat="server" AssociatedControlID="MiddleName">
                        Middle Name:</asp:Label></td>
                <td>
                    <asp:TextBox ID="MiddleName" runat="server"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="LastNameLabel" runat="server" AssociatedControlID="LastName">
                        Last Name:</asp:Label></td>
                <td>
                    <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName"
                        ErrorMessage="Last Name is required." ToolTip="Last Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">
                        Password:</asp:Label></td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                        ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">
                        Confirm Password:</asp:Label></td>
                <td>
                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                        ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required."
                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">
                        E-mail:</asp:Label></td>
                <td>
                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                        ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                </td>
                </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">
                        Security Question:</asp:Label></td>
                <td>
                    <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
                        ErrorMessage="Security question is required." ToolTip="Security question is required."
                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">
                        Security Answer:</asp:Label></td>
                <td>
                    <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                        ErrorMessage="Security answer is required." ToolTip="Security answer is required."
                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                        ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                        ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                </td>
            </tr>
                            </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
        <asp:Label ID="LblSuccess" runat="server" Text="Label"></asp:Label>
    
    </div>
   </form>
</asp:Content>
