<%@ Page Title="" Language="C#" MasterPageFile="~/footer.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceFooterHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceFooterBody" Runat="Server">
    <!-- Breadcrumb area Start -->
        <div class="breadcrumb-area bg-color ptb--90" data-bg-color="#f6f6f6">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex justify-content-between align-items-center flex-sm-row flex-column">
                            <h1 class="page-title">Checkout</h1>
                            <ul class="breadcrumb">
                                <li><a href="default.aspx">Home</a></li>
                                <li class="current"><span>Checkout</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner">
                <div class="container">
                    <div class="row pt--50 pt-md--40 pt-sm--20">
                        <div class="col-12">
                            <!-- User Action Start -->
                            <div class="user-actions user-actions__coupon">
                                <div class="message-box mb--30">
                                    <p><i class="fa fa-exclamation-circle"></i> Check your order? <a class="expand-btn" href="#coupon_info">Click Here To Enter Your ref. Code.</a></p>
                                </div>
                                <div id="coupon_info" class="user-actions__form hide-in-default">
                                    <div class="form">
                                        <p>If you have your ref. Code, please enter it below.</p>
                                        <div class="form__group d-sm-flex">
                                            <input type="text" name="coupon" id="coupon" runat="server" class="form__input form__input--2 mr--20 mr-xs--0" placeholder="Ref. Code">
                                            <asp:Button ID="btnCheckRef" runat="server" CssClass="btn btn-small btn-bg-red btn-color-white btn-hover-2" Text="Check Order" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- User Action End -->
                        </div>
                    </div> 
                    <div class="row pb--80 pb-md--60 pb-sm--40">
                        <!-- Checkout Area Start -->  
                        <div class="col-lg-6">
                            <div class="checkout-title mt--10">
                                <h2>Billing Details</h2>
                            </div>
                            <div class="checkout-form">
                                <div class="form form--checkout">
                                    <div class="form-row mb--20">
                                        <div class="form__group col-md-6 mb-sm--30">
                                            <label for="txtName" class="form__label form__label--2">First Name  <span class="required">*</span></label>
                                            <input type="text" name="txtName" id="txtName" runat="server" class="form__input form__input--2">
                                        </div>
                                        <div class="form__group col-md-6">
                                            <label for="txtfName" class="form__label form__label--2">Last Name  <span class="required">*</span></label>
                                            <input type="text" name="txtfName" id="txtfName" runat="server" class="form__input form__input--2">
                                        </div>
                                    </div>
                                    
                                    <div class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="txtAddr" class="form__label form__label--2">Street Address <span class="required">*</span></label>

                                            <input type="text" name="txtAddr" id="txtAddr" runat="server" class="form__input form__input--2 mb--30" placeholder="House number and street name">

                                            
                                        </div>
                                    </div>
                                    
                                    <div class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="txtPhone" class="form__label form__label--2">Phone <span class="required">*</span></label>
                                            <input type="text" name="txtPhone" id="txtPhone" runat="server" class="form__input form__input--2">
                                        </div>
                                    </div>
                                    <div class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="txtEmail" class="form__label form__label--2">Email Address  <span class="required">*</span></label>
                                            <input type="email" name="txtEmail" id="txtEmail" runat="server" class="form__input form__input--2">
                                        </div>
                                    </div>
                                    
                                    <div class="form-row">
                                        <div class="form__group col-12">
                                            <label for="txtOrderNotes" class="form__label form__label--2">Order Notes</label>
                                            <textarea class="form__input form__input--2 form__input--textarea" id="txtOrderNotes" runat="server" name="txtOrderNotes" placeholder="Notes about your order, e.g. special notes for the order."></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 offset-xl-1 col-lg-6 mt-md--40">
                            <div class="order-details">
                                <div class="checkout-title mt--10">
                                    <h2>Your Order</h2>
                                </div>
                                <div class="table-content table-responsive mb--30">
                                    <table class="table order-table order-table-2">
                                        <thead>
                                            <tr>
                                                <th>Product</th>
                                                <th class="text-right">QTY</th>
                                            </tr>
                                        </thead>
                                        <tbody id="invoiceHtml" runat="server">
                                            <tr>
                                                <th>Aliquam lobortis est 
                                                    <strong><span>&#10005;</span>1</strong>
                                                </th>
                                                <td class="text-right">$80.00</td>
                                            </tr>
                                            <tr>
                                                <th>Auctor gravida enim 
                                                    <strong><span>&#10005;</span>1</strong>
                                                </th>
                                                <td class="text-right">$60.00</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="checkout-payment">
                                    <div class="payment-form">
                                        <div class="payment-group mt--20">
                                            <p class="mb--15">Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our privacy policy.</p>
                                            <p class="error-msg" id="lblError" runat="server"></p>
                                            <asp:Button ID="btnPlaceOrder" runat="server" class="btn btn-fullwidth btn-bg-red btn-color-white btn-hover-2" Text="Place Order" OnClick="btnPlaceOrder_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Checkout Area End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->
    <script>
            function killCookie() {
                var currentdate = new Date();
                currentdate.setDate(currentdate.getDate() - 10);
                var expires = currentdate.toUTCString();

                document.cookie = "customerID=;path=/;expires=" + expires + ";";
            }
    </script>
</asp:Content>

