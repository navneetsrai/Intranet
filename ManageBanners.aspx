<%@ page language="C#" autoeventwireup="true" inherits="ManageBanners, App_Web_nemoil4j" masterpagefile="~/Master/Master.master" title="Manage Banners" %>

<%--<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<div align="center">
<div class="BannerLink"><a href="addbanner.aspx">Add New Banner</a></div>
 <asp:Label ID="lblMsg" ForeColor="Red" runat="server" Text="No Record(s) Found" Visible="false"/>
        <asp:GridView ID="gdManageBanner" runat="server" AutoGenerateColumns="false" DataKeyNames="BannerId"
            CssClass="GridStyle"
            Width="100%" AllowPaging="true" PageSize="10" OnRowCancelingEdit="gdManageBanner_RowCancelingEdit"
            OnRowDeleting="gdManageBanner_RowDeleting" OnRowEditing="gdManageBanner_RowEditing"
            OnRowUpdating="gdManageBanner_RowUpdating" OnPageIndexChanging="gdManageBanner_PageIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="Banner Id">
                    <ItemTemplate>
                        <asp:Label ID="lblBannerId" runat="server" Text='<%#Eval("BannerId") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Banner Name">
                    <ItemTemplate>
                        <asp:Label ID="lblBannerName" runat="server" Text='<%#Eval("BannerName") %>' />
                    </ItemTemplate>
                    <%--<EditItemTemplate>
                        <asp:TextBox ID="txtBannerName" runat="server" Text='<%#Eval("BannerName") %>' />
                    </EditItemTemplate>--%>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Banner Price">
                    <ItemTemplate>
                        <asp:Label ID="lblBannerPrice" runat="server" Text='<%#Eval("BannerCost") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtBannerPrice" runat="server" Text='<%#Eval("BannerCost") %>' MaxLength="18" />
                        <asp:RequiredFieldValidator ControlToValidate="txtBannerPrice" ForeColor="Red" Display="Dynamic"
                            ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBannerPrice"
                            Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Price" ValidationExpression="^[-+]?([0-9]){1,}[.]?([0-9]?[0-9]?)?$">
                        </asp:RegularExpressionValidator>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server" CommandName="edit" Text="Edit" />                        
                        <asp:LinkButton Visible="false" ID="lnkDelete" runat="server" Text="Delete" CommandName="delete" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="lnkUpdate" runat="server" Text="Update" CommandName="update" />
                        <asp:LinkButton ID="lnkCancel" runat="server" Text="Cancel" CommandName="cancel"
                            CausesValidation="false" />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle CssClass="HeaderRowStyle" />
            <AlternatingRowStyle CssClass="AlterRowStyle" />
            <PagerStyle CssClass="PagerRowStyle"/>
        </asp:GridView>
    </div>
</asp:Content>











