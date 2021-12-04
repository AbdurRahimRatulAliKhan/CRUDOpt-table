<%@ Page Title="Edit" Language="C#" Debug="true" MasterPageFile="~/Site.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="Edit.aspx.cs" Inherits="eShopLegacyWebForms.Catalog.Edit" %>

<asp:Content ID="Edit" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="esh-body-title">Edit</h2>

    <div class="container">
        <div class="row">
        
            <div class="col-md-6 form-horizontal">

                <div class="form-group">
                    <label class="control-label col-md-4">Contact Name</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="Name" runat="server" CssClass="form-control" Text='<%#product.Name%>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Name" Display="Dynamic"
                            CssClass="field-validation-valid text-danger" ErrorMessage="The Name field is required." />
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-4">Present Address</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="Description" runat="server" CssClass="form-control" Text='<%#product.Description%>'></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-4">City ID</label>
                    <div class="col-md-8">
                        <asp:DropDownList ID="BrandDropDownList" runat="server"
                            ItemType="eShopLegacyWebForms.Models.CatalogBrand"
                            DataTextField="Brand"
                            DataValueField="Id"
                            CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-4">Is Active</label>
                    <div class="col-md-8">
                        <asp:DropDownList ID="TypeDropDownList" runat="server"
                            ItemType="eShopLegacyWebForms.Models.CatalogType"
                            DataTextField="Type"
                            DataValueField="Id"
                            CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                </div>



     <%--           <div class="form-group">
                    <label class="control-label col-md-4">Permenant Address </label>
                    <div class="col-md-8">
                        <asp:TextBox ID="PermenantAddress" runat="server" CssClass="form-control" Text='<%#product.PermenantAddress%>'></asp:TextBox>
                    </div>
                </div>--%>

                <div class="form-group">
                    <label class="control-label col-md-4">Contact ID</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="Stock" runat="server" CssClass="form-control" Text='<%#product.AvailableStock%>'></asp:TextBox>
                        <asp:RangeValidator runat="server" ControlToValidate="Stock" Type="Integer" CssClass="text-danger" Display="Dynamic"
                            MinimumValue="0" MaximumValue="10000000" ErrorMessage="The field Stock must be between 0 and 10 million." />
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-md-12 text-right esh-button-actions">
                        <a runat="server" href="~" class="btn esh-button esh-button-secondary">[ Cancel ]
                        </a>
                        <asp:Button CssClass="btn esh-button esh-button-primary" runat="server" Text="[ Save ]" OnClick="Save_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
