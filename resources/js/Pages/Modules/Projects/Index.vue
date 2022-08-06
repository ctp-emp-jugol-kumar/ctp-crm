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
                                    <div
                                        class="d-flex justify-content-between align-items-center header-actions mx-0 row mt-75">
                                        <div
                                            class="col-sm-12 col-lg-4 d-flex justify-content-center justify-content-lg-start">
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
                                            <th class="sorting">Delivery Date</th>
                                            <th class="sorting">Developers</th>
                                            <th class="sorting">Project Status</th>
                                            <th class="sorting">Project Progress</th>
                                            <th class="sorting">Created At</th>
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

                                            <td>{{ projects.start_date + " - " + projects.end_date }} </td>
                                            <th>
                                                <div class="avatar-group mt-50">
                                                    <div data-bs-toggle="tooltip"
                                                         data-popup="tooltip-custom"
                                                         data-bs-placement="bottom"
                                                         title=""
                                                         class="avatar pull-up"
                                                         data-bs-original-title="Elicia Rieske"
                                                         v-for="(developer, index) in projects.project.users" :key="developer.id">
                                                        <img :src="projects.project.files" alt="Avatar" height="30" width="30">
                                                    </div>
                                                </div>
                                            </th>
                                            <td>
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
                                            </td>
                                            <td>
                                                <div class="progress" style="height: 7px;">
                                                    <div role="progressbar"
                                                         aria-valuemin="0"
                                                         aria-valuemax="100"
                                                         aria-valuenow="50"
                                                         class="progress-bar progress-bar-striped"
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

                                            <td>{{ projects.create_at }}</td>

                                            <td>
                                                <div class="demo-inline-spacing">
                                                    <a :href="projects.show_url"
                                                            class="btn btn-icon btn-icon rounded-circle bg-light-primary waves-effect waves-float waves-light">
                                                        <Icon title="eye"/>
                                                    </a>

                                                    <button type="button" @click="editClient(projects.edit_url)"
                                                            class="btn btn-icon btn-icon rounded-circle bg-light-warning waves-effect waves-float waves-light">
                                                        <Icon title="pencil"/>
                                                    </button>

                                                    <button @click="deleteItemModal(projects.id)" type="button"
                                                            class="btn btn-icon btn-icon rounded-circle waves-effect waves-float waves-light bg-light-danger">
                                                        <Icon title="trash"/>
                                                    </button>
                                                </div>
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
                <!--/ Advanced Search -->
                <!--/ Multilingual -->
            </div>
        </div>
    </div>


    <Modal id="addItemModal" title="Add New Client" v-vb-is:modal size="lg">
        <form @submit.prevent="createProject">
            <div class="modal-body">
                <div class="row mb-1">
                    <div class="col-md">
                        <label>Project Name:
                            <Required/>
                        </label>
                        <div class="">
                            <input v-model="createForm.name" type="text" placeholder="Name" class="form-control">
                            <span v-if="errors.name" class="error text-sm text-danger">{{ errors.name }}</span>
                        </div>
                    </div>
                    <div class="col-md">
                        <label>Client: <span class="text-danger">*</span></label>
                        <div class="">
                            <select2 v-model="createForm.client_id" :options="clients"
                                     :reduce="client => client.id" label="name"
                                     placeholder="Select Client"></select2>
                            <InputFieldError :errors="errors.client_id"/>
                        </div>
                    </div>
                </div>

                <div class="row mb-1">
                    <div class="col-md">
                        <label>Date :
                            <Required/>
                        </label>
                        <div class="">
                            <Datepicker v-model="createForm.date" :monthChangeOnScroll="false"
                                        placeholder="Select Date" autoApply></Datepicker>
                            <InputFieldError :errors="errors.date"/>
                        </div>
                    </div>

                    <div class="col-md">
                        <label>Start date :
                            <Required/>
                        </label>
                        <div class="">
                            <Datepicker v-model="createForm.start_date"
                                        :monthChangeOnScroll="false"
                                        placeholder="Select Date" autoApply></Datepicker>
                            <InputFieldError :errors="errors.valid_until"/>
                        </div>
                    </div>


                    <div class="col-md">
                        <label>End date :
                            <Required/>
                        </label>
                        <div class="">
                            <Datepicker v-model="createForm.end_date"
                                        :monthChangeOnScroll="false"
                                        placeholder="Select Date" autoApply></Datepicker>
                            <InputFieldError :errors="errors.valid_until"/>
                        </div>
                    </div>
                </div>



                <div class="row mb-1">
                    <div class="col-md-12">
                        <label>Project Description  :
                            <Required/>
                        </label>
                        <div class="">
                            <TextEditor v-model="createForm.credintials"></TextEditor>
                        </div>
                    </div>
                    <div class="col-md-12 mt-2">
                        <label>Project Credential's : </label>
                        <div class="">
                            <TextEditor v-model="createForm.project_details"></TextEditor>
                        </div>
                    </div>
                </div>


                <div class="row mb-1">
                    <div class="col-md">
                        <label>Upload Files</label>
                        <ImageUploader v-model="createForm.files" label="Project Files" />
                    </div>
                </div>
                <div class="row mb-1">
                    <div class="col-md">
                        <label>Project Status: </label>
                        <select class="form-control" v-model="createForm.status">
                            <option v-for="optoin in status" :value="optoin" :selected="optoin === 'New Lead'">
                                {{optoin }}
                            </option>
                        </select>
                    </div>

                    <div class="col-md">
                        <label>Assign Developers: </label>
                        <select class="form-control" v-model="createForm.agents" multiple name="agents[]">
                            <option v-for="user in users" :value="user.id">{{ user.name }}</option>
                        </select>
                    </div>
                </div>

                <div class="row mb-1">
                    <div class="col-md-12 mt-2">
                        <label>Nots : </label>
                        <div class="">
                            <TextEditor v-model="createForm.note"></TextEditor>
                        </div>
                    </div>
                </div>
            </div>


            <div class="modal-footer">
                <button :disabled="createForm.processing" type="submit"
                        class="btn btn-primary waves-effect waves-float waves-light">Submit
                </button>
                <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal"
                        aria-label="Close">Cancel
                </button>
            </div>
        </form>
    </Modal>

