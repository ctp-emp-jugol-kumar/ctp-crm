<template>
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <section class="app-dashboard">
        <div class="card">
            <div class="card-body border-bottom">
                <div class="card card-statistics">
                    <div class="card-header">
                        <vue-notification-list></vue-notification-list>
                        <h4 class="card-title">Settings</h4>
                    </div>
                    <div class="card-body statistics-body">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="nav flex-column nav-pills me-3 border text-start" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                    <button class="nav-link active"
                                            id="v-pills-smtp-tab"
                                            data-bs-toggle="pill"
                                            data-bs-target="#v-pills-smtp"
                                            type="button" role="tab"
                                            aria-controls="v-pills-smtp"
                                            aria-selected="false">SMTP Setup</button>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="tab-content" id="v-pills-tabContent">
                                    <div class="tab-pane fade show active" id="v-pills-smtp" role="tabpanel" aria-labelledby="v-pills-smtp">
                                        <div class="card">
                                            <h2>SMTP Setup</h2>
                                            <form class="form form-vertical" @submit.prevent="updateMailSetup()">
                                                <div class="row">
                                                    <div class="col-12 mb-1">
                                                        <label>Mail Driver</label>
                                                        <v-select :options="smtpMillers"
                                                                  placeholder="e.g Mail Driver"
                                                                 v-model="mailSetup.mailDriver" label="name"
                                                                 :reduce="item =>item.name"
                                                                 class="text-capitalize">
                                                        </v-select>
                                                    </div>

                                                    <div class="col-12 mb-1">
                                                        <label>Mail Host</label>
                                                        <input type="text" class="form-control" v-model="mailSetup.mailHost" placeholder="e.g Mail Host" />
                                                    </div>

                                                    <div class="col-12 mb-1">
                                                        <label>Mail Port</label>
                                                        <input type="text" class="form-control" v-model="mailSetup.mailPort" placeholder="e.g Mail Port" />
                                                    </div>


                                                    <div class="col-12 mb-1">
                                                        <label>Username</label>
                                                        <input type="text" class="form-control" v-model="mailSetup.username" placeholder="e.g Username" />
                                                    </div>


                                                    <div class="col-12 mb-1">
                                                        <label>Password</label>
                                                        <input type="text" class="form-control" v-model="mailSetup.password" placeholder="e.g Password" />
                                                    </div>

                                                    <div class="col-12 mb-1">
                                                        <label>From Email</label>
                                                        <input type="text" class="form-control" v-model="mailSetup.fromEmail" placeholder="e.g Form Email" />
                                                    </div>

                                                    <div class="col-12 mb-1">
                                                        <label>From Name</label>
                                                        <input type="text" class="form-control" v-model="mailSetup.fromName" placeholder="e.g Form Name" />
                                                    </div>

                                                    <div class="col-12 mb-1">
                                                        <label>Encryption</label>
                                                        <select class="form-control" v-model="mailSetup.encryption">
                                                            <option disabled selected value="">Select Mail Encryption</option>
                                                            <option value="null">NULL</option>
                                                            <option value="tls">TLS</option>
                                                            <option value="ssl">SSL</option>
                                                        </select>
                                                    </div>


                                                    <div class="col-12 mt-2 d-inline-flex align-item-center">
                                                        <button v-if="!isLoding" type="submit" disabled class="btn btn-primary me-1 waves-effect waves-float waves-light">
                                                            <div class="spinner-border text-white me-1"  role="status"></div>
                                                            <span>Submit</span>
                                                        </button>

                                                        <button v-else class="btn btn-primary me-1 waves-effect waves-float waves-light">
                                                            Submit
                                                        </button>
                                                        <button type="reset" class="btn btn-outline-secondary waves-effect">Reset</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
            </div>
        </div>
    </div>
</template>

<script setup>
import Image from '../../components/ImageUploader.vue'
import Modal from '../../components/Modal.vue'
import Layout from "../../Shared/Layout.vue";
import Swal from 'sweetalert2'
import { usePage, useForm } from '@inertiajs/inertia-vue3'
import {computed, ref} from "vue"

const APP_URL = usePage().props.value.ADMIN_URL;

