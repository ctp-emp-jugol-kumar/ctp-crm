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
                                                        <h4 class="mb-0"> {{ props.user.name }} </h4>
                                                        <span class="card-text">{{ props.user.email }}</span>
                                                    </div>
                                                    <div class="d-flex flex-wrap justify-content-evenly">
                                                        <a href="#" class="btn btn-primary" target="_self"> Edit </a>
                                                        <button type="button" class="btn ml-1 btn-outline-danger"> Delete </button>
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
                                                        <span class="font-weight-bold ms-1">Joined At</span>
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


                    <!-- Edit User Modal -->
                    <div class="modal fade" id="editUser" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
                            <div class="modal-content">
                                <div class="modal-header bg-transparent">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body pb-5 px-sm-5 pt-50">
                                    <div class="text-center mb-2">
                                        <h1 class="mb-1">Edit User Information</h1>
                                        <p>Updating user details will receive a privacy audit.</p>
                                    </div>
                                    <form id="editUserForm" class="row gy-1 pt-75" onsubmit="return false">
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="modalEditUserFirstName">First Name</label>
                                            <input type="text" id="modalEditUserFirstName" name="modalEditUserFirstName" class="form-control" placeholder="John" value="Gertrude" data-msg="Please enter your first name" />
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="modalEditUserLastName">Last Name</label>
                                            <input type="text" id="modalEditUserLastName" name="modalEditUserLastName" class="form-control" placeholder="Doe" value="Barton" data-msg="Please enter your last name" />
                                        </div>
                                        <div class="col-12">
                                            <label class="form-label" for="modalEditUserName">Username</label>
                                            <input type="text" id="modalEditUserName" name="modalEditUserName" class="form-control" value="gertrude.dev" placeholder="john.doe.007" />
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="modalEditUserEmail">Billing Email:</label>
                                            <input type="text" id="modalEditUserEmail" name="modalEditUserEmail" class="form-control" value="gertrude@gmail.com" placeholder="example@domain.com" />
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="modalEditUserStatus">Status</label>
                                            <select id="modalEditUserStatus" name="modalEditUserStatus" class="form-select" aria-label="Default select example">
                                                <option selected>Status</option>
                                                <option value="1">Active</option>
                                                <option value="2">Inactive</option>
                                                <option value="3">Suspended</option>
                                            </select>
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="modalEditTaxID">Tax ID</label>
                                            <input type="text" id="modalEditTaxID" name="modalEditTaxID" class="form-control modal-edit-tax-id" placeholder="Tax-8894" value="Tax-8894" />
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="modalEditUserPhone">Contact</label>
                                            <input type="text" id="modalEditUserPhone" name="modalEditUserPhone" class="form-control phone-number-mask" placeholder="+1 (609) 933-44-22" value="+1 (609) 933-44-22" />
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="modalEditUserLanguage">Language</label>
                                            <select id="modalEditUserLanguage" name="modalEditUserLanguage" class="select2 form-select" multiple>
                                                <option value="english">English</option>
                                                <option value="spanish">Spanish</option>
                                                <option value="french">French</option>
                                                <option value="german">German</option>
                                                <option value="dutch">Dutch</option>
                                                <option value="hebrew">Hebrew</option>
                                                <option value="sanskrit">Sanskrit</option>
                                                <option value="hindi">Hindi</option>
                                            </select>
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="modalEditUserCountry">Country</label>
                                            <select id="modalEditUserCountry" name="modalEditUserCountry" class="select2 form-select">
                                                <option value="">Select Value</option>
                                                <option value="Australia">Australia</option>
                                                <option value="Bangladesh">Bangladesh</option>
                                                <option value="Belarus">Belarus</option>
                                                <option value="Brazil">Brazil</option>
                                                <option value="Canada">Canada</option>
                                                <option value="China">China</option>
                                                <option value="France">France</option>
                                                <option value="Germany">Germany</option>
                                                <option value="India">India</option>
                                                <option value="Indonesia">Indonesia</option>
                                                <option value="Israel">Israel</option>
                                                <option value="Italy">Italy</option>
                                                <option value="Japan">Japan</option>
                                                <option value="Korea">Korea, Republic of</option>
                                                <option value="Mexico">Mexico</option>
                                                <option value="Philippines">Philippines</option>
                                                <option value="Russia">Russian Federation</option>
                                                <option value="South Africa">South Africa</option>
                                                <option value="Thailand">Thailand</option>
                                                <option value="Turkey">Turkey</option>
                                                <option value="Ukraine">Ukraine</option>
                                                <option value="United Arab Emirates">United Arab Emirates</option>
                                                <option value="United Kingdom">United Kingdom</option>
                                                <option value="United States">United States</option>
                                            </select>
                                        </div>
                                        <div class="col-12">
                                            <div class="d-flex align-items-center mt-1">
                                                <div class="form-check form-switch form-check-primary">
                                                    <input type="checkbox" class="form-check-input" id="customSwitch10" checked />
                                                    <label class="form-check-label" for="customSwitch10">
                                                        <span class="switch-icon-left"><i data-feather="check"></i></span>
                                                        <span class="switch-icon-right"><i data-feather="x"></i></span>
                                                    </label>
                                                </div>
                                                <label class="form-check-label fw-bolder" for="customSwitch10">Use as a billing address?</label>
                                            </div>
                                        </div>
                                        <div class="col-12 text-center mt-2 pt-50">
                                            <button type="submit" class="btn btn-primary me-1">Submit</button>
                                            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
                                                Discard
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/ Edit User Modal -->
                    <!-- upgrade your plan Modal -->
                    <div class="modal fade" id="upgradePlanModal" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-upgrade-plan">
                            <div class="modal-content">
                                <div class="modal-header bg-transparent">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body px-5 pb-2">
                                    <div class="text-center mb-2">
                                        <h1 class="mb-1">Upgrade Plan</h1>
                                        <p>Choose the best plan for user.</p>
                                    </div>
                                    <form id="upgradePlanForm" class="row pt-50" onsubmit="return false">
                                        <div class="col-sm-8">
                                            <label class="form-label" for="choosePlan">Choose Plan</label>
                                            <select id="choosePlan" name="choosePlan" class="form-select" aria-label="Choose Plan">
                                                <option selected>Choose Plan</option>
                                                <option value="standard">Standard - $99/month</option>
                                                <option value="exclusive">Exclusive - $249/month</option>
                                                <option value="Enterprise">Enterprise - $499/month</option>
                                            </select>
                                        </div>
                                        <div class="col-sm-4 text-sm-end">
                                            <button type="submit" class="btn btn-primary mt-2">Upgrade</button>
                                        </div>
                                    </form>
                                </div>
                                <hr />
                                <div class="modal-body px-5 pb-3">
                                    <h6>User current plan is standard plan</h6>
                                    <div class="d-flex justify-content-between align-items-center flex-wrap">
                                        <div class="d-flex justify-content-center me-1 mb-1">
                                            <sup class="h5 pricing-currency pt-1 text-primary">$</sup>
                                            <h1 class="fw-bolder display-4 mb-0 text-primary me-25">99</h1>
                                            <sub class="pricing-duration font-small-4 mt-auto mb-2">/month</sub>
                                        </div>
                                        <button class="btn btn-outline-danger cancel-subscription mb-1">Cancel Subscription</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/ upgrade your plan Modal -->

                </div>
            </div>
        </div>
        <!-- END: Content-->

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

let props = defineProps({
    user:[],
    image:String,
})

    let {formatted} = useDate();



</script>

<script>
export default {
    components:{
        Account, Billing, Quotation, Invoice, Project //Domain, Hosting
    },
    data(){
        return {
            active: 'account',
            username:'',
            components: ['account', 'billing', 'project', 'quotation', 'invoice']
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