<!--
    <Modal id="editClient" title="Show Client" v-vb-is:modal size="lg">
        <form @submit.prevent="updateClientForm(editData.id)">
            <div class="modal-body">
                <div class="row mb-1">
                    <div class="col-md">
                        <label>Name:
                            <Required/>
                        </label>
                        <div class="">
                            <input v-model="updateForm.name" type="text" placeholder="Name" class="form-control">
                            <span v-if="errors.name" class="error text-sm text-danger">{{ errors.name }}</span>
                        </div>
                    </div>
                    <div class="col-md">
                        <label>Email: <span class="text-danger">*</span></label>
                        <div class="">
                            <input v-model="updateForm.email" type="email" placeholder="eg.example@creativetechpark.com"
                                   class="form-control">
                            <span v-if="errors.email" class="error text-sm text-danger">{{ errors.email }}</span>
                        </div>
                    </div>
                </div>
                <div class="row mb-1">
                    <div class="col-md">
                        <label>Secondary Email: </label>
                        <input v-model="updateForm.secondary_email" type="email" placeholder="second.eg@ctpbd.com"
                               class="form-control">
                        <span v-if="errors.secondary_email" class="error text-sm text-danger">{{
                                errors.secondary_email
                            }}</span>
                    </div>
                    <div class="col-md">
                        <label>Phone: <span class="text-danger">*</span></label>
                        <input v-model="updateForm.phone" type="text" placeholder="+88017********" class="form-control">
                        <span v-if="errors.phone" class="error text-sm text-danger">{{ errors.phone }}</span>
                    </div>
                </div>
                <div class="row mb-1">
                    <div class="col-md">
                        <label>Secondary Phone: </label>
                        <input v-model="updateForm.secondary_phone" type="text" placeholder="+88017********"
                               class="form-control">
                        <span v-if="errors.secondary_phone" class="error text-sm text-danger">{{
                                errors.secondary_phone
                            }}</span>
                    </div>
                    <div class="col-md">
                        <label>Company: </label>
                        <input v-model="updateForm.company" type="text" placeholder="Enter Company Name"
                               class="form-control">
                        <span v-if="errors.company" class="error text-sm text-danger">{{ errors.company }}</span>
                    </div>
                </div>
                <div class="row mb-1">
                    <div class="col-md">
                        <label>Address: </label>
                        <textarea v-model="updateForm.address" type="text" placeholder="Enter Full Address" rows="5"
                                  class="form-control"></textarea>
                        <span v-if="errors.name" class="error text-sm text-danger">{{ errors.address }}</span>
                    </div>
                    <div class="col-md">
                        <label>Nots: </label>
                        <textarea v-model="updateForm.note" type="text" placeholder="Enter note messages" rows="5"
                                  class="form-control"></textarea>
                        <span v-if="errors.note" class="error text-sm text-danger">{{ errors.note }}</span>
                    </div>
                </div>

                <div class="row mb-1">
                    <div class="col-md">
                        <label>Assign Agent: </label>
                        <select class="form-control" v-model="updateForm.status">
                            <option v-for="option in status" :value="option" :selected="option === 'New Lead'">{{ option }}
                            </option>
                        </select>

                    </div>
                    <div class="col-md">
                        <label>Assign Agent: </label>
                        <select class="form-control" v-model="updateForm.agents" multiple>
                            <option v-for="user in users" :value="user.id">{{ user.name }}</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button :disabled="createForm.processing" type="submit"
                        class="btn btn-primary waves-effect waves-float waves-light">Submit
                </button>
                <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal"
                        aria-label="Close">Cancel
                </button>
            </div>
        </form>
    </Modal>-->

