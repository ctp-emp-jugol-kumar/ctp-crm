<template>
    <div class="row" v-if="props.info.invoice">
        <div class="col-md-12">
            <div class="card border-bottom p-4">
                <div class="card-body">
                    <h3 class="mb-4 card-title">Budget </h3>
                    <div class="d-flex justify-content-between mb-3">
                        <div>
                            <span><span class="text-dark fw-bold">{{ props.info.invoice?.grand_total ?? 0}} Tk</span>(Total) </span>
                        </div>
                        <div>
                            <span><span class="text-dark fw-bold">{{ props.info.invoice?.due ?? 0}} Tk</span>Remaining </span>
                        </div>
                    </div>
                    <div class="progress" style="height: 8px;">
                        <div class="progress-bar" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                        <div class="progress-bar bg-success" role="progressbar" style="width: 18%" aria-valuenow="18" aria-valuemin="0" aria-valuemax="100"></div>
                        <div class="progress-bar bg-danger" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                        <div class="progress-bar bg-warning" role="progressbar" style="width: 16%" aria-valuenow="16" aria-valuemin="0" aria-valuemax="100"></div>
                        <div class="progress-bar bg-info" role="progressbar" style="width: 22%" aria-valuenow="22" aria-valuemin="0" aria-valuemax="100"></div>
                        <div class="progress-bar bg-success" role="progressbar" style="width: 30%" aria-valuenow="22" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="row border-bottom">
                        <!-- col -->
                        <div class="col-lg-4 col-md-12 col-12">
                            <div class="d-flex align-items-center justify-content-between p-4">
                                <div class="mb-4 mb-lg-0">
                                    <h2 class="h1 fw-bold mb-0">{{ props.info.invoice?.grand_total ?? 0}}</h2>
                                    <p class="mb-0 ">Total Budget</p>
                                </div>
                                <div class="ms-3">
                                    <div style="padding: 1rem 1.1rem" class="d-flex icon-shape icon-lg bg-light-primary text-primary rounded-circle">
                                        <vue-feather type="pie-chart"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- col -->
                        <div class="col-lg-4 col-md-12 col-12 border-start">
                            <div class="d-flex align-items-center justify-content-between p-4">
                                <div class="mb-4 mb-lg-0">
                                    <h2 class="h1 fw-bold mb-0">{{ props.info.invoice?.pay ?? 0}}</h2>
                                    <p class="mb-0 ">Total Pay</p>
                                </div>
                                <div class="ms-3">
                                    <div style="padding: 1rem 1.1rem" class="d-flex icon-shape icon-lg bg-light-success text-success rounded-circle ">
                                        <vue-feather type="arrow-up"/>
                                    </div>

                                </div>
                            </div>

                        </div>
                        <!-- col -->
                        <div class="col-lg-4 col-md-12 col-12 border-start">
                            <div class="d-flex align-items-center justify-content-between p-4">
                                <div class="mb-4 mb-lg-0">
                                    <h2 class="h1 fw-bold mb-0">{{ props.info.invoice?.due ?? 0}}</h2>
                                    <p class="mb-0 ">Total Due</p>
                                </div>
                                <div class="ms-3">
                                    <div style="padding: 1rem 1.1rem" class="d-flex icon-shape icon-lg bg-light-danger text-danger rounded-circle">
                                        <vue-feather type="arrow-down"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-1" v-if="props.info.invoice">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h2>Transaction History</h2>
                    <table class="table table-striped table-borderless table-hover">
                        <thead>
                        <tr>
                            <th class="py-1">Payment Id</th>
                            <th class="py-1">Taken By</th>
                            <th class="py-1">Transaction Date</th>
                            <th class="py-1">Amount</th>
                            <th class="py-1">Pay Total</th>
                            <th class="py-1">Total Due</th>
                            <th class="py-1">Payment Method</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr v-for="(item, index) in props.info.invoice?.transactions" :key="item.id">
                            <td>{{ 'Tran_#'+item.transaction_id }}</td>
                            <td>{{ item.received_by?.name }}</td>
                            <td>{{ moment(item.payment_date).format('ll') }}</td>
                            <td>{{ item.amount }}</td>
                            <td>{{ item.pay }}</td>
                            <td>{{ item.due }}</td>
                            <td>{{ item.method?.name }}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
    import moment from "moment";
    const props = defineProps({
        info:{
            type:Object,
            required:true,
        }
    })
</script>

<style scoped>

</style>
