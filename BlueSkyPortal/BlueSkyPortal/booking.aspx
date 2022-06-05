<%@ Page Title="" Language="C#" MasterPageFile="~/footer.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" EnableEventValidation="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceFooterHead" Runat="Server">
    <style>
        .seo-title-tag {
            font-size: 10px;
            font-weight: 100;
        }
        .user-login {
            font-weight: bold;
            color: gray;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceFooterBody" Runat="Server">
      <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner">
                <div class="container">
                    <div class="row pt--50 pt-md--40 pt-sm--20">
                        <div class="col-12">
                            <!-- User Action Start -->
                            <div class="user-actions user-actions__coupon">
                                <div class="message-box mb--30">
                                    <p><i class="fa fa-exclamation-circle"></i> Have An Appointment? <a class="expand-btn" href="#coupon_info">Click Here To Enter Your Refrence Code.</a></p>
                                </div>
                                <div id="coupon_info" class="user-actions__form hide-in-default">
                                    <form action="#" class="form">
                                        <p>If you have a an appointment, please enter appointment refrence to check the details.</p>
                                        <div class="form__group d-sm-flex">
                                            <input type="text" name="appo" id="appo" runat="server" class="form__input form__input--2 mr--20 mr-xs--0" placeholder="Refrence Code">
                                            <asp:Button ID="btnCheckAppo" runat="server" CssClass="btn btn-small btn-bg-red btn-color-white btn-hover-2" Text="Check Appointment" />
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- User Action End -->
                        </div>
                    </div> 
                    <div class="row pb--80 pb-md--60 pb-sm--40">
                        <!-- Checkout Area Start -->  
                        <div class="col-lg-6">
                            <div class="checkout-title mt--10">
                                <h2>Appointment Details</h2>
                                <h1 class="seo-title-tag">Book an appointment with a cosmetic specialist, Botox and filler cosmetic services in Toonto and Richmond hill. Sama cosmetic clinic</h1>
                            </div>
                            <div class="checkout-form">
                                <div class="form form--checkout">

                                    <div class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="ddlSatff" class="form__label form__label--2">Service Provider<span class="required">*</span></label>
                                            <asp:DropDownList ID="ddlSatff" runat="server" CssClass="form__input form__input--2 nice-select" Style="margin-top: 0.5rem;" AutoPostBack="True" ViewStateMode="Enabled" EnableViewState="true" OnSelectedIndexChanged="itemSelected1"></asp:DropDownList>

                                        </div>
                                    </div>
                                    
                                    <div class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="ddlApp" class="form__label form__label--2">Services<span class="required">*</span></label>
                                            <asp:DropDownList ID="ddlApp" runat="server" CssClass="form__input form__input--2 nice-select" Style="margin-top: 0.5rem;" AutoPostBack="True" ViewStateMode="Enabled" EnableViewState="true" OnSelectedIndexChanged="itemSelected2"></asp:DropDownList>
                                        </div>
                                    </div>
                                   
                                    <div class="form-row">
                                        <div class="calender-appo form__group col-12">
                                            <label for="Calendar1" class="form__label form__label--2">Please select a day</label>
                                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="ShortMonth" Width="100%" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"  
            OnVisibleMonthChanged="Calendar1_VisibleMonthChanged"> 
                                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                <OtherMonthDayStyle ForeColor="#999999" />
                                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="0px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" CssClass="date-header" />
                                                <TodayDayStyle BackColor="#CCCCCC" CssClass="    padding: 1.5" />
                                            </asp:Calendar>
                                            <div class="show-date">
                                                <p class="show-date-text">The selected date: <span id="selectedDate" runat="server"></span> </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="ddlApp" class="form__label form__label--2">Choose an hour<span class="required">*</span></label>
                                            <asp:DropDownList ID="ddlHours" runat="server" CssClass="form__input form__input--2 nice-select"></asp:DropDownList>
                                             <ul id="appDetListHtml" ClientIDMode="Static" runat="server" class="cal-details">
                                                        
                                                    </ul>
                                        </div>
                                    </div>

                                    <div class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="ddlAppoType" class="form__label form__label--2">Types of Appointment<span class="required">*</span></label>
                                            <asp:DropDownList ID="ddlAppoType" runat="server" CssClass="form__input form__input--2 nice-select">
                                                <asp:ListItem Value="1" Text="in-person" />
                                                <asp:ListItem Value="2" Text="a call" />
                                                <asp:ListItem Value="3" Text="Virtual" />
                                            </asp:DropDownList>
                                            
                                        </div>
                                    </div>
                                    

                                    <div class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="btnMember" class="form__label form__label--2">Are you a member?<span class="required">*</span></label>
                                            <a id="btnLogin" runat="server" href="user-login.aspx" class="btn btn-fullwidth btn-bg-red btn-color-white btn-hover-2" >Login</a>
                                            <p class="user-login" id="lblUser" runat="server"></p>
                                        </div>
                                    </div>
                                    
                                    <div id="reg1" runat="server" class="form-row mb--20">
                                        <div class="form__group col-md-6 mb-sm--30">
                                            <label for="billing_fname" class="form__label form__label--2">First Name  <span class="required">*</span></label>
                                            <input type="text" name="txtName" id="txtName" runat="server" class="form__input form__input--2">
                                        </div>
                                        <div class="form__group col-md-6">
                                            <label for="billing_lname" class="form__label form__label--2">Last Name  <span class="required">*</span></label>
                                            <input type="text" name="txtfName" id="txtfName" runat="server" class="form__input form__input--2">
                                        </div>
                                    </div>
                                    <div id="reg2" runat="server" class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="txtPhone" class="form__label form__label--2">Phone <span class="required">*</span></label>
                                            <input type="text" name="txtPhone" id="txtPhone" runat="server" class="form__input form__input--2">
                                        </div>
                                    </div>
                                    <div id="reg3" runat="server" class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="txtEmail" class="form__label form__label--2">Email Address  <span class="required">*</span></label>
                                            <input type="email" name="txtEmail" id="txtEmail" runat="server" class="form__input form__input--2">
                                        </div>
                                    </div>




                                    <div class="form-row">
                                        <div class="form__group col-12">
                                            <label for="txtAppoNote" class="form__label form__label--2">Order Notes</label>
                                            <textarea class="form__input form__input--2 form__input--textarea" id="txtAppoNote" runat="server" name="txtAppoNote" placeholder="Notes about your Appointment, e.g. special notes about treatment."></textarea>
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form__group col-12">
                                            <p class="mb--15">Please keep the refrence code for traking your appointment.</p>
                                            <p class="error-msg" id="lblError" runat="server"></p>
                                            <asp:Button ID="btnAppo" runat="server" CssClass="btn btn-fullwidth btn-bg-red btn-color-white btn-hover-2" Text="Book the Appointment" OnClick="btnAppo_Click" />
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 offset-xl-1 col-lg-6 mt-md--40">
                            <div class="order-details bg-White">
                                <div class="checkout-title mt--10">
                                    <h2>Your Appointment Details:</h2>
                                </div>
                                <div class="table-content table-responsive mb--30">
                                    <table class="table order-table order-table-2">
                                        <thead>
                                            <tr>
                                                <th>Ref. Code</th>
                                                <th id="refCodeHtml" runat="server" class="error-msg text-right"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>Full Name:</th>
                                                <td id="detName" runat="server" class="text-right"></td>
                                            </tr>
                                            <tr>
                                                <th>Service Provider:</th>
                                                <td id="detServProvider" runat="server" class="text-right"></td>
                                            </tr>
                                            <tr>
                                                <th>Service:</th>
                                                <td id="detService" runat="server" class="text-right"></td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr class="cart-subtotal">
                                                <th>time:</th>
                                                <td id="detTime" runat="server" class="text-right"></td>
                                            </tr>
                                            <tr class="shipping">
                                                <th>Date:</th>
                                                <td id="detDate" runat="server" class="text-right"></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- Checkout Area End -->
                    </div>
                </div>
            </div>
        </div>
    <script>
        function killCookie() {
            var currentdate = new Date();
            currentdate.setDate(currentdate.getDate() - 10);
            var expires = currentdate.toUTCString();

            document.cookie = "idApp=;path=/;expires=" + expires + ";";
            
        }

        function killAppoDate() {
            var currentdate = new Date();
            currentdate.setDate(currentdate.getDate() - 10);
            var expires = currentdate.toUTCString();

            document.cookie = "appoDate=;path=/;expires=" + expires + ";";

        }
    </script>
</asp:Content>

