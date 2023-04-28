<template>
    <!-- BEGIN: Content-->
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-header row">
            </div>
            <div class="content-body">
                <section class="invoice-edit-wrapper">
                    <div class="row invoice-edit">
                        <!-- Invoice Edit Left starts -->
                        <div class="col-xl-9 col-md-8 col-12">
                            <div class="card invoice-preview-card">
                                <div class="card-header">
                                    <ul>
                                        <li class="text-danger" v-for="error in props.errors">{{ error }}</li>
                                    </ul>
                                </div>

                                <!-- Header starts -->
                                <div class="card-body invoice-padding pb-0">
                                    <div class="d-flex justify-content-between flex-md-row flex-column invoice-spacing mt-0">
                                        <div class="col-md-5">
                                            <div class="logo-wrapper">
                                                <img src="../../../../public/creativeTechPark.png" alt="" height="30">
                                            </div>
                                            <h3>Creative Tech Park</h3>
                                            <p class="card-text mb-25">
                                                Imperial Irish Kingdom, Mo-03
                                                (3rd Floor), Merul Badda, Dhaka 1212
                                            </p>
                                            <p class="p-0 m-0">Phone: +8801639-200002</p>
                                            <p>Email: info@creativetechpark.com</p>
                                        </div>
                                        <div class="invoice-number-date mt-md-0 mt-2">

                                            <div class="d-flex align-items-center justify-content-md-end mb-1">
                                                Quotation Id:  <vue-feather type="hash" size="15"/>_{{  props.invoice.invoice_id }}{{ props.invoice.id }}
                                            </div>
                                            <div class="d-flex align-items-center mb-1">
                                                <p>Valid Date: {{moment(props.invoice.created_at).format('D/M/Y')  }}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Header ends -->

                                <hr class="invoice-spacing" />

                                <!-- Address and Contact starts -->
                                <div class="card-body invoice-padding pt-0">
                                    <div class="row invoice-spacing">
                                        <div class="col-xl-8 p-0">
                                            <h6 class="">Quotation To:</h6>
                                            <div class="row">
                                                <div class="col-md-10" v-if="props.invoice.client">
                                                    <h6 class="mb-25">{{ props.invoice.client.name }}</h6>
                                                    <p class="card-text mb-25">{{ props.invoice.client.company }}</p>
                                                    <p class="card-text mb-25">{{ props.invoice.client.address }}</p>
                                                    <p class="card-text mb-25">{{ props.invoice.client.phone ?? props.invoice.client.secondary_phone }}</p>
                                                    <p class="card-text mb-0">{{ props.invoice.client.email ??  props.invoice.client.secondary_email}}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Address and Contact ends -->
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>Details</th>
                                        <th class="text-end">Price</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr v-for="(item) in props.pref" v-if="props.pref.length">
                                        <td>
                                            <span class="newlineStringStyle">{{ item.name }}</span>
                                        </td>
                                        <td class="text-end price_qty">{{ item.price }} * {{ item.qty }}</td>
                                    </tr>
                                    </tbody>
                                </table>




                                <!-- Invoice Total starts -->
                                <div class="card-body invoice-padding">
                                    <div class="row invoice-sales-total-wrapper">
                                        <div class="col-md-6 order-md-1 order-2 mt-md-0 mt-3">
                                            <div class="d-flex align-items-center mb-1">
                                                <label class="form-label">Salesperson: {{ props.invoice.user.name }}</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6 d-flex justify-content-end order-md-2 order-1">
                                            <div class="invoice-total-wrapper">
                                                <!--                                                <div class="invoice-total-item">
                                                                                                    <p class="invoice-total-title">Subtotal:</p>
                                                                                                    <p class="invoice-total-amount">{{ props.subtotal }} Tk</p>
                                                                                                </div>
                                                                                                <div class="invoice-total-item">
                                                                                                    <p class="invoice-total-title">Discount:</p>
                                                                                                    <p class="invoice-total-amount">$28</p>
                                                                                                </div>
                                                                                                <div class="invoice-total-item">
                                                                                                    <p class="invoice-total-title">Tax:</p>
                                                                                                    <p class="invoice-total-amount">21%</p>
                                                                                                </div>-->
                                                <div class="invoice-total-item">
                                                    <p class="invoice-total-title">Total:</p>
                                                    <p class="invoice-total-amount">{{ props.invoice.total_price }}.00</p>
                                                </div>
                                                <div class="invoice-total-item">
                                                    <p class="invoice-total-title">Discount:</p>
                                                    <p class="invoice-total-amount">{{ props.invoice.discount }}.00</p>
                                                </div>
                                                <hr class="my-50" />
                                                <div class="invoice-total-item">
                                                    <strong class="invoice-total-title">Grand Total:</strong>
                                                    <strong class="invoice-total-amount">{{ props.invoice.grand_total }}.00</strong>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Invoice Total ends -->

                                <hr class="invoice-spacing mt-0" />

                                <div class="card-body invoice-padding py-0">
                                    <!-- Invoice Note starts -->
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="mb-2">
                                                <label for="note" class="form-label fw-bold">Note:</label>
                                                <p id="note">{{ props.invoice.note }}</p>
                                                <p class="text-justify"></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Invoice Note ends -->
                                </div>
                            </div>
                        </div>
                        <!-- Invoice Edit Left ends -->

                        <!-- Invoice Edit Right starts -->
                        <div class="col-xl-3 col-md-4 col-12">
                            <div class="card">
                                <div class="card-body">
                                    <a :href="props.url.edit_url" class="btn btn-primary w-100 mb-75">
                                        Edit Invoice
                                    </a>
                                    <a :href="props.url.invoice_url"  class="btn btn-outline-primary w-100 mb-75">Download PDF</a>
                                    <a :href="props.url.show_url+'?print=true'"  class="btn btn-outline-primary w-100 mb-75">Print Invoice</a>
                                    <button type="button" class="btn btn-outline-primary w-100 mb-75" data-bs-toggle="modal"
                                            data-bs-target="#givenDiscount">Given Discount</button>

                                    <button type="button" class="btn btn-outline-primary w-100 mb-75" data-bs-toggle="modal"
                                            data-bs-target="#givenDiscount">Payment History</button>

                                    <button type="button" class="btn btn-success w-100 mb-75" data-bs-toggle="modal"
                                            data-bs-target="#addPayment">Add Payment</button>
                                </div>
                            </div>
                            <!--                            <div class="mt-2">
                                                            <p class="mb-50">Accept payments via</p>
                                                            <select class="form-select">
                                                                <option value="Bank Account">Bank Account</option>
                                                                <option value="Paypal">Paypal</option>
                                                                <option value="UPI Transfer">UPI Transfer</option>
                                                            </select>
                                                            <div class="invoice-terms mt-1">
                                                                <div class="d-flex justify-content-between">
                                                                    <label class="invoice-terms-title mb-0" for="paymentTerms">Payment Terms</label>
                                                                    <div class="form-check form-switch">
                                                                        <input type="checkbox" class="form-check-input" checked id="paymentTerms" />
                                                                        <label class="form-check-label" for="paymentTerms"></label>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex justify-content-between py-1">
                                                                    <label class="invoice-terms-title mb-0" for="clientNotes">Client Notes</label>
                                                                    <div class="form-check form-switch">
                                                                        <input type="checkbox" class="form-check-input" checked id="clientNotes" />
                                                                        <label class="form-check-label" for="clientNotes"></label>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex justify-content-between">
                                                                    <label class="invoice-terms-title mb-0" for="paymentStub">Payment Stub</label>
                                                                    <div class="form-check form-switch">
                                                                        <input type="checkbox" class="form-check-input" id="paymentStub" />
                                                                        <label class="form-check-label" for="paymentStub"></label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>-->
                        </div>
                        <!-- Invoice Edit Right ends -->
                    </div>

                    <!-- Send Invoice Sidebar -->
                    <div class="modal modal-slide-in fade" id="createInvoice" aria-hidden="true">
                        <div class="modal-dialog sidebar-lg">
                            <div class="modal-content p-0">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">×</button>
                                <div class="modal-header mb-1">
                                    <h5 class="modal-title">
                                        <span class="align-middle">Create Invoice</span>
                                    </h5>
                                </div>
                                <div class="modal-body flex-grow-1">
                                    <form @submit.prevent="createInvoice">
                                        <div class="mb-1">
                                            <label class="form-label">Total Price</label>
                                            <input type="text" class="form-control" :value="props.invoice.grand_total" readonly disabled/>
                                        </div>


                                        <div class="mb-1">
                                            <label class="form-label">Given Discount</label>
                                            <input type="text" v-model="invoiceFormData.discount" @input="invoiceDiscount" class="form-control" placeholder="If want to given again discount..."/>
                                        </div>

                                        <div class="mb-1">
                                            <label class="form-label">Payable Amount</label>
                                            <input type="text" class="form-control" :value="payableAmount" readonly disabled/>
                                        </div>


                                        <div class="mb-1">
                                            <label class="form-label">Total pay</label>
                                            <input type="text" v-model="invoiceFormData.pay" @input="payAmount" class="form-control" placeholder="If want to given again discount..."/>
                                        </div>

                                        <div class="mb-1">
                                            <label class="form-label">Total Due</label>
                                            <input type="text" class="form-control" :value="dueAmount" readonly disabled/>
                                        </div>

                                        <div class="mb-1">
                                            <label class="form-label"></label>
                                            <v-select :options="props.paymentMethods"
                                                      :reduce="payment => payment.id"
                                                      v-model="invoiceFormData.payment_method"
                                                      label="name"  placeholder="Select Payment Method"></v-select>
                                        </div>


                                        <div class="mb-1">
                                            <label class="form-label">Note</label>
                                            <textarea class="form-control"
                                                      v-model="invoiceFormData.note"
                                                      cols="3" rows="5" placeholder="Want to Say Something...?"></textarea>
                                        </div>

                                        <div class="mb-1 d-flex flex-wrap mt-2">
                                            <button type="submit" class="btn btn-primary me-1" data-bs-dismiss="modal">Create</button>
                                            <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Send Invoice Sidebar -->

                    <!-- Add Payment Sidebar -->
                    <div class="modal modal-slide-in fade" id="addPayment" aria-hidden="true">
                        <div class="modal-dialog sidebar-lg">
                            <div class="modal-content p-0">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">×</button>
                                <div class="modal-header mb-1">
                                    <h5 class="modal-title">
                                        <span class="align-middle">Add Payment</span>
                                    </h5>
                                </div>
                                <div class="modal-body flex-grow-1">
                                    <form>
                                        <div class="mb-1">
                                            <input id="balance" class="form-control" type="text" value="Invoice Balance: 5000.00" disabled />
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label" for="amount">Payment Amount</label>
                                            <input id="amount" class="form-control" type="number" placeholder="$1000" />
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label" for="payment-date">Payment Date</label>
                                            <input id="payment-date" class="form-control date-picker" type="text" />
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label" for="payment-method">Payment Method</label>
                                            <select class="form-select" id="payment-method">
                                                <option value="" selected disabled>Select payment method</option>
                                                <option value="Cash">Cash</option>
                                                <option value="Bank Transfer">Bank Transfer</option>
                                                <option value="Debit">Debit</option>
                                                <option value="Credit">Credit</option>
                                                <option value="Paypal">Paypal</option>
                                            </select>
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label" for="payment-note">Internal Payment Note</label>
                                            <textarea class="form-control" id="payment-note" rows="5" placeholder="Internal Payment Note"></textarea>
                                        </div>
                                        <div class="d-flex flex-wrap mb-0">
                                            <button type="button" class="btn btn-primary me-1" data-bs-dismiss="modal">Send</button>
                                            <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Add Payment Sidebar -->
                    <!-- Add Payment Sidebar -->
                    <div class="modal modal-slide-in fade" id="givenDiscount" aria-hidden="true">
                        <div class="modal-dialog sidebar-lg">
                            <div class="modal-content p-0">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">×</button>
                                <div class="modal-header mb-1">
                                    <h5 class="modal-title">
                                        <span class="align-middle">Given Discount</span>
                                    </h5>
                                </div>
                                <div class="modal-body flex-grow-1">
                                    <form>
                                        <div class="mb-1">
                                            <input class="form-control" type="text" :value="'Grand Total Price:'+props.invoice.total_price" disabled />
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label" for="amount">Discount Amount</label>
                                            <input class="form-control" type="number" v-model="formData.discount" @input="discountInput" placeholder="e.g 1000 ৳" />
                                        </div>
                                        <div class="mb-1">
                                            <input class="form-control" type="text" :value="'New Price:'+newPrice" disabled />
                                        </div>

                                        <div class="d-flex flex-wrap mb-0">
                                            <button type="button" class="btn btn-primary me-1" data-bs-dismiss="modal" @click="addDiscount">Send</button>
                                            <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Add Payment Sidebar -->
                </section>
            </div>
        </div>
    </div>
    <!-- END: Content-->
