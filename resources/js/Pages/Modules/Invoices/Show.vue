<template>


    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-start mb-0">Invoice Form</h2>
                            <div class="breadcrumb-wrapper">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li>
                                    <li class="breadcrumb-item active">Invoice</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content-header-right text-md-end col-md-3 col-12 d-md-block d-none">
                    <div class="mb-1 breadcrumb-right">
                        <div class="dropdown">
                            <button class="btn-icon btn btn-primary btn-round btn-sm dropdown-toggle" type="button"
                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                data-feather="grid"></i></button>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="app-todo.html">
                                    <i class="me-1" data-feather="check-square"></i>
                                    <span class="align-middle">Todo</span></a>
                                <a class="dropdown-item" href="app-chat.html">
                                    <i class="me-1" data-feather="message-square"></i>
                                    <span class="align-middle">Chat</span></a>
                                <a class="dropdown-item" href="app-email.html">
                                    <i class="me-1" data-feather="mail"></i>
                                    <span class="align-middle">Email</span></a>
                                <a class="dropdown-item" href="app-calendar.html">
                                    <i class="me-1" data-feather="calendar"></i>
                                    <span class="align-middle">Calendar</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">
                <section class="invoice-preview-wrapper">
                    <div class="row invoice-preview">
                        <div class="card">
                            <div class="card-header border-bottom d-flex justify-content-between">
                                <h4 class="card-title">Invoices Information's </h4>
                                <a class="dt-button add-new btn btn-primary" href="invoices/create">Add Invoices</a>
                            </div>
                        </div>

                        <!-- Invoice -->
                        <div class="col-xl-9 col-md-9 col-12 mx-auto">
                            <div class="card invoice-preview-card">
                                <div class="card-body invoice-padding pb-0">
                                    <!-- Header starts -->
                                    <div
                                        class="d-flex justify-content-between flex-md-row flex-column invoice-spacing mt-0">
                                        <div>
                                            <div class="logo-wrapper">
                                                <svg viewBox="0 0 139 95" version="1.1"
                                                     xmlns="http://www.w3.org/2000/svg"
                                                     xmlns:xlink="http://www.w3.org/1999/xlink" height="24">
                                                    <defs>
                                                        <linearGradient id="invoice-linearGradient-1" x1="100%"
                                                                        y1="10.5120544%"
                                                                        x2="50%" y2="89.4879456%">
                                                            <stop stop-color="#000000" offset="0%"></stop>
                                                            <stop stop-color="#FFFFFF" offset="100%"></stop>
                                                        </linearGradient>
                                                        <linearGradient id="invoice-linearGradient-2" x1="64.0437835%"
                                                                        y1="46.3276743%" x2="37.373316%" y2="100%">
                                                            <stop stop-color="#EEEEEE" stop-opacity="0"
                                                                  offset="0%"></stop>
                                                            <stop stop-color="#FFFFFF" offset="100%"></stop>
                                                        </linearGradient>
                                                    </defs>
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <g transform="translate(-400.000000, -178.000000)">
                                                            <g transform="translate(400.000000, 178.000000)">
                                                                <path class="text-primary"
                                                                      d="M-5.68434189e-14,2.84217094e-14 L39.1816085,2.84217094e-14 L69.3453773,32.2519224 L101.428699,2.84217094e-14 L138.784583,2.84217094e-14 L138.784199,29.8015838 C137.958931,37.3510206 135.784352,42.5567762 132.260463,45.4188507 C128.736573,48.2809251 112.33867,64.5239941 83.0667527,94.1480575 L56.2750821,94.1480575 L6.71554594,44.4188507 C2.46876683,39.9813776 0.345377275,35.1089553 0.345377275,29.8015838 C0.345377275,24.4942122 0.230251516,14.560351 -5.68434189e-14,2.84217094e-14 Z"
                                                                      style="fill: currentColor"></path>
                                                                <path
                                                                    d="M69.3453773,32.2519224 L101.428699,1.42108547e-14 L138.784583,1.42108547e-14 L138.784199,29.8015838 C137.958931,37.3510206 135.784352,42.5567762 132.260463,45.4188507 C128.736573,48.2809251 112.33867,64.5239941 83.0667527,94.1480575 L56.2750821,94.1480575 L32.8435758,70.5039241 L69.3453773,32.2519224 Z"
                                                                    fill="url(#invoice-linearGradient-1)"
                                                                    opacity="0.2"></path>
                                                                <polygon fill="#000000" opacity="0.049999997"
                                                                         points="69.3922914 32.4202615 32.8435758 70.5039241 54.0490008 16.1851325"></polygon>
                                                                <polygon fill="#000000" opacity="0.099999994"
                                                                         points="69.3922914 32.4202615 32.8435758 70.5039241 58.3683556 20.7402338"></polygon>
                                                                <polygon fill="url(#invoice-linearGradient-2)"
                                                                         opacity="0.099999994"
                                                                         points="101.428699 0 83.0667527 94.1480575 130.378721 47.0740288"></polygon>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </svg>
                                                <h3 class="text-primary invoice-logo">Creative Tech Park</h3>
                                            </div>
                                            <p>Imperial Irish Kingdom, Mo-03 <br>(3rd Floor), Merul Badda, Dhaka 1212</p>
                                            <p>Phone: +8801639-200002</p>
                                            <p>Email: info@creativetechpark.com</p>
                                        </div>
                                        <div class="mt-md-0 mt-2">
                                            <h4 class="invoice-title">
                                                Invoice
                                                <span class="invoice-number">#{{ info.invoice_id }}</span>
                                            </h4>
                                            <div class="invoice-date-wrapper">
                                                <p class="invoice-date-title">Date Issued:</p>
                                                <p class="invoice-date">{{ info.created }}</p>
                                            </div>
