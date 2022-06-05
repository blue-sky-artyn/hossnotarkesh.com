<%@ Page Title="" Language="C#" MasterPageFile="~/footer.master" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="myaccount" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceFooterHead" Runat="Server">
    <style>
        .address-text {
            width: 100%;
        }
        .profile-img {
            width: 200px;
            float: right;
        }
        .custom-error-style {
            font-size: 17px;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceFooterBody" Runat="Server">
     <!-- Breadcrumb area Start -->
        <div class="breadcrumb-area bg-color ptb--90" data-bg-color="#f6f6f6">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex justify-content-between align-items-center flex-sm-row flex-column">
                            <h1 class="page-title">My Account</h1>
                            <ul class="breadcrumb">
                                <li><a href="default.aspx">Home</a></li>
                                <li class="current"><span>My Account</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner ptb--80">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="user-dashboard-tab flex-column flex-md-row">
                                <div class="user-dashboard-tab__head nav flex-md-column" role="tablist" aria-orientation="vertical">
                                    <a class="nav-link active" data-toggle="pill" role="tab" href="#dashboard" aria-controls="dashboard" aria-selected="true">Dashboard</a>
                                    <a class="nav-link" data-toggle="pill" role="tab" href="#orders" aria-controls="orders" aria-selected="true">Orders</a>
                                    <a class="nav-link" data-toggle="pill" role="tab" href="#downloads" aria-controls="downloads" aria-selected="true">Appointments</a>
                                    <a class="nav-link" data-toggle="pill" role="tab" href="#addresses" aria-controls="addresses" aria-selected="true">Addresses</a>
                                    <a class="nav-link" data-toggle="pill" role="tab" href="#accountdetails" aria-controls="accountdetails" aria-selected="true">Account Details</a>
                                    <a class="nav-link" data-toggle="pill" role="tab" href="#profile" aria-controls="profile" aria-selected="true">Record of Treatment</a>
                                    <a class="nav-link" href="default.aspx">Logout</a>
                                </div>
                                <div class="user-dashboard-tab__content tab-content">
                                    <div runat="server" class="tab-pane fade show active" id="dashboard">
                                        <img src="images/sponsor/1.jpg" alt="test" class="profile-img" />
                                        <p>Hello<strong> " + CurrentMember.UserFirstName + "</strong> wellcome to your user profile on Sama Cosmetic Clinic protal.</p>
                                    </div>

                                    <div class="tab-pane fade" id="orders">
                                        <div class="message-box mb--30 d-none">
                                            <p><i class="fa fa-check-circle"></i>No order has been made yet.</p>
                                            <a href="shop-sidebar.html">Go Shop</a>
                                        </div>
                                        <div class="table-content table-responsive">
                                            <table class="table text-center">
                                                <thead>
                                                    <tr>
                                                        <th>Order</th>
                                                        <th>Date</th>
                                                        <th>Status</th>
                                                        <th>Total</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td class="wide-column">September 19, 2018</td>
                                                        <td>Processing</td>
                                                        <td class="wide-column">$49.00 for 1 item</td>
                                                        <td><a href="product-details.html" class="btn btn-small btn-bg-red btn-color-white btn-hover-2">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td class="wide-column">September 19, 2018</td>
                                                        <td>Processing</td>
                                                        <td class="wide-column">$49.00 for 1 item</td>
                                                        <td><a href="product-details.html" class="btn btn-small btn-bg-red btn-color-white btn-hover-2">View</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="downloads">
                                        <div class="message-box mb--30 d-none">
                                            <p><i class="fa fa-exclamation-circle"></i>No downloads available yet.</p>
                                            <a href="shop-sidebar.html">Go Shop</a>
                                        </div>
                                        <div class="table-content table-responsive">
                                            <table class="table text-center">
                                                <thead>
                                                    <tr>
                                                        <th>Date and Time</th>
                                                        <th>Service</th>
                                                        <th>Service Provider</th>
                                                        <th>Type of Appointment</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="appHtml" runat="server">
                                                    <tr>
                                                        <td class="wide-column">zakas - Ecommerce Bootstrap Template</td>
                                                        <td>August 10, 2018 </td>
                                                        <td class="wide-column">Never</td>
                                                        <td><a href="#" class="btn btn-small btn-bg-red btn-color-white btn-hover-2">Download File</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="wide-column">zakas - Ecommerce Bootstrap Template</td>
                                                        <td>August 10, 2018 </td>
                                                        <td class="wide-column">Never</td>
                                                        <td><a href="#" class="btn btn-small btn-bg-red btn-color-white btn-hover-2">Download File</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="addresses">
                                        <p class="mb--20">The following addresses will be used on service or package delivery.</p>
                                        <div class="row">
                                            <div class="col-md-6 mb-sm--20">
                                                <div class="text-block">
                                                    <h4 class="mb--20">Billing address</h4>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:TextBox ID="txtAddrBill" CssClass="address-text" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Button ID="btnUpdateBillAddr" CssClass="btn btn-style-1 btn-submit" runat="server" Text="Update" OnClick="btnUpdateBillAddr_Click" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="text-block">
                                                    <h4 class="mb--20">Shopping address</h4>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:TextBox ID="txtAddr" runat="server" CssClass="address-text" TextMode="MultiLine"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Button ID="btnUpdateAddr" runat="server" CssClass="btn btn-style-1 btn-submit" Text="Update" OnClick="btnUpdateAddr_Click" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <style>
                                        .date-treatment {}
                                        .details-treatment {}
                                        .block-pic-treatment {display:flex;}
                                        .pic-container-treatment {padding: 0.5rem;}
                                        .pic-teartment {width: 100%;}
                                    </style>

                                    <div class="tab-pane fade" id="profile">
                                        <p class="mb--20">The Record of treatment can be tracked here, Please follow the suggestions.</p>
                                        <div class="row">
                                            <div id="userProfileHtml" runat="server" class="col-md-12 mb-sm--20">
                                                


                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="accountdetails">
                                        <div class="form form--account">
                                            <div class="row grid-space-30 mb--20">
                                                <div class="col-md-6 mb-sm--20">
                                                    <div class="form__group">
                                                        <label class="form__label form__label--2" for="f_name">First name <span class="required">*</span></label>
                                                        <asp:TextBox ID="f_name" runat="server" class="form__input"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form__group">
                                                        <label class="form__label form__label--2" for="l_name">Last name <span class="required">*</span></label>
                                                        <asp:TextBox ID="l_name" runat="server" class="form__input"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="row mb--20">
                                                <div class="col-12">
                                                    <div class="form__group">
                                                        <label class="form__label form__label--2" for="email">Email Address <span class="required">*</span></label>
                                                        <asp:TextBox ID="email" runat="server" class="form__input"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <fieldset class="form__fieldset mb--20">
                                                <legend class="form__legend">Password change</legend>
                                                <div class="row mb--20">
                                                    <div class="col-12">
                                                        <div class="form__group">
                                                            <label class="form__label form__label--2" for="cur_pass">Current password (leave blank to leave unchanged)</label>
                                                            <asp:TextBox ID="cur_pass" runat="server" class="form__input"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row mb--20">
                                                    <div class="col-12">
                                                        <div class="form__group">
                                                            <label class="form__label form__label--2" for="new_pass">New password (leave blank to leave unchanged)</label>
                                                            <asp:TextBox ID="new_pass" runat="server" class="form__input"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="form__group">
                                                            <label class="form__label form__label--2" for="conf_new_pass">Confirm new password</label>
                                                            <asp:TextBox ID="conf_new_pass" runat="server" class="form__input"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="form__group">
                                                        <asp:Button ID="btnSave" runat="server" CssClass="btn btn-style-1 btn-submit" Text="Update Changes" OnClick="btnSave_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                                    <p class="error-msg custom-error-style" id="lblError" runat="server"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->

</asp:Content>

