﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewEmployee.aspx.cs" Inherits="EvoAdmin.View_Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="SrciptManager1" runat="server"></asp:ScriptManager>
    <div class="admin__content">
                    <div class="container-fluid">
            <h1 class="text-center text-sm-left">View Employee</h1>

                        <hr />
            <!-- BEGIN FORM-->
                            <div class="filter__row d-flex">
                <div class="row">
                    <div class="col m3">
                        <label>Name </label>
                        <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
                    </div>
                    <div class="col m3">
                        <label>Mobile </label>
                         <asp:TextBox ID="txtMobile" runat="server" ></asp:TextBox>
                    </div>
                    <div class="col m3">
                        <label>Department </label>
                        <asp:DropDownList ID="ddlDepartment" runat="server" class="custom__dropdown robotomd"></asp:DropDownList>
                    </div>
                    <div class="col m3">
                        <label>Designation</label>
                        <asp:DropDownList ID="ddlDesignation" runat="server" class="custom__dropdown robotomd"></asp:DropDownList>
                    </div>
                <div class="clearfix"></div>
                                    <div class="col m6">
                                        <asp:Button ID="btnSearch" Text="Search" runat="server" OnClick="btnSearch_Click" />
                                    </div>
                                    <div class="col m6">
                                        <asp:Button ID="btnClear" Text="Clear" runat="server" OnClick="btnClear_Click" />
                                    </div>
                                </div>
            </div>

            <div class="filter__row d-flex">
                   <div class="row justify-content-lg-center">
          <div class=" col m12">
                                <div class="portlet light ">
                                    <asp:Label runat="server" Text="" ID="count"></asp:Label>
                                    <div class="portlet-body">
                                        <div class="data__table">
                                            <asp:GridView ID="GridEmployee" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                class="striped" OnRowCommand="GridEmployee_RowCommand" AllowSorting="true" OnPageIndexChanging="GridEmployee_PageIndexChanging"
                                                GridLines="None" OnSorting="GridEmployee_Sorting" 
                                                ShowHeaderWhenEmpty="True" Width="100%">
                                                <Columns>

                                                    <asp:TemplateField HeaderText="Sr. No." ItemStyle-Width="10%" HeaderStyle-CssClass="autostyle2">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label4" runat="server" Text="<%#Container.DataItemIndex + 1%>"></asp:Label>
                                                            <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID")  %>' Visible="false"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Department" HeaderStyle-CssClass="autostyle2">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("DepartmentName")  %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Name" HeaderStyle-CssClass="autostyle2" SortExpression="EmployeeName">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("EmployeeName")  %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Contact Number" HeaderStyle-CssClass="autostyle2">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Mobile")  %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Email" HeaderStyle-CssClass="autostyle2">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Email")  %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Role" HeaderStyle-CssClass="autostyle2" SortExpression="RoleName">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("RoleName")  %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="" HeaderStyle-CssClass="autostyle2">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="imgEdit" runat="server" CommandArgument='<%# Eval("ID")  %>' CommandName="EditProfile" ImageUrl="~/images/edit.png" AlternateText="edit" ToolTip="edit"></asp:ImageButton>
                                                            <asp:ImageButton ID="imgDelete" runat="server" CommandArgument='<%# Eval("ID")  %>' CommandName="RemoveProfile" ImageUrl="~/images/delete.png" AlternateText="delete" ToolTip="delete"  OnClientClick="return confirm('Are you sure you want to remove this employee?');"></asp:ImageButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>



                                                </Columns>

                                                <PagerStyle CssClass="paging" HorizontalAlign="Right" />
                                                <PagerSettings Mode="NumericFirstLast" />
                                                <EmptyDataTemplate>
                                                    No Record Available
                                                </EmptyDataTemplate>
                                            </asp:GridView>


                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                </div>
                        </div>
        </div>
</asp:Content>
