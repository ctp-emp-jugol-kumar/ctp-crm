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
                                    <h4 class="card-title">Project Information's </h4>
<!--                                    <button class="dt-button add-new btn btn-primary" tabindex="0" type="button" data-bs-toggle="modal" data-bs-target="#addItemModal">Add Client</button>-->
                                    <button
                                        class="dt-button add-new btn btn-primary"
                                        @click="addDataModal"
                                    >
                                        Add Project
                                    </button>

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
                                                    <label>Search:<input v-model="search" type="search"
                                                                         class="form-control" placeholder=""
                                                                         aria-controls="DataTables_Table_0"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <table class="user-list-table table table-striped">
                                        <thead class="table-light">
                                        <tr class="">
                                            <th class="sorting">Client</th>
                                            <th class="sorting">Project Name</th>
                                            <th class="sorting">Developers</th>
<!--                                            <th class="sorting">Project Status</th>-->
                                            <th class="sorting">Project Progress</th>
                                            <th class="sorting">Delivery Date</th>
                                            <th class="sorting">Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr v-for="projects in projects.data" :key="projects.id">
                                            <td>
                                                <div class="d-flex justify-content-left align-items-center">
                                                    <div class="d-flex flex-column">
                                                        <div class="user_name text-truncate text-body">
                                                            <span class="fw-bolder" v-if="projects.project.client">{{ projects.project.client.name }}</span>
                                                        </div>
                                                        <small class="emp_post text-muted" v-if="projects.project.client">{{ projects.project.client.phone }}</small>
                                                        <small class="emp_post text-muted" v-if="projects.project.client">{{ projects.project.client.email }}</small>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>{{ projects.project.name  }}</td>

                                            <th>
                                                <div class="avatar-group mt-50">
                                                    <div
                                                        v-c-tooltip="developer.name"
                                                         title=""
                                                         class="avatar pull-up"
                                                         data-bs-original-title="Elicia Rieske"
                                                         v-for="(developer, index) in projects.project.users" :key="developer.id">
                                                        <img :src="developer.photo" alt="Avatar" height="30" width="30">
                                                    </div>
                                                </div>
                                            </th>
<!--                                            <td>
                                                <span
                                                    class="badge"
                                                    :class="{
                                                    'badge-light-primary'   : projects.project.status === 'New Project',
                                                    'badge-light-warning'   : projects.project.status === 'Testing',
                                                    'badge-light-success'   : projects.project.status === 'Complete',
                                                    'badge-light-secandery' : projects.project.status === 'Revision',
                                                    'badge-light-danger'    : projects.project.status === 'Canceled',
                                                }">
                                                    {{ projects.project.status }}
                                                </span>
                                            </td>-->
                                            <td>
                                                <div class="progress" style="height: 7px;">
                                                    <div role="progressbar"
                                                         v-c-tooltip="`Project Complate ${projects.project.progress} %`"
                                                         aria-valuemin="0"
                                                         aria-valuemax="100"
                                                         aria-valuenow="50"
                                                         class="progress-bar progress-bar-striped cursor-pointer"
                                                         :class="{
                                                                'bg-primary'   : projects.project.status === 'New Project',
                                                                'bg-warning'   : projects.project.status === 'Testing',
                                                                'bg-success'   : projects.project.status === 'Complete',
                                                                'bg-secandery' : projects.project.status === 'Revision',
                                                                'bg-danger'    : projects.project.status === 'Canceled',
                                                            }"
                                                         :style="{ width: `${projects.project.progress}%`}">
                                                    </div>
                                                </div>
                                            </td>

                                            <td>{{ projects.start_date + " - " + projects.end_date }} </td>
                                            <td>
                                                <CDropdown>
                                                    <CDropdownToggle>
                                                        <vue-feather type="more-vertical" />
                                                    </CDropdownToggle>
                                                    <CDropdownMenu>
                                                        <CDropdownItem @click="editProject(projects.edit_url)">
                                                            <Icon title="pencil" />
                                                            <span class="ms-1">Edit</span>
                                                        </CDropdownItem>
                                                        <CDropdownItem  :href="projects.show_url" >
                                                            <Icon title="eye" />
                                                            <span class="ms-1">Show</span>
                                                        </CDropdownItem>
                                                        <CDropdownItem @click="deleteItem(props.main_url, projects.id)">
                                                            <Icon title="trash" />
                                                            <span class="ms-1">Delete</span>
                                                        </CDropdownItem>
                                                    </CDropdownMenu>
                                                </CDropdown>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <Pagination :links="projects.links" :from="projects.from" :to="projects.to" :total="projects.total"/>
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
    import Pagination from "../../components/Pagination"
    import Icon from '../../components/Icon'
    import Modal from '../../components/Modal'
    import InputFieldError from "../../components/InputFieldError";
    import TextEditor from "../../components/TextEditor";
    import ImageUploader from "../../components/ImageUploader"
    import {ref, watch, computed} from "vue";
    import debounce from "lodash/debounce";
    import {Inertia} from "@inertiajs/inertia";
    import Swal from 'sweetalert2'
    import {useForm} from "@inertiajs/inertia-vue3";
    import axios from 'axios';
    import {CDropdown,CDropdownToggle, CDropdownMenu, CDropdownItem} from '@coreui/vue'
    import {useAction} from "../../composables/useAction";

    const {deleteItem} = useAction();

    const props = defineProps({
        projects: Object,
        filters: Object,
        errors: Object,
        main_url:String|null,
    });

    const createForm = useForm({
        name: null,
        note: null,
        status: null,
        date:null,
        start_date:null,
        end_date:null,
        agents:null,
        clientId:null,
        invoiceId:null,
        descriptions:null,
        credintials:null,
        project_details:null,
        files:null,
        processing: Boolean,
    })

    const updateForm = useForm({
        name: null,
        note: null,
        status: null,
        date:null,
        start_date:null,
        end_date:null,
        agents:[],
        client_id:null,
        descriptions:null,
        credintials:null,
        project_details:null,

        files:null,

        processing: Boolean,
    })

    const status = [
        'New Project',
        'In Process',
        'Testing',
        'Revision',
        'Complete',
        'Canceled'
    ]

    const search = ref(props.filters.search);
    const perPage = ref(props.filters.perPage);

    watch([search, perPage], debounce(function ([val, val2]) {
        Inertia.get(props.main_url, {search: val, perPage: val2}, {preserveState: true, replace: true});
    }, 300));
</script>

<style scoped>
    .ck.ck-editor__main>.ck-editor__editable.ck-rounded-corners{
        min-height: 15rem !important;
    }
</style>
