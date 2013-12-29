<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="PicBook.SearchResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="css/board.css" />
   <br />
                    <br />
    <div class="jumbotron" style="background-color: #f0f0f0; opacity: .95; z-index = -1;">
     <h1>Search Results</h1><br />
     <h2>People</h2><br />
        <div id="wrapper3">
            <div id="columns3">
                <asp:Repeater ID="Repeater3" runat="server">
                    
                    <ItemTemplate>
                   
                    
                        
                       
                        <div class="pin">
                            <a href="/Member.aspx?mid=<%#Eval("mid")%>">
                                <p style="text-align: center"><%# Eval("fname") %></p>

                            </a>
                            
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <hr />
    <h2>Boards</h2><br />
        <div id="wrapper2">
            <div id="columns2">
                
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="pin">
                            <a href="/Board2.aspx?bid=<%#Eval("bid")%>">
                                <asp:Image ID="Image1" ImageUrl='<%# Eval("thumbnail") %>' runat="server" />
                            </a>
                            <h4><%# Eval("descrip") %></h4>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <hr />
    <h2>Pins</h2><br />
        <div id="wrapper">
            <div id="columns">
                
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="pin">
                            <a href="/Pin2.aspx?pid=<%#Eval("pid")%>">
                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Url") %>' runat="server" />
                            </a>
                            <p><%# Eval("Description") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <hr />

        </div>
    


</asp:Content>
