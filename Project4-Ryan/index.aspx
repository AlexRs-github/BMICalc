<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Project4_Ryan.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style/style.css" />
    <title>Body Mass Index</title>
</head>
    <body>
        <h1>BMI Calculator</h1>
        <form id="form1" runat="server">
                <div id="mainBody">
                    <table>
                        <tr>
                            <td>
                                Height in Feet:
                            </td>
                            <td id="bmiInfo">
                                <asp:DropDownList id="ftList" AutoPostBack="True" runat="server">
                                    <asp:ListItem Selected="True" Value="1"> 1 </asp:ListItem>
                                    <asp:ListItem Value="2"> 2 </asp:ListItem>
                                    <asp:ListItem Value="3"> 3 </asp:ListItem>
                                    <asp:ListItem Value="4"> 4 </asp:ListItem>
                                    <asp:ListItem Value="5"> 5 </asp:ListItem>
                                    <asp:ListItem Value="6"> 6 </asp:ListItem>
                                    <asp:ListItem Value="7"> 7 </asp:ListItem>
                                    <asp:ListItem Value="8"> 8 </asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <img id="bmiImage" src="C:\Users\Alex\Desktop\C# Projects\Project4-Ryan\Images\unknown.png" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Height in Inches:
                            </td>
                            <td>
                                <asp:DropDownList id="inList" AutoPostBack="True" runat="server">
                                    <asp:ListItem Selected="True" Value="0"> 0 </asp:ListItem>
                                    <asp:ListItem Value="1"> 1 </asp:ListItem>
                                    <asp:ListItem Value="2"> 2 </asp:ListItem>
                                    <asp:ListItem Value="3"> 3 </asp:ListItem>
                                    <asp:ListItem Value="4"> 4 </asp:ListItem>
                                    <asp:ListItem Value="5"> 5 </asp:ListItem>
                                    <asp:ListItem Value="6"> 6 </asp:ListItem>
                                    <asp:ListItem Value="7"> 7 </asp:ListItem>
                                    <asp:ListItem Value="8"> 8 </asp:ListItem>
                                    <asp:ListItem Value="9"> 9 </asp:ListItem>
                                    <asp:ListItem Value="10"> 10 </asp:ListItem>
                                    <asp:ListItem Value="11"> 11 </asp:ListItem>
                                    <asp:ListItem Value="12"> 12 </asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Weight
                            </td>
                            <td>
                                <asp:TextBox id="txtBox" Columns="2" MaxLength="3" runat="server"/> 
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Label id="errLabel1" runat="server" EnableViewState="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Label id="errLabel2" runat="server" EnableViewState="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button id="submitBtn" runat="server" OnClick="submitBtn_Click" Text="Calculate BMI"/> 
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Label id="ansLabel" runat="server" EnableViewState="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
    </body>
</html>
