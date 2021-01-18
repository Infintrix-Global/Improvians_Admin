<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="EvoAdmin.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="SrciptManager1" runat="server"></asp:ScriptManager>
    <div class="main">
        <div class="site__container">
            <h2>Add Employee</h2>
            <!-- BEGIN FORM-->
            <div class="filter__row d-flex">
                

                <asp:UpdatePanel ID="upEmployee" runat="server">
                    <ContentTemplate>

                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                   
                        <div class="row">
                            <div class="col m3">
                                <label>Mobile Number</label>

                                        <asp:TextBox ID="txtMobile" runat="server" class="form-control" placeholder="Enter Mobile" TabIndex="2"></asp:TextBox>
                                        <span class="help-block">
                                            <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Please Enter Mobile Number" ForeColor="Red" SetFocusOnError="true" ValidationGroup="e"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" runat="server" ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="Please enter valid Mobile Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}" ValidationGroup="e"></asp:RegularExpressionValidator>
                                        </span>
                                   
                            </div>
                            <div class="col m3">
                                <label>Name</label>
                                        <asp:TextBox ID="txtName" class="form-control" placeholder="Name" TabIndex="3" runat="server"></asp:TextBox>
                                        <span class="help-block">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ValidationGroup="e"
                                                SetFocusOnError="true" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator27" runat="server" ValidationGroup="e"
                                                ForeColor="Red" ErrorMessage="Only text is allowed" Display="Dynamic" ControlToValidate="txtName"
                                                SetFocusOnError="True" ValidationExpression="^\s*[a-zA-Z,\s]+\s*$">
                                            </asp:RegularExpressionValidator>
                                        </span>
                                    
                            </div>

                            <div class="col m3">
                                <label>Email</label>
                                        <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email ID" TabIndex="4" runat="server"></asp:TextBox>
                                        <asp:Label ID="lblStatus" runat="server" ForeColor="red"></asp:Label>
                                        <span class="help-block">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ValidationGroup="e"
                                                SetFocusOnError="true" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="e"
                                                ForeColor="Red" ErrorMessage="Enter valid Email" Display="Dynamic" ControlToValidate="txtEmail"
                                                SetFocusOnError="True" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">
                                            </asp:RegularExpressionValidator>
                                        </span>
                                
                            </div>

                            <div class="col m3">
                                <label>Department</label>
                                            <asp:DropDownList ID="ddlDepartment" runat="server" class="custom__dropdown robotomd" TabIndex="4"></asp:DropDownList>
                                     
                                        <span class="help-block">
                                              <asp:RequiredFieldValidator ID="requiredRole" runat="server" ControlToValidate="ddlDepartment" InitialValue="0" ErrorMessage="Please Select Role" ForeColor="Red" SetFocusOnError="true" ValidationGroup="e"></asp:RequiredFieldValidator>
                                      
                                        </span>
                                  
                            </div>
                     

                            <div class="col m3">
                              <label>Designation</label>
                                        <asp:DropDownList ID="ddlDesignation" runat="server" class="custom__dropdown robotomd" TabIndex="5"></asp:DropDownList>
                                        <span class="help-block">
                                       -     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlDesignation" InitialValue="0" ErrorMessage="Please Select Role" ForeColor="Red" SetFocusOnError="true" ValidationGroup="e"></asp:RequiredFieldValidator>
                                        </span>
                                 
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="row">
                         <div class="col m8">
                             <label>Profile Image</label>
                                    <asp:FileUpload ID="FileUpProfile" runat="server" ClientIDMode="Static" />
                                    
                                            <asp:Button ID="btnProfile" CssClass="bttn bttn-primary bttn-action" CausesValidation="False"
                                                runat="server" Text="Upload" OnClick="btnProfile_Click" />
                                            <asp:Label ID="Label2" runat="server" Text="(Format supported:jpeg,png,jpg)" ForeColor="Red"></asp:Label>
                                            <asp:Label ID="lblProfile" runat="server" Visible="true"></asp:Label>
                                   
                            </div>
                                        <div class="col m3">
                       
                                            <asp:Image ID="ImageProfile" runat="server" Height="80px" Width="80px" GenerateEmptyAlternateText="True" ImageUrl="~/Images/no-photo.jpg" />
                                  </div>
                              
                               <div class="clearfix"></div>
                            </div>

                        <div class="row" align="center">
                            <div class="col m6">
                                <div class="form-group form-md-line-input ">

                                    <asp:Button ID="btAdd" runat="server" Text="Add" TabIndex="10" CssClass="bttn bttn-primary bttn-action" ClientIDMode="Static" OnClick="btAdd_Click" UseSubmitBehavior="false" OnClientClick="this.disabled='true';" ValidationGroup="e" />

                                </div>
                            </div>
                            <div class="col m6">
                                <div class="form-group form-md-line-input ">

                                    <asp:Button ID="btclear" runat="server" Text="Clear" TabIndex="11" CssClass="bttn bttn-primary bttn-action" ClientIDMode="Static" OnClick="btclear_Click" />

                                </div>
                            </div>

                        

                        </div>

                        <br />
                        <br />
                        <div class="row">
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

                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>
