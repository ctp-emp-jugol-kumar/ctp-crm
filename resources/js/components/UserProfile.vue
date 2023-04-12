<template>
    <div>

        <!-- BEGIN: Content-->
        <div class="app-content content ">
            <div class="content-overlay"></div>
            <div class="header-navbar-shadow"></div>
            <div class="content-wrapper container-xxl p-0">
                <div class="content-header row">
                </div>
                <div class="content-body">
                    <div class="row match-height">
                        <div class="col-md-7 col-lg-8 col-xl-12 col-12">
                            <div class="card">
                                <!---->
                                <!---->
                                <div class="card-body">
                                    <!---->
                                    <!---->
                                    <div class="row">
                                        <div class="d-flex justify-content-between flex-column col-xl-6 col-21">
                                            <div class="d-flex justify-content-start">
                                            <span class="b-avatar badge-light-danger rounded">
                                                <img :src="props.user.photo ?? $page.props.auth.MAIN_URL+props.image" class="rounded me-2"  style="width: 140px;height: 140px;"  alt="avatar">
                                            </span>
                                                <div class="d-flex flex-column ml-1">
                                                    <div class="mb-1">
                                                        <h4 class="mb-0 text-capitalize"> {{ props.user.name }} </h4>
                                                        <p class="card-text">{{ props.user.email }}</p>
                                                        <p class="badge badge-light-purple text-capitalize"> {{ props.user.status }} </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-6 col-12">
                                            <table class="mt-2 mt-xl-0 w-100">
                                                <tr>
                                                    <th class="pb-50">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="14px" height="14px" viewBox="0 0 24 24" fill="none"
                                                             stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                             class="me-75 feather feather-user">
                                                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                                            <circle cx="12" cy="7" r="4"></circle>
                                                        </svg>
                                                        <span class="font-weight-bold">Username</span>
                                                    </th>
                                                    <td class="pb-50">{{ props.user.name }} </td>
                                                </tr>
                                                <tr>
                                                    <th class="pb-50">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="14px" height="14px" viewBox="0 0 24 24" fill="none"
                                                             stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                             class="me-75 feather feather-check">
                                                            <polyline points="20 6 9 17 4 12"></polyline>
                                                        </svg>
                                                        <span class="font-weight-bold">Status</span>
                                                    </th>
                                                    <td class="pb-50 text-capitalize"> {{ props.user.status }} </td>
                                                </tr>
                                                <tr>
                                                    <th class="pb-50">
                                                        <vue-feather type="clock" size="15" />
                                                        <span class="font-weight-bold ms-1">Joining</span>
                                                    </th>
                                                    <td class="pb-50"> {{ formatted(props.user.created_at) }} </td>
                                                </tr>
                                                <tr>
                                                    <th class="pb-50">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="14px" height="14px" viewBox="0 0 24 24" fill="none"
                                                             stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                             class="me-75 feather feather-flag">
                                                            <path d="M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1z"></path>
                                                            <line x1="4" y1="22" x2="4" y2="15"></line>
                                                        </svg>
                                                        <span class="font-weight-bold">Address</span>
                                                    </th>
                                                    <td class="pb-50"> {{ props.user.address }} </td>
                                                </tr>
                                                <tr>
                                                    <th>
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="14px" height="14px" viewBox="0 0 24 24" fill="none"
                                                             stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                             class="me-75 feather feather-phone">
                                                            <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path>
                                                        </svg>
                                                        <span class="font-weight-bold">Contact</span>
                                                    </th>
                                                    <td> {{ props.user.phone }} </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!---->
                                <!---->
                            </div>
                        </div>
                        <!--
                        <div class="col-md-5 col-lg-4 col-xl-3 col-12">
                            <div class="card border-primary">

                                <div class="card-header d-flex justify-content-between align-items-center pt-75 pb-25">
                                    <h5 class="mb-0"> Current Plan </h5>
                                    <span class="badge badge-light-primary"> Basic </span>
                                    <small class="text-muted w-100">July 22, 2021</small>
                                </div>
                                <div class="card-body">

                                    <ul class="list-unstyled my-1">
                                        <li>
                                            <span class="align-middle">5 Users</span>
                                        </li>
                                        <li class="my-25">
                                            <span class="align-middle">10 GB storage</span>
                                        </li>
                                        <li>
                                            <span class="align-middle">Basic Support</span>
                                        </li>
                                    </ul>
                                    <button type="button" class="btn btn-primary btn-block"> Upgrade Plan </button>
                                </div>

                            </div>
                        </div>
                        -->


                    </div>
                    <!-- User Content -->
                    <div class="col-xl-12 col-lg-7 col-md-7 order-0 order-md-1">
                        <!-- User Pills -->
                        <ul class="nav nav-pills mb-2">
                            <li class="nav-item" v-for="component in components" :key="component">
                                <button class="nav-link"
                                        :class="{'active': active === component}"
                                        @click="active =`${component}`">
                                    <i data-feather="bookmark" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold text-capitalize">{{ component }}</span>
                                </button>
                            </li>
                        </ul>
                        <!--/ User Pills -->
                        <Component :is="active"
                                   :transactions="user.transactions"
                                   :project="user.projects"
                                   :quotations="user.quotations"
                                   :invoices="user.custome_invoices"
                        />

                    </div>
                </div>
            </div>
        </div>
    </div>


</template>

<script setup>
import Account from './Uerprofile/Account'
import Billing from './Uerprofile/Billing'
import Quotation from './Uerprofile/Quotation'
import Invoice from './Uerprofile/Invoice'
import Project from './Uerprofile/Project'
import Domain from './Uerprofile/Domain'
import Hosting from './Uerprofile/Hosting'
import {useDate} from '../composables/useDate.js'
import {ref} from "vue";
import {Inertia} from "@inertiajs/inertia";
import Swal from "sweetalert2";
import axios from "axios";
import {useForm} from "@inertiajs/inertia-vue3";
let {formatted} = useDate();
let props = defineProps({
    user:[],
    image:String,
})

</script>

<script>
export default {
    components:{
        Billing, Quotation, Invoice, Project //Domain, Hosting
    },
    data(){
        return {
            active: 'billing',
            username:'',
            components: ['billing', 'project', 'quotation', 'invoice']
        }
    },
    methods:{
        handelevent(text){
            this.username = text;
        },
        handelMyEmit(data){
            this.username = data.target.value;
        }
    }
}
</script>



<style scoped>

</style>
