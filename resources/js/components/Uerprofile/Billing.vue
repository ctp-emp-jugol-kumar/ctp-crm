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
                                    <h3 class="fw-bolder mb-75">0</h3>
                                    <span>Total Projects</span>
                                </div>
                                <div class="avatar bg-light-primary p-50">
                                <span class="avatar-content">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                         viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                         stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-user font-medium-4"><path
                                        d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="12" cy="7" r="4"></circle>
                                    </svg>
                                </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-between">
                                <div>
                                    <h3 class="fw-bolder mb-75">0</h3>
                                    <span>Total Seals</span>
                                </div>
                                <div class="avatar bg-light-danger p-50">
                                <span class="avatar-content">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                         viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                         stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-user-plus font-medium-4"><path
                                        d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="8.5" cy="7" r="4"></circle>
                                        <line x1="20" y1="8" x2="20" y2="14"></line>
                                        <line x1="23" y1="11" x2="17" y2="11"></line>
                                    </svg>
                                </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-between">
                                <div>
                                    <h3 class="fw-bolder mb-75">0</h3>
                                    <span>Pay Amount</span>
                                </div>
                                <div class="avatar bg-light-success p-50">
                                <span class="avatar-content">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                         viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                         stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-user-check font-medium-4"><path
                                        d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="8.5" cy="7" r="4"></circle>
                                        <polyline points="17 11 19 13 23 9"></polyline>
                                    </svg>
                                </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-between">
                                <div>
                                    <h3 class="fw-bolder mb-75">0</h3>
                                    <span>Due Payment</span>
                                </div>
                                <div class="avatar bg-light-warning p-50">
                                <span class="avatar-content">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                         viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                         stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-user-x font-medium-4"><path
                                        d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="8.5" cy="7" r="4"></circle>
                                        <line x1="18" y1="8" x2="23" y2="13"></line>
                                        <line x1="23" y1="8" x2="18" y2="13"></line>
                                    </svg>
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
    defineProps({
        transactions:[]
    })

let {formatted} = useDate();

</script>

<style scoped>




</style>
