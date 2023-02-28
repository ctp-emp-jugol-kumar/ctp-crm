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
                                    <div class="d-flex align-items-center">
                                        <h4 class="card-title me-1">Transactions Information's</h4>
                                        <span class="text-info cursor-pointer" @click="tranDetails"> <vue-feather type="info" size="15"/></span>
                                    </div>
                                    <div>
                                        <CDropdown>
                                            <CDropdownToggle class="p-0">
                                                <button class="btn bg-light-secondary d-flex align-items-center">
                                                    <vue-feather type="external-link" size="15"/>
                                                    <span class="px-1">Export</span>
                                                    <vue-feather type="chevron-down" size="15"/>
                                                </button>
                                            </CDropdownToggle>
                                            <CDropdownMenu>
                                                <CDropdownItem @click="exportPDF">
<!--                                                    <vue-feather type="download" size="15"/>-->
                                                    <span class="ms-1">PDF</span>
                                                </CDropdownItem>
                                                <CDropdownItem target="_blank">
                                                    <!--                                                    <vue-feather type="download" size="15"/>-->
                                                    <span class="ms-1">EXCEL</span>
                                                </CDropdownItem>
                                            </CDropdownMenu>
                                        </CDropdown>
                                    </div>
                                </div>
                                <div class="card-datatable table-responsive pt-0 px-2">
                                    <div class="d-flex align-items-center justify-content-between border-bottom">
                                        <div class="select-search-area d-flex align-items-center">
                                            <select class="form-select" v-model="perPage">
                                                <option :value="undefined">10</option>
                                                <option value="25">25</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                            </select>

                                            <div class="ml-2">
                                                <select v-model="searchByStatus" class="select2 form-select select w-100">
                                                    <option selected disabled :value="undefined">Filter By Type</option>
                                                    <option :value="null">All</option>
                                                    <option value="in" >Credited</option>
                                                    <option value="out" >Deviated</option>
                                                </select>
                                            </div>
                                            <div v-if="!isCustom">
                                                <select v-model="dateRange" @update:modelValue="changeDateRange" class="select2 form-select select w-100 ms-1" id="select2-basic">
                                                    <option selected disabled :value="undefined">Filter By Date</option>
                                                    <option :value="null">All</option>
                                                    <option v-for="(type, index) in range.ranges" :value="type">
                                                        {{ index }}
                                                    </option>
                                                    <option value="custom">Custom Range</option>
                                                </select>
                                            </div>
                                            <div v-else>
                                                <Datepicker v-model="dateRange" :monthChangeOnScroll="false" range multi-calendars
                                                            placeholder="Select Date Range" autoApply  @update:model-value="handleDate" ></Datepicker>
                                            </div>
                                        </div>
                                        <div
                                            class="d-flex align-items-center justify-content-center justify-content-lg-end flex-lg-nowrap flex-wrap">
                                            <div class="select-search-area">
                                                <label>Search
                                                    <input v-model="search"
                                                           type="search"
                                                           class="form-control"
                                                           placeholder="What You Find ?"
                                                           aria-controls="DataTables_Table_0">
                                                </label>
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
                                                <span class="text-bold text-success font-bold d-flex align-items-center">
                                                    <vue-feather type="trending-up"/>
                                                    <span class="ms-1">Credited</span>
                                                </span>
                                            </td>
                                            <td class="cursor-pointer" v-else v-c-tooltip="`Cash Out  ${tra.tran.total_pay} Tk \n Expanse By ${tra.tran.user.name}`">
                                                <span class="text-danger text-bold font-bold d-flex align-items-center">
                                                    <vue-feather type="trending-down"/>
                                                    <span class="ms-1">Debited</span>
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



    <Modal id="showData" title="Total Transactions" v-vb-is:modal size="sm">
        <div class="modal-body">
            <div class="row mb-1">
                <div class="col-md">
                    <h3>Total Credited : {{ credited }} Tk</h3>
                    <h3>Total Debited : {{ debited }} Tk</h3>
                </div>
            </div>
        </div>
    </Modal>


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
import {useDate} from "../../../composables/useDate";
const range = useDate();
import {CDropdown,CDropdownToggle, CDropdownMenu, CDropdownItem} from '@coreui/vue'


const props = defineProps({
    transactions: []|null,
    credited:null,
    debited:null,
    filters: Object,
    main_url: String,
});

const tranDetails = () => document.getElementById("showData").$vb.modal.show()

const url = location.search;
const exportPDF =() =>{
    if (url){
        window.location.href = window.location.href+"&export_pdf=true";
    }else{
        window.location.href = window.location.href+"?export_pdf=true";
    }
}


const dateRange = ref(props.filters.dateRange)
const isCustom =ref(false);
const changeDateRange = (event) => {
    if(event=== 'custom'){
        isCustom.value = true;
        dateRange.value = '';
    }
};
const handleDate = (event) => isCustom.value = event !== null;
const searchByStatus = ref(props.filters.byStatus)


let search = ref(props.filters.search);
let perPage = ref(props.filters.perPage);
watch([search, perPage, searchByStatus, dateRange], debounce(function ([val, val2, val3, val4]) {
    Inertia.get(props.main_url, { search: val, perPage: val2, byStatus: val3 , dateRange: val4}, { preserveState: true, replace: true });
}, 300));





</script>

<style>
.dp__input_wrap svg{
    margin-left: 11px;
}
.dp__input_icon_pad {
    padding: 8px 35px !important;
    border-radius: 5px !important;
}
</style>