let props = defineProps({
    option:[],
    countries:"",
    errors:"",
    bSettings:"",
    main_url:String|null,
    updateSmtp:String|null,
    categories:[]|null,
})





let createForm = useForm({
    name        : props.bSettings.name ?? '',
    header_logo : props.bSettings.header_logo ?? '',
    logo_fabs   : props.bSettings.logo_fabs ?? '',
    app_details : props.bSettings.details ?? '',
    timezone    : props.bSettings.timezone?.tz ?? '',
    country     : props.bSettings.country?.name ?? '',

    address     : props.bSettings.address ?? '',
    email       : props.bSettings.email ?? '',
    phone       : props.bSettings.phone ?? '',

    facebook_profile  : props.bSettings.facebook_profile ?? '',
    youtube           : props.bSettings.youtube ?? '',
    google_drive      : props.bSettings.google_drive ?? '',
    linkedin_profile  : props.bSettings.linkedin_profile ?? '',
    twitter_profile   : props.bSettings.twitter_profile ?? '',
    instagram_profile : props.bSettings.instagram_profile ?? '',

    api_url           : props.bSettings.api_url ?? '',
    api_user_name     : props.bSettings.api_user_name ?? '',
    api_user_pass     : props.bSettings.api_user_pass ?? '',

    inSizeDhaka:null,
    outSizeDhaka:null,
    shippingType:null,

    header_categories: props.bSettings.header_categories ?? [],

    headerMenuSetup:props.bSettings.headerMenuSetup ?? [{
        link:usePage().props.value.auth.MAIN_URL

    }]



})

const mailSetup = useForm({
    mailDriver        : props.bSettings.mailDriver ?? '',
    mailHost          : props.bSettings.mailHost ?? '',
    mailPort          : props.bSettings.mailPort ?? '',
    username          : props.bSettings.username ?? '',
    password          : props.bSettings.password ?? '',
    fromEmail         : props.bSettings.fromEmail ?? '',
    fromName          : props.bSettings.fromName ?? '',
    encryption        : props.bSettings.encryption ?? '',
})

let addRow = () => {
    createForm.headerMenuSetup.push({
        title: '',
        link:usePage().props.value.auth.MAIN_URL
    })
}
let deleteRow = (index) => {
    createForm.headerMenuSetup.splice(index, 1)
}



let logoForm = useForm({
    header_logo     :   '',
    footer_logo     :   '',
    logo_fabs       :   '',
    lightColor      : null,
    mainColor       : null,
    textColor       : null

})


let isLoding = ref({});

let updateMailSetup = () =>{
    isLoding.value = false
    mailSetup.post(props.updateSmtp, {
        onSuccess: (res)=>{
            console.log(res);
            isLoding.value = true
            Swal.fire({
               icon: "success",
               text: "Business Settings Update Successfully Done.:)",
            });
        },
        onError: (res) =>{
            Swal.fire({
                icon: "error",
                text: "Business Settings Not Update (:",
            });
        }
    });
}

const renderOptionGroup = (categories, prefix = '') => {
    return categories.map((category) => {

        let cValue = '';
        for (let i = 0; i < category.order_level; i++) {
            cValue += '--';
        }
        const label = `${cValue}${category.title}`;
        if (category.children && category.children.length > 0) {
            const childPrefix = `${prefix}\xa0\xa0\xa0`;
            return {
                label,
                options: renderOptionGroup(category.children, childPrefix),
            };
        } else {
            const value = {...category};
            return {
                label,
                value,
            };
        }
    });
};

const smtpMillers = [
        {name:"smtp"}, {name:"sendmail"}, {name:"mailgun"}, {name:"ses"}, {name:"postmark"}, {name:"log"}, {name:"array"}, {name:"failover"}
]





const formattedParentCategories = computed(() => {
    return renderOptionGroup(props.categories);
});
</script>

<style scoped>
.spinner-border{
    --bs-spinner-width: 1.2rem !important;
    --bs-spinner-height: 1.2rem !important;
}
.v-select{
    border: 1px solid #d8d6de !important;
    border-radius: 5px !important;
}
</style>
