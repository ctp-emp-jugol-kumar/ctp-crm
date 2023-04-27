<template>
    <div>
        <div class="row mt-5">
            <div class="col">
                <div class="card-title">
                    <h2>Billing Information</h2>
                </div>
                <div class="mt-2 row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-between">
                                <div>
                                    <h3 class="fw-bolder mb-75">{{ subTotal }} Tk</h3>
                                    <span>Total Amount</span>
                                </div>
                                <div class="avatar bg-light-primary p-50">
                                    <span class="avatar-content">
                                        <vue-feather type="dollar-sign"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-between">
                                <div>
                                    <h3 class="fw-bolder mb-75">{{ payTotal }} Tk</h3>
                                    <span>Total Pay</span>
                                </div>
                                <div class="avatar bg-light-success p-50">
                                    <span class="avatar-content">
                                        <vue-feather type="dollar-sign"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-between">
                                <div>
                                    <h3 class="fw-bolder mb-75">{{ dueTotal }} Tk</h3>
                                    <span>Total Due</span>
                                </div>
                                <div class="avatar bg-light-warning p-50">
                                    <span class="avatar-content">
                                        <vue-feather type="dollar-sign"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-between">
                                <div>
                                    <h3 class="fw-bolder mb-75">{{ doscountTotal }} Tk</h3>
                                    <span>Total Discount</span>
                                </div>
                                <div class="avatar bg-light-info p-50">
                                    <span class="avatar-content">
                                        <vue-feather type="dollar-sign"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Project table -->
        <div class="card">
            <div class="table-responsive">
                <table class="table table-striped table-borderless">
                    <thead>
                    <tr>
                        <th class="py-1">Taken By</th>
                        <th class="py-1">Transaction Date</th>
                        <th class="py-1">Amount</th>
                        <th class="py-1">Discount</th>
                        <th class="py-1">Pay Total</th>
                        <th class="py-1">Sub Total</th>
                        <th class="py-1">Total Due</th>
                        <th class="py-1">Payment Method</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(item, index) in transactions" :key="item.id">
                        <td class="py-1">
                            <Link href="#" class="text-decoration-none">
                                {{ item?.user?.name }}
                            </Link>
                        </td>
                        <td>
                            {{ formatted(item.date) }}
                        </td>
                        <td class="py-1">
                            <span class="fw-bold">{{ item.amount }} Tk</span>
                        </td>
                        <td class="py-1">
                            <span class="fw-bold">{{ item.discount ?? 0 }} Tk</span>
                        </td>
                        <td class="py-1">
                            <span class="fw-bold">{{ item.pay_amount }} Tk</span>
                        </td>
                        <td class="py-1">
                            <span class="fw-bold">{{ item.old_total_pay }} Tk</span>
                        </td>
                        <td class="py-1">
                            <span class="fw-bold">{{ item.total_due }} Tk</span>
                        </td>
                        <td class="py-1">
                            <span>{{ item.method.name }}</span>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- /Project table -->
    </div>
</template>
<script setup>
import {useDate} from '../../composables/useDate.js'
import {computed, ref} from 'vue'
    const props = defineProps({
        transactions:[]
    })

let {formatted} = useDate();



let subTotal = computed(()=>{
    let sum = 0;
    props.transactions.map(a =>{
        sum = sum + a.total_due + a.pay_amount
    })
    return sum;
})

let payTotal = computed(()=>{
    let sum = 0;
    props.transactions.map(a =>{
        sum = sum + a.pay_amount
    })
    return sum;
})

let dueTotal = computed(()=>{
    let sum = 0;
    props.transactions.map(a =>{
        sum = sum + a.total_due
    })
    return sum;
})
let doscountTotal = computed(()=>{
    let sum = 0;
    props.transactions.map(a =>{
        sum = sum + a.discount
    })
    return sum;
})

// const paymentAmount = ref(0)
//
// let totalDiscount = computed(()=>{
//     let sum = 0;
//     props.info.invoice_item.map(a =>{
//         sum = sum + a.discount
//     })
//     return sum;
// })
//
// let grandTotal = computed(()=>{
//     let sum = 0;
//     props.info.invoice_item.map(a =>{
//         sum = sum + (a.price - a.discount)
//     })
//     createForm.grandTotal = sum
//     return sum;
// })
//
//


</script>

<style scoped>




</style>