</template>



<script setup>
import moment from "moment";
import {computed, ref} from "vue";
import {useForm} from "@inertiajs/inertia-vue3";

const props = defineProps({
    invoice:Object|[]|null,
    pref:Array|[]|null,
    paymentMethods:Object|[]|null,
    url:Array|[]|null,
    errors:Object|{}|null,
})

const formData = useForm({
    discount:0
})

const invoiceFormData = useForm({
    quotationId:null,
    totalPrice:null,
    discount:null,
    pay:null,
    payment_method:null,
    note:null,
})

const newPrice= ref(0)
const payableAmount = ref(0)
const dueAmount = ref(0)
const discountInput = (event) =>{
    newPrice.value = props.invoice.total_price - event.target.value
}

const invoiceDiscount = (event) =>{
    invoiceFormData.pay = null;
    let amount = props.invoice.grand_total - event.target.value
    payableAmount.value = amount;
    dueAmount.value = amount;
}

const payAmount = (event) =>{
    dueAmount.value = payableAmount.value - event.target.value
}

const processing=ref(false);
const addDiscount = () =>{
    formData.post(props.url.add_discount ,{
        preserveState: true,
        onStart: () =>{ processing.value = true},
        onFinish: () => {processing.value = false},
        onSuccess: ()=> { $toast.success('Quotation Discount Done...') },
        onError: ()=> { $toast.error('Have An Error. Please Try Again.') },
    })
}

const createInvoice =()=>{
    invoiceFormData.post(props.url.create_invoice ,{
        preserveState: true,
        onStart: () =>{ processing.value = true},
        onFinish: () => {processing.value = false},
        onSuccess: ()=> { $toast.success('Invoice Created Successfully Done...') },
        onError: ()=> { $toast.error('Have An Error. Please Try Again.') },
    })
}



const preparedForShow = computed(()=>{
    let pref = [];
    JSON.parse(props.quotation.items).map(item =>{
        if (item.checkPackages.length){
            item.checkPackages.map(pack =>{
                pref.push({
                    name:pack.descriptions,
                    qty:pack.qty,
                    price:pack.price,
                })
            })
        }
        if (item.checkFeatrueds.length){
            item.checkFeatrueds.map(fes =>{
                pref.push({
                    name:fes.name,
                    qty:fes.qty,
                    price:fes.price,
                })
            })
        }
    })
    return pref;
})


</script>

<style lang="sass" scoped>
@import "../../../sass/base/pages/app-invoice.scss"

</style>

<style lang="css">

.newlineStringStyle {
    white-space: pre-wrap;
    font-size: 11px;
}
.vs__dropdown-toggle{
    border: 1px solid;
}
</style>
