<template>

    <Head>
        <title>Home</title>
        <meta type="description" content="Home information" head-key="description">
    </Head>

    <!-- Dashboard Ecommerce Starts -->
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
            <section id="dashboard-ecommerce">
                    <div class="row match-height">
                        <div class="col-md-4 col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <h1>Welcome Admin</h1>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>


        <!--        <section id="dashboard-ecommerce">
                    <div class="row match-height">
                        <div class="col-md-4 col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <h1 class="fw-bolder">Total Seals</h1>
                                    <div class="d-flex align-items-center justify-content-between pe-3">
                                        <div>
                                            <h2 class="text-success">{{ trans.totalGrand }} Tk</h2>
                                            <small class="text-warning">Total Seals Without Discount : {{ trans.totalSeals }} Tk</small>
                                        </div>
                                        <span class="text-success">
                                            <vue-feather type="trending-up" size="40"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <h2 class="fw-bolder">Total Expanse</h2>
                                    <div class="d-flex align-items-center justify-content-between pe-3">
                                        <h2 class="text-danger">{{ trans.totalExpanse }} Tk</h2>
                                        <span class="text-danger">
                                            <vue-feather type="trending-down" size="40"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <h2 class="fw-bolder">Gross Profit</h2>
                                        <span class="text-info cursor-pointer" v-c-tooltip="`(Custom Invoice Amount + Quotation Invoice Amount ) - (Custom Invoice Discount + Quotation Invoice Discount + Total Expanse ) = Gross profit`"><vue-feather type="info"/></span>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between pe-3">
                                        <h2 class="text-info">{{ trans.totalProfit }} Tk</h2>
                                        <span class="text-info">
                                            <vue-feather type="refresh-ccw" size="40"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section>
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="card-body d-flex align-items-center justify-content-between">
                                    <div>
                                        <h3 class="fw-bolder mb-75"> {{ trans.totalPay }} Tk</h3>
                                        <span>Total Payment</span>
                                    </div>
                                    <div class="avatar bg-light-success p-50">
                                        <vue-feather type="dollar-sign"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="card-body d-flex align-items-center justify-content-between">
                                    <div>
                                        <h3 class="fw-bolder mb-75">{{ trans.totalDue }} Tk</h3>
                                        <span>Total Due</span>
                                    </div>
                                    <div class="avatar bg-light-primary p-50">
                                        <span class="avatar-content">
                                            <vue-feather type="corner-down-left"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="card-body d-flex align-items-center justify-content-between">
                                    <div>
                                        <h3 class="fw-bolder mb-75">{{ trans.todayIn }} Tk</h3>
                                        <span>Today Income</span>
                                    </div>
                                    <div class="avatar bg-light-danger p-50">
                                        <span class="avatar-content">
                                            <vue-feather type="command"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="card-body d-flex align-items-center justify-content-between">
                                    <div>
                                        <h3 class="fw-bolder mb-75">{{ trans.todayExp }} Tk</h3>
                                        <span>Today Expanse</span>
                                    </div>
                                    <div class="avatar bg-light-info p-50">
                                        <vue-feather type="framer"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section>
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <Bar :data="data" :options="options" />
                                </div>
                            </div>
                        </div>
                    </div>
                </section>-->


<!--
        <section class="row">

            <div class="col-xl-12 col-md-6 col-12">
                <div class="card card-statistics">
                    <div class="card-header">
                        <h4 class="card-title">Statistics</h4>
                        &lt;!&ndash;                            <div class="d-flex align-items-center">&ndash;&gt;
                        &lt;!&ndash;                                <p class="card-text font-small-2 me-25 mb-0">Updated 1 month ago</p>&ndash;&gt;
                        &lt;!&ndash;                            </div>&ndash;&gt;
                    </div>
                    <div class="card-body statistics-body">
                        <div class="row">
                            <div class="col-xl col-sm-6 col-12 mb-2 mb-xl-0">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-primary me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="users"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.clients }}</h4>
                                        <p class="card-text font-small-3 mb-0">Clients</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl col-sm-6 col-12 mb-2 mb-xl-0">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-info me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="refresh-ccw"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.users }}</h4>
                                        <p class="card-text font-small-3 mb-0">Users</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl col-sm-6 col-12 mb-2 mb-sm-0">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-success me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="trending-up"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.website }}</h4>
                                        <p class="card-text font-small-3 mb-0">Websits</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl col-sm-6 col-12">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-danger me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="trending-down"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.work }}</h4>
                                        <p class="card-text font-small-3 mb-0">Work</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl col-sm-6 col-12">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-secondery me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="zap-off"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.platforms }}</h4>
                                        <p class="card-text font-small-3 mb-0">Platforms</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl col-sm-6 col-12">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-warning me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="star"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.packages }}</h4>
                                        <p class="card-text font-small-3 mb-0">Packages</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            &lt;!&ndash;/ Statistics Card &ndash;&gt;
        </section>
-->



    </div>
    <!-- Dashboard Ecommerce ends -->
</template>


<script setup>
import ProgressChart from "../components/ProgressChart.vue";
import {
    Chart as ChartJS,
    Title,
    Tooltip,
    Legend,
    BarElement,
    CategoryScale,
    LinearScale
} from 'chart.js'
import { Bar} from 'vue-chartjs'
import {options} from './Modules/chartConfig'
ChartJS.register(CategoryScale, LinearScale, BarElement, Title, Tooltip, Legend)


let props = defineProps({
    trans: Object,
})

/*
console.log(props.trans.tranByExp);

const data = {
    labels:['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
    datasets: [
        {
            label: 'Transaction Count',
            backgroundColor: '#d8b7ff',
            data:  props.trans.tranByCount,
        },
        {
            label: 'Transaction Amount Tk ',
            backgroundColor: '#c6ffa3',
            data:  props.trans.tranByAmount,
        },
        {
            label: 'Expanse Amount Tk ',
            backgroundColor: '#ffb5b5',
            data:  props.trans.tranByExp,
        },
    ]

    // labels: [ 'January', 'February', 'March'],
    // datasets: [
    //     {
    //         label: 'Data One',
    //         backgroundColor: '#f87979',
    //         data: [40, 20, 12]
    //     }
    // ]
}

*/


</script>
