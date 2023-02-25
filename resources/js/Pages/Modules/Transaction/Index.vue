<template>
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <!-- Advanced Search -->
                <section id="advanced-search-datatable">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header border-bottom d-flex justify-content-between">
                                    <h4 class="card-title">Transactions Information's </h4>
                                </div>
                                <div class="card-datatable table-responsive pt-0">
                                    <div class="d-flex justify-content-between align-items-center header-actions mx-0 row mt-75">
                                        <div class="col-sm-12 col-lg-4 d-flex justify-content-center justify-content-lg-start">
                                            <div class="select-search-area">
                                                <label>Show <select class="form-select" v-model="perPage">
                                                    <option :value="undefined">10</option>
                                                    <option value="25">25</option>
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                                </select> entries</label>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-lg-8 ps-xl-75 ps-0">
                                            <div
                                                class="d-flex align-items-center justify-content-center justify-content-lg-end flex-lg-nowrap flex-wrap">
                                                <div class="select-search-area">
                                                    <label>Search:<input v-model="search" type="search" class="form-control" placeholder="Search..."
                                                                         aria-controls="DataTables_Table_0"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <table class="user-list-table table table-striped">
                                        <thead class="table-light">
                                        <tr class="">
                                            <th class="sorting">#id</th>
                                            <th class="sorting">Subject</th>
                                            <th class="sorting">Method</th>
                                            <th class="sorting">Amount</th>
                                            <th class="sorting">Payment Type</th>
                                            <th class="sorting">User</th>
                                            <th class="sorting">Created At</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr v-for="tra in transactions.data" :key="tra.id">
                                            <td>
                                                <a href="#">
                                                    #Tran-{{ tra.tran.u_id+tra.tran.id }}
                                                </a>
                                            </td>
                                            <td>
                                                <a href="javascript:void(0)">{{ `${tra.tran.transaction_model}::find(${tra.tran.transaction_model_id})` }}</a>
                                            </td>
                                            <td>
                                                {{ tra.tran.method.name }}
                                            </td>
                                            <td>
                                                {{ tra.tran.total_pay }} Tk
                                            </td>
                                            <td class="cursor-pointer" v-if="tra.tran.type ==='in'"  v-c-tooltip="`Cash In  ${tra.tran.total_pay} Tk \n Rechived By ${tra.tran.user.name}`">
                                                <span class="text-bold text-success font-bold"  >
                                                    <vue-feather type="trending-up"/>
                                                </span>
                                            </td>
                                            <td class="cursor-pointer" v-else v-c-tooltip="`Cash Out  ${tra.tran.total_pay} Tk \n Expanse By ${tra.tran.user.name}`">
                                                <span class="text-danger text-bold font-bold">
                                                    <vue-feather type="trending-down"/>
                                                </span>
                                            </td>
                                            <td>
                                                {{ tra.tran.user.name }}
                                            </td>
                                            <td>
                                                {{  moment(tra.tran.created_at).format('lll') }}
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>

                                    <Pagination :links="transactions.links" :from="transactions.from" :to="transactions.to" :total="transactions.total" />
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</template>
<script>

</script>
<script setup>
import Pagination from "../../../components/Pagination"
import Icon from '../../../components/Icon'
import Modal from '../../../components/Modal'
import ImageUploader from "../../../components/ImageUploader"
import Textarea from "../../../components/Textarea";
import moment from 'moment';
import {ref, watch} from "vue";
import debounce from "lodash/debounce";
import {Inertia} from "@inertiajs/inertia";
import Swal from 'sweetalert2'
import {useForm} from "@inertiajs/inertia-vue3";
import axios from "axios";

let props = defineProps({
    transactions: []|null,
    filters: Object,
    main_url: String,
});



let search = ref(props.filters.search);
let perPage = ref(props.filters.perPage);

watch([search, perPage], debounce(function ([val, val2]) {
    Inertia.get(props.main_url, { search: val, perPage: val2 }, { preserveState: true, replace: true });
}, 300));





</script>

<style lang="scss">
/*@import "../../../../sass/base/plugins/tables/datatables";*/
</style>
