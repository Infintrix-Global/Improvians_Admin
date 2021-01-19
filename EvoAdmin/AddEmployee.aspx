﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="EvoAdmin.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="SrciptManager1" runat="server"></asp:ScriptManager>
    <div class="admin__content">
                    <div class="container-fluid">
            <h1 class="text-center text-sm-left">Add Employee</h1>

                        <hr />
            <!-- BEGIN FORM-->
            <div class="filter__row d-flex">
                

            

                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                  
                            <div class="row justify-content-lg-center">
                              
                                <div class="col-md-6 col-xl-5 order-md-1 pt-md-5">
                                           
                            <label class="custom-file-label text-center"><h4>Profile Image</h4></label>

                                     <div class="profile-picture">
                                            <asp:Image ID="ImageProfile" runat="server" Height="200px" Width="200px" GenerateEmptyAlternateText="True" ImageUrl="~/Images/no-photo.jpg" />
                            </div>

                                    <asp:FileUpload ID="FileUpProfile"  runat="server" ClientIDMode="Static" />
                                    
                                            <asp:Button ID="btnProfile" CssClass="bttn bttn-primary bttn-action" CausesValidation="False"
                                                runat="server" Text="Upload" OnClick="btnProfile_Click" />
                                            <asp:Label ID="Label2" runat="server" Text="(Format supported:jpeg,png,jpg)" ForeColor="Red"></asp:Label>
                                            <asp:Label ID="lblProfile" runat="server" Visible="true"></asp:Label>
                                       <div class="clearfix"></div>
                          
                       
                                  </div>

                                 
                                <div class="clearfix"></div>

                               <div class="col-md-6 col-xl-5">
                                <label> <h4>Mobile Number</h4> </label>   

                                        <asp:TextBox ID="txtMobile" runat="server" class="input__control input__control-icon phone" placeholder="Enter your Mobile No. here" TabIndex="2"></asp:TextBox>
                                   
                                    <span class="help-block">
                                            <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Please Enter Mobile Number" ForeColor="Red" SetFocusOnError="true" ValidationGroup="e"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" runat="server" ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="Please enter valid Mobile Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}" ValidationGroup="e"></asp:RegularExpressionValidator>
                                        </span>
                                     <div class="clearfix"></div>
                          
                                <label> <h4>User Name</h4></label>
                                        <asp:TextBox ID="txtName" class="input__control input__control-icon username" placeholder="Enter your user name" TabIndex="3" runat="server"></asp:TextBox>
                                        <span class="help-block">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ValidationGroup="e"
                                                SetFocusOnError="true" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                         <%--   <asp:RegularExpressionValidator ID="RegularExpressionValidator27" runat="server" ValidationGroup="e"
                                                ForeColor="Red" ErrorMessage="Only text is allowed" Display="Dynamic" ControlToValidate="txtName"
                                                SetFocusOnError="True" ValidationExpression="^\s*[a-zA-Z,\s]+\s*$">
                                            </asp:RegularExpressionValidator>--%>
                                        </span>
                                      <div class="clearfix"></div>
                          
                                <label> <h4>Email ID</h4></label>
                                        <asp:TextBox ID="txtEmail" class="input__control input__control-icon email" placeholder="Enter your email here" TabIndex="4" runat="server"></asp:TextBox>
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

                            <div class="col-md-6 col-xl-5 order-md-1">
                                <label><h4>Department</h4></label>
                                            <asp:DropDownList ID="ddlDepartment" runat="server" class="custom__dropdown robotomd" TabIndex="4"></asp:DropDownList>
                                     
                                        <span class="help-block">
                                              <asp:RequiredFieldValidator ID="requiredRole" runat="server" ControlToValidate="ddlDepartment" InitialValue="0" ErrorMessage="Please Select Role" ForeColor="Red" SetFocusOnError="true" ValidationGroup="e"></asp:RequiredFieldValidator>
                                      
                                        </span>
                                  
                            </div>
                     

                             <div class="col-md-6 col-xl-5 order-md-1">
                              <label><h4>Designation</h4></label>
                                        <asp:DropDownList ID="ddlDesignation" runat="server" class="custom__dropdown robotomd" TabIndex="5"></asp:DropDownList>
                                        <span class="help-block">
                                       -     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlDesignation" InitialValue="0" ErrorMessage="Please Select Role" ForeColor="Red" SetFocusOnError="true" ValidationGroup="e"></asp:RequiredFieldValidator>
                                        </span>
                                 
                            </div>
                  
 <div class="col-md-6 col-xl-5 order-md-1">
                              <label><h4>Facility</h4></label>
                                        <asp:DropDownList ID="ddlFacility" runat="server" class="custom__dropdown robotomd" TabIndex="6"></asp:DropDownList>
                                        <span class="help-block">
                                       -     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlFacility" InitialValue="0" ErrorMessage="Please Select Role" ForeColor="Red" SetFocusOnError="true" ValidationGroup="e"></asp:RequiredFieldValidator>
                                        </span>
                                 
                            </div>
                  
                    
                    <div class="clearfix"></div>
                     
                           <div class="col-12 text-center order-md-1">
                              

                                    <asp:Button ID="btAdd" runat="server" Text="Add" TabIndex="10" class="submit-bttn bttn bttn-primary" ClientIDMode="Static" OnClick="btAdd_Click" UseSubmitBehavior="false" OnClientClick="this.disabled='true';" ValidationGroup="e" />

                               
                            </div>
                           <%-- <div class="col m6">
                                <div class="form-group form-md-line-input ">

                                    <asp:Button ID="btclear" runat="server" Text="Clear" TabIndex="11" CssClass="bttn bttn-primary bttn-action" ClientIDMode="Static" OnClick="btclear_Click" />

                                </div>
                            </div>--%>

                        
                           <div class="clearfix"></div>
                      
                        <br />
                        <br />
                <div class="clearfix"></div>
                   
                      

                        </div>

                                   
            </div>
        </div>
    </div>
</asp:Content>
