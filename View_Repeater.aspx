<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View_Repeater.aspx.cs" Inherits="TemplatePage.View_Repeater" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        function openModal() {
            $('#myModal').modal('show');
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container my-5">
        <form runat="server">

            <asp:Label ID="msg" runat="server" CssClass="text-success my-3"></asp:Label>
            <asp:Label ID="err" runat="server" CssClass="text-danger my-3"></asp:Label>

            <table class="table table-striped table-bordered">
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">User Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Number</th>
                                <th scope="col">Address</th>
                                <th scope="col">Operations</th>
                            </tr>
                        </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody>
                            <tr>
                                <th scope="row"><%#Eval("ID")%></th>
                                <td>
                                    <%#Eval("UserName")%>
                                </td>  
                                <td>
                                    <%#Eval("Email")%>
                                </td>  
                                <td>
                                    <%#Eval("Number")%>
                                </td>
                                <td>
                                    <%#Eval("Address")%>
                                </td>
                                <td class="d-flex justify-content-around">
                                    <asp:LinkButton ID="edit" runat="server" CssClass="text-success" CommandArgument='<%#Eval("ID")%>' OnClick="edit_Click">Edit</asp:LinkButton>
                                    <asp:LinkButton ID="delete" runat="server" CssClass="text-danger" CommandArgument='<%#Eval("ID")%>' OnClick="delete_Click">Delete</asp:LinkButton>
                                </td>
                            </tr>
                        </tbody>
                    </ItemTemplate>
                    <FooterTemplate>
                        <tfoot>
                            <tr>
                                <td colspan="6">Submitted data...</td>
                            </tr>
                        </tfoot>
                    </FooterTemplate>
                </asp:Repeater>
            </table>

            <div id="myModal" class="modal fade" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Update Details.</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                            <div class="row">
                                <asp:Label ID="Label1" runat="server" Text="User Name :" CssClass="col-4"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="col-7"></asp:TextBox>
                            </div>
                            <div class="row">
                                <asp:Label ID="Label2" runat="server" Text="Email :" CssClass="col-4"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="col-7"></asp:TextBox>
                            </div>
                            <div class="row">
                                <asp:Label ID="Label3" runat="server" Text="Number :" CssClass="col-4"></asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="col-7"></asp:TextBox>
                            </div>
                            <div class="row">
                                <asp:Label ID="Label4" runat="server" Text="Address :" CssClass="col-4"></asp:Label>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="col-7"></asp:TextBox>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="update" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="update_Click" />
                            <asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" data-dismiss="modal" />
                        </div>
                    </div>
                </div>
            </div>

        </form>
    </div>

</asp:Content>