<!--                                            <div class="invoice-date-wrapper">-->
<!--                                                <p class="invoice-date-title">Due Date:</p>-->
<!--                                                <p class="invoice-date">29/08/2020</p>-->
<!--                                            </div>-->
                                        </div>
                                    </div>
                                    <!-- Header ends -->
                                </div>

                                <hr class="invoice-spacing">

                                <!-- Address and Contact starts -->
                                <div class="card-body invoice-padding pt-0">
                                    <div class="row invoice-spacing">
                                        <div class="col-xl-8 p-1">
                                            <h6 class="mb-2">Invoice To:</h6>
                                            <h6 class="mb-25">{{ info.client.name }}</h6>
                                            <p class="card-text mb-25">{{ info.client.company }}</p>
                                            <p class="card-text mb-25">{{ info.client.address }}</p>
                                            <p class="card-text mb-25">{{ info.client.phone }}</p>
                                            <p class="card-text mb-0">{{ info.client.email }}</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- Address and Contact ends -->

                                <!-- Invoice Description starts -->
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th class="py-1">Task description</th>
                                            <th class="py-1">Price</th>
                                            <th class="py-1">Discount</th>
                                            <th class="py-1">Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            <tr v-for="(item, index) in itemsWithTotal" :key="item.id">
                                                <td class="py-1">
                                                    <p class="card-text fw-bold mb-25" v-html="item.item_name"></p>
                                                </td>
                                                <td class="py-1">
                                                    <span class="fw-bold">{{ item.price }} Tk</span>
                                                </td>
                                                <td class="py-1">
                                                    <span class="fw-bold">{{ item.discount ?? 0 }} Tk</span>
                                                </td>
                                                <td class="py-1">
                                                    <span class="fw-bold">{{ item.total }} Tk</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="card-body invoice-padding pb-0">
                                    <div class="row invoice-sales-total-wrapper">
                                        <div class="col-md-8">
                                            <p class="card-text mb-0">
                                                <span class="fw-bold">Salesperson:</span> <span
                                                class="ms-75">{{ info.creator.name }}</span>
                                            </p>
                                        </div>
                                        <div class="col-md-4">
                                            <table class="table table-borderless table-striped">
                                                <tr>
                                                    <th class="py-25">Sub Total</th>
                                                    <td class="py-25 text-end">{{ subTotal }} Tk</td>
                                                </tr>
                                                <tr class="border-bottom pb-1">
                                                    <td class="py-25">Total Discount</td>
                                                    <td class="py-25 text-end">{{ totalDiscount }} Tk</td>
                                                </tr>
                                                <tr>
                                                    <td class="py-1 pt-0">Grand Total</td>
                                                    <td class="py-1 text-end">{{ grandTotal }} Tk</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Invoice Description ends -->

                                <hr class="invoice-spacing">

                                <!-- Invoice Note starts -->
                                <div class="card-body invoice-padding pt-0">
                                    <div class="row">
                                        <div class="col-12">
                                            <span class="fw-bold">Note:</span>
                                            <span>It was a pleasure working with you and your team. We hope you will keep us in mind for future freelance
                                                projects. Thank You!</span>
                                        </div>
                                    </div>


                                    <div class="row mt-5">
                                        <div class="col-12">
                                            <p id="inword"><strong>Inword:</strong> 1200 Taka Only.</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-3">
                                            <h3>Note:</h3>
                                            <span id="mb-20">
                notes
            </span>
                                            <br>
                                            <br>
                                            <br>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <p class="text-center">This is an electronically generated document, no signature is
                                                required.</p>
                                            <p class="text-center">Created By {{ info.creator.name }}</p>
                                        </div>
                                    </div>
                                    <div class="page-break"></div>
                                    <div class="row">
                                        <div class="col-12">
                                            <h3>Payment Mehod:</h3>
                                            <p>Pay Direct to Our Corporate Bank Account</p>
                                            <table class="table" width="100%">
                                                <thead>
                                                <tr>
                                                    <th>Bank Name</th>
                                                    <th>Account Name</th>
                                                    <th>Account No</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>EASTERN BANK LTD</td>
                                                    <td>CREATIVE TECH PARK</td>
                                                    <td>1241070056170</td>
                                                </tr>
                                                <tr>
                                                    <td>THE CITY BANK LTD</td>
                                                    <td>CREATIVE TECH PARK</td>
                                                    <td>1502467424001</td>
                                                </tr>
                                                <tr>
                                                    <td>DUTCH BANGLA BANK LTD</td>
                                                    <td>CREATIVE TECH PARK</td>
                                                    <td>246.110.0005044</td>
                                                </tr>
                                                <tr>
                                                    <td>PREMIER BANK LTD</td>
                                                    <td>CREATIVE TECH PARK</td>
                                                    <td>13611100000331</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <p><strong>Pay Using Our Merchant Mobile Banking Account:</strong></p>
                                            <p><strong>Bkash: 01639200002 (Payment)</strong></p>
                                            <ul>
                                                <li>Go to Your bKash Mobile Menu by dialing *247#</li>
                                                <li>Choose "Payment"</li>
                                                <li>Enter Merchant bKash Account Number 01639200002</li>
                                                <li>Enter the amount (Invoice Amount)</li>
                                                <li>Enter a reference (Invoice No/ Your Name)</li>
                                                <li>Enter Counter Number 0</li>
                                                <li>Now enter your bKash Mobile Menu PIN to Confirm!</li>
                                                <li>Done! You will receive a confirmation message from bKash*</li>
                                            </ul>
                                            <h3>Direct Payment Bill Online at <a href="https://creativetechpark.com/pay" target="_blank">https://creativetechpark.com/pay</a>
                                            </h3>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-6">
                                            <h3>Payment Policy:</h3>
                                            <p v-html="info.invoice.privicy_and_policy"></p>
                                        </div>
                                    </div>

                                    <div class="row mb-50">
                                        <div class="col-6">
                                            <h3>Terms of Service:</h3>
                                            <p v-html="info.invoice.trams_and_condition"></p>
                                        </div>
                                    </div>
                                </div>
                                <!-- Invoice Note ends -->
                            </div>
                        </div>
                        <!-- /Invoice -->


                    </div>
                </section>
            </div>
        </div>
    </div>


</template>
<script>

</script>
<script setup>
    import { computed } from "vue";
    let props = defineProps({
        info: Object,
    });

    let itemsWithTotal = computed(() => {
        return props.info.invoice_item.map(a =>{
            return {...a, total: a.price - a.discount}
        })
    });

    let subTotal = computed(()=>{
        let sum = 0;
        props.info.invoice_item.map(a =>{
            sum = sum + a.price
        })
        return sum;
    })


    let totalDiscount = computed(()=>{
        let sum = 0;
        props.info.invoice_item.map(a =>{
            sum = sum + a.discount
        })
        return sum;
    })

    let grandTotal = computed(()=>{
        let sum = 0;
        props.info.invoice_item.map(a =>{
            sum = sum + (a.price - a.discount)
        })
        return sum;
    })


</script>



<style lang="css">

</style>
