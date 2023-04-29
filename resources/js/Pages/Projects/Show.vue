<template>

    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <section class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12 mb-2">
                        <!-- Page header -->
                        <div class="d-lg-flex align-items-center justify-content-between">
                            <div class="mb-2 mb-lg-0">
                                <h1 class="mb-0 h2 fw-bold text-capitalize">{{ info.name }}</h1>
                            </div>
                            <div class="d-flex align-items-center">
                                <!-- avatar group -->

                                <div class="avatar-group mt-50">
                                    <div v-c-tooltip="developer.name"
                                        title=""
                                        class="avatar pull-up"
                                        data-bs-original-title="Elicia Rieske"
                                        v-for="(developer, index) in info.users" :key="developer.id">
                                        <img :src="developer.photo" alt="Avatar" height="30" width="30">
                                    </div>
                                    <div class="avatar pull-up add-new-user"  v-c-tooltip="'Assign New User'">
                                        +
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- row  -->
                <div class="col-12">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" data-bs-toggle="tab"
                                    data-bs-target="#home"
                                    type="button" role="tab"
                                    aria-controls="home"
                                    aria-selected="true">Overview</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link"
                                    id="profile-tab" data-bs-toggle="tab"
                                    data-bs-target="#profile" type="button"
                                    role="tab" aria-controls="profile"
                                    aria-selected="false">Create Notes</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="row">

                                <div class="col-md-12 col-xl-8 col-12">
                                    <div class="row">
                                        <div class="col-12 mb-2">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h4 class="mb-0">Project Summary</h4>
                                                </div>
                                                <div class="card-body">
                                                    <p class="newlineStringStyle">{{ info.description }}</p>

                                                    <ul class="list-group list-group-flush">
                                                        <li class="list-group-item px-0">
                                                            <div class="d-flex justify-content-between align-items-center">
                                                                <div class="d-flex align-items-center">
                                                                    <vue-feather type="calendar"/>
                                                                    <div class="ms-2">
                                                                        <h5 class="mb-0 text-body">Start Date</h5>
                                                                    </div>
                                                                </div>
                                                                <div>
                                                                    <div>
                                                                        <p class="text-dark mb-0 fw-semibold">{{ moment(info.start).format('D MMM  YYYY') }}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="list-group-item px-0">
                                                            <div class="d-flex justify-content-between align-items-center">
                                                                <div class="d-flex align-items-center">
                                                                    <vue-feather type="calendar"/>
                                                                    <div class="ms-2">
                                                                        <h5 class="mb-0 text-body">End Date</h5>
                                                                    </div>
                                                                </div>
                                                                <div>
                                                                    <div>
                                                                        <p class="text-dark mb-0 fw-semibold">{{ moment(info.end).format('D MMM  YYYY') }}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="list-group-item  px-0">
                                                            <div class="d-flex justify-content-between align-items-center">
                                                                <div class="d-flex align-items-center">
                                                                    <vue-feather type="clock"/>
                                                                    <div class="ms-2">
                                                                        <h5 class="mb-0 text-body">Estimate
                                                                            Time</h5>
                                                                    </div>
                                                                </div>
                                                                <div>
                                                                    <div>
                                                                        <p class="text-dark mb-0 fw-semibold">{{ estimateTimes }}Days</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="list-group-item px-0 pb-0">
                                                            <div class="d-flex justify-content-between align-items-center">
                                                                <div class="d-flex align-items-center">
                                                                    <vue-feather type="dollar-sign"/>
                                                                    <div class="ms-2">
                                                                        <h5 class="mb-0 text-body">Cost</h5>
                                                                    </div>
                                                                </div>
                                                                <div>
                                                                    <div>
                                                                        <p class="text-dark mb-0 fw-semibold">$18,000</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 mb-2">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h4 class="mb-0">Project Credintials</h4>
                                                    <span class="cursor-pointer" @click="viewCredintials">
                                                        <vue-feather :type="showCredintials ? 'eye' : 'eye-off'"/>
                                                    </span>
                                                </div>
                                                <div class="card-body" v-if="showCredintials">
                                                    <p class="newlineStringStyle">{{ info.credential }}</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-12 mb-2" v-if="props.info.invoice">
                                            <!-- card -->
                                            <div class="card">
                                                <div class="card-header">
                                                    <h4 class="mb-0">Budget </h4>
                                                </div>
                                                <!-- card body -->
{{ props.info.invoice }}
                                                <!-- row -->
                                                <div class="row">
                                                    <!-- col -->
                                                    <div class="col-lg-4 col-md-12 col-12 bg-">
                                                        <div class="d-flex align-items-center justify-content-between p-4">
                                                            <div>
                                                                <h2 class="h1 fw-bold mb-0">{{ props.info.invoice?.grand_total }} ৳</h2>
                                                                <p class="mb-0">Total Budget</p>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-12 col-12 bg-">
                                                        <div class="d-flex align-items-center justify-content-between p-4">
                                                            <div>
                                                                <h2 class="h1 fw-bold mb-0">{{ props.info.invoice }} ৳</h2>
                                                                <p class="mb-0">Total Pay</p>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-12 col-12 bg-">
                                                        <div class="d-flex align-items-center justify-content-between p-4">
                                                            <div>
                                                                <h2 class="h1 fw-bold mb-0">{{ props.info.invoice?.due }} Tk</h2>
                                                                <p class="mb-0">Due Payment</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-12 mb-2">
                                            <!-- card -->
                                            <div class="card">
                                                <!-- card body -->

                                                <div class="card-header">
                                                    <h4 class="mb-0">Upcoming Deadlines
                                                    </h4>

                                                </div>
                                                <!-- table -->
                                                <div class="table-responsive overflow-y-hidden">
                                                    <table class="table mb-0 text-nowrap table-hover table-centered">
                                                        <thead class="table-light">
                                                        <tr>
                                                            <th scope="col">member</th>
                                                            <th scope="col">Task</th>
                                                            <th scope="col">Deadline </th>
                                                            <th scope="col">Workload</th>

                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="d-flex align-items-center">
                                                                    <div class="avatar avatar-sm">
                                                                        <img src="" alt="" class="rounded-circle">
                                                                    </div>
                                                                    <div class="ms-2">
                                                                        <h5 class="mb-0">Eleanor Pena </h5>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                Design a Geeks UI Figma
                                                            </td>
                                                            <td>
                                                                30 Aug, 2021
                                                            </td>
                                                            <td>
                                                                <div class="d-flex align-items-center">

                                                                    <div class="progress flex-auto" style="height: 6px;">
                                                                        <div class="progress-bar bg-success " role="progressbar" style="width: 62%;" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100">

                                                                        </div>
                                                                    </div>
                                                                    <div class="ms-2"> <span>62%</span></div>
                                                                </div>
                                                            </td>

                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>


                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="col-md-12 col-xl-4 col-12">
                                    <!-- card  -->
                                    <div class="card mb-4 bg-primary border-primary">
                                        <!-- card body  -->
                                        <div class="card-body">

                                            <h4 class="card-title text-white">Launch Date </h4>
                                            <!-- dropdown  -->
                                            <div class="d-flex justify-content-between align-items-center mt-8">
                                                <div>
                                                    <h1 class="display-4 text-white mb-1">{{ estimateTimes }} Days</h1>
                                                    <p class="mb-0 text-white">{{ launchDate }}</p>
                                                </div>
                                                <div>
                                                    <i class="fe fe-flag fs-1 text-light-primary"></i>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                    <!-- card  -->
                                    <div class="card mb-4">
                                        <!-- card body  -->
                                        <div class="card-body">
                                            <h4 class=" card-title ">Overall Progress </h4>
                                            <ProgressChart :progress="20"/>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <!-- Card header -->
                                        <div class="card-header card-header-height d-flex justify-content-between align-items-center">
                                            <div>
                                                <h4 class="mb-0">Recent Activity
                                                </h4>
                                            </div>
                                            <div><a href="#">View All</a></div>
                                        </div>
                                        <!-- Card body -->
                                        <div class="card-body">
                                            <!-- List group -->
                                            <ul class="list-group list-group-flush list-timeline-activity">
                                                <li class="list-group-item px-0 pt-0 border-0 pb-6">
                                                    <div class="row position-relative">
                                                        <div class="col-auto">
                                                            <div class="icon-shape icon-md bg-light-primary text-primary rounded-circle">
                                                                <i class="fe fe-check"></i>
                                                            </div>
                                                        </div>
                                                        <div class="col ms-n3">
                                                            <h4 class="mb-0 h5">Task Finished</h4>
                                                            <p class="mb-0 text-body">Paula finished figma task</p>

                                                        </div>
                                                        <div class="col-auto">
                                                            <span class="text-muted fs-6">2 mins ago</span>

                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item px-0 pt-0 border-0 pb-6">
                                                    <div class="row position-relative">
                                                        <div class="col-auto">
                                                            <div class="icon-shape icon-md bg-light-primary text-primary rounded-circle">
                                                                <i class="fe fe-message-square"></i>
                                                            </div>
                                                        </div>
                                                        <div class="col ms-n3">
                                                            <h4 class="mb-0 h5">New Comment</h4>
                                                            <p class="mb-0 text-body">Georg commented on task.</p>

                                                        </div>
                                                        <div class="col-auto">
                                                            <span class="text-muted fs-6">1 hour ago</span>

                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item px-0 pt-0 border-0 pb-6">
                                                    <div class="row position-relative">
                                                        <div class="col-auto">
                                                            <div class="icon-shape icon-md bg-light-primary text-primary rounded-circle">
                                                                <i class="fe fe-alert-triangle"></i>
                                                            </div>
                                                        </div>
                                                        <div class="col ms-n3">
                                                            <h4 class="mb-0 h5">Task Overdue</h4>
                                                            <p class="mb-0 text-body">Task <a href="#"><u>status updatd for board</u></a>
                                                                is overdue.</p>

                                                        </div>
                                                        <div class="col-auto">
                                                            <span class="text-muted fs-6">1 day</span>

                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item px-0 pt-0 border-0">
                                                    <div class="row position-relative">
                                                        <div class="col-auto">
                                                            <div class="icon-shape icon-md bg-light-primary text-primary rounded-circle">
                                                                <i class="fe fe-mail"></i>
                                                            </div>
                                                        </div>
                                                        <div class="col ms-n3">
                                                            <h4 class="mb-0 h5">Update Send to Client</h4>
                                                            <p class="mb-0 text-body">Jitu send email to update design
                                                                for client Geeks UI.</p>

                                                        </div>
                                                        <div class="col-auto">
                                                            <span class="text-muted fs-6">1 day</span>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            This is my content one
                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>

</template>

<script setup>
import moment from "moment";
import {computed, ref} from "vue"
import ProgressChart from "../../components/ProgressChart.vue";

let props = defineProps({
    info: Object,
    dates:"",
});


const showCredintials = ref(false)
const viewCredintials =()=> showCredintials.value = !showCredintials.value;




const estimateTimes = computed(()=>{
    var a = moment(props.info.start);
    var b = moment(props.info.end);
    return b.diff(a, 'days') // 1
})

const launchDate  = computed(()=> moment(props.info.start).add(1,'days').format('LL , dddd'))

</script>

<style scoped>
    .add-new-user{
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 5px 11px;
    }

    .newlineStringStyle {
        white-space: pre-wrap;
    }
</style>