</template>



<script setup>
    import Pagination from "../../../components/Pagination"
    import Icon from '../../../components/Icon'
    import Modal from '../../../components/Modal'
    import InputFieldError from "../../../components/InputFieldError";
    import TextEditor from "../../../components/TextEditor";
    import ImageUploader from "../../../components/ImageUploader"
    import {ref, watch} from "vue";
    import debounce from "lodash/debounce";
    import {Inertia} from "@inertiajs/inertia";
    import Swal from 'sweetalert2'
    import {useForm} from "@inertiajs/inertia-vue3";
    import axios from 'axios';


    let props = defineProps({
        projects: Object,
        filters: Object,
        errors: Object,
        clients:Object,
        main_url:"",

        users:Object,
    });


    let editData = ref([]);


    let createForm = useForm({
        name: "",
        note: "",
        status: "",
        date:"",
        start_date:'',
        end_date:'',
        agents: [null],
        client_id:"",
        descriptions:"",
        credintials:'',
        project_details:'',

        files:null,

        processing: Boolean,
    })

    // let updateForm = useForm({
    //     name: "",
    //     email: "",
    //     secondary_email: "",
    //     phone: "",
    //     secondary_phone: "",
    //     company: "",
    //     address: "",
    //     note: "",
    //     status: "",
    //     agents: null,
    // })

    let status = [
        'New Project',
        'In Process',
        'Testing',
        'Revision',
        'Complete',
        'Canceled'
    ]

    let deleteItemModal = (id) => {
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#6418b1',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                Inertia.delete('clients/' + id, {
                    preserveState: true, replace: true, onSuccess: page => {
                        Swal.fire(
                            'Deleted!',
                            'Your file has been deleted.',
                            'success'
                        )
                    },
                    onError: errors => {
                        Swal.fire(
                            'Oops...',
                            'Something went wrong!',
                            'error'
                        )
                    }
                })
            }
        })
    };

    let addDataModal = () => {
        document.getElementById('addItemModal').$vb.modal.show()
    }
    let createProject = () => {
        Inertia.post('projects', createForm, {
            preserveState: true,
            onStart: () => {
                createForm.processing = true
            },
            onFinish: () => {
                createForm.processing = false
            },
            onSuccess: () => {
                document.getElementById('addItemModal').$vb.modal.hide()
                createForm.reset()
                Swal.fire(
                    'Saved!',
                    'Your file has been Saved.',
                    'success'
                )
            },
        })
    }

    let updateClientForm = (id) => {
        Inertia.put('clients/' + id, updateForm, {
            preserveState: true,
            onStart: () => {
                createForm.processing = true
            },
            onFinish: () => {
                createForm.processing = false
            },
            onSuccess: () => {
                document.getElementById('editClient').$vb.modal.hide()
                createForm.reset()
                Swal.fire(
                    'Saved!',
                    'Your file has been Updated.',
                    'success'
                )
            },
        })
    }

    let editClient = (url) => {
        axios.get(url).then(res => {
            editData.value = res.data;
            //
            // updateForm.name = res.data.name;
            // updateForm.email = res.data.email;
            // updateForm.secondary_email = res.data.secondary_email;
            // updateForm.phone = res.data.phone;
            // updateForm.secondary_phone = res.data.secondary_phone;
            // updateForm.company = res.data.company;
            // updateForm.address = res.data.address;
            // updateForm.note = res.data.note;
            // updateForm.status = res.data.status;

            document.getElementById('editClient').$vb.modal.show();
        }).catch(err => {
            console.log(err);
        });
    }

    // let showProject = (url) =>{
    //     Inertia.get(url, {
    //
    //     })
    // }

    let search = ref(props.filters.search);
    let perPage = ref(props.filters.perPage);

    watch([search, perPage], debounce(function ([val, val2]) {
        Inertia.get(props.main_url, {search: val, perPage: val2}, {preserveState: true, replace: true});
    }, 300));

</script>

<style scoped>
    .ck.ck-editor__main>.ck-editor__editable.ck-rounded-corners{
        min-height: 15rem !important;
    }
</style>
