<template>
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <section id="advanced-search-datatable">
                    <div class="row">
                        <div class="col-12">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" data-bs-toggle="tab"
                                            data-bs-target="#home"
                                            type="button" role="tab"
                                            aria-controls="home"
                                            aria-selected="true">Manage Notes</button>
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
                                    <div class="card">
                                        <div class="card-header border-bottom d-flex justify-content-between">
                                            <h4 class="card-title">Notes Information's </h4>
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
                                                            <label>Search <input v-model="search" type="search" class="form-control" placeholder="e.g Search Everything"
                                                                                 aria-controls="DataTables_Table_0"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <table class="hosting-list-table table">
                                                <thead class="table-light">
                                                <tr class="">
                                                    <th class="sorting">#id</th>
                                                    <th class="sorting">Name</th>
                                                    <th class="sorting">Category</th>
                                                    <th class="sorting">Created At</th>
                                                    <th class="sorting">Actions</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                    <tr v-for="item in notes.data">
                                                        <td>{{ item.id }}</td>
                                                        <td>{{ item.title }}</td>
                                                        <td>{{ item.notes_cat?.title }}</td>
                                                        <td>{{ item.created_at }}</td>
                                                        <td>
                                                            <CDropdown>
                                                                <CDropdownToggle class="p-0">
                                                                    <vue-feather type="more-vertical" />
                                                                </CDropdownToggle>
                                                                <CDropdownMenu>
                                                                    <CDropdownItem :href="item.show_url+'?satus=edit'">
                                                                        <Icon title="pencil" />
                                                                        <span class="ms-1">Edit</span>
                                                                    </CDropdownItem>
                                                                    <CDropdownItem :href="item.show_url" target="_blank">
                                                                        <Icon title="eye" />
                                                                        <span class="ms-1">Show</span>
                                                                    </CDropdownItem>
                                                                    <CDropdownItem @click="deleteItemModal(qut.id)">
                                                                        <Icon title="trash" />
                                                                        <span class="ms-1">Delete</span>
                                                                    </CDropdownItem>
                                                                </CDropdownMenu>
                                                            </CDropdown>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>

                                            <Pagination :links="notes.links" :from="notes.from" :to="notes.to" :total="notes.total" />
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                    <div class="row match-height">
                                        <form class="row" @submit.prevent="createNote">
                                            <div class="col-md-6">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h2 class="card-title">Create Note's</h2>
                                                        <div class="row mb-1">
                                                            <label>Title <Required/> </label>
                                                            <div class=null>
                                                                <input v-model="createForm.title" type="text" placeholder="e.g Single Note Title" class="form-control">
                                                                <span v-if="errors.title" class="error text-sm text-danger">{{ errors.title }}</span>
                                                            </div>
                                                        </div>
                                                        <div class="row mb-1">
                                                            <label>Note Category <Required/></label>
                                                            <v-select v-model="createForm.category"
                                                                      label="title"
                                                                      :options="categories"
                                                                      :reduce="cat => cat.id"
                                                                      placeholder="~~Select Sub Category~~"></v-select>
                                                            <span v-if="errors.category" class="error text-sm text-danger">{{ errors.category }}</span>
                                                        </div>

                                                        <div class="row mb-1">
                                                            <div class="col-md">
                                                                <label>Assign Agent: </label>
                                                                <v-select
                                                                    multiple
                                                                    v-model="createForm.agents"
                                                                    :options="users"
                                                                    placeholder="Search Country Name"
                                                                    :reduce="user => user.id"
                                                                    label="name">
                                                                    <template v-slot:option="option">
                                                                        <li class="d-flex align-items-start py-1">
                                                                            <div class="avatar me-75">
                                                                                <img :src="`${option.photo}`" alt="" width="38" height="38">
                                                                            </div>
                                                                            <div class="d-flex align-items-center justify-content-between w-100">
                                                                                <div class="me-1 d-flex flex-column">
                                                                                    <strong class="mb-25">{{ option.name }}</strong>
                                                                                    <span >{{ option.email }}</span>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                    </template>
                                                                </v-select>
                                                                <span v-if="errors.agents" class="error text-sm text-danger">{{ errors.agents }}</span>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex flex-column">
                                                            <label class="form-check-label mb-50"
                                                                   for="customSwitch10">Primary</label>
                                                            <div class="form-check form-switch form-check-primary">
                                                                <input type="checkbox" class="form-check-input"
                                                                       v-model="createForm.status" id="customSwitch10" checked/>
                                                                <label class="form-check-label" for="customSwitch10">
                                                            <span class="switch-icon-left"><i
                                                                data-feather="check"></i></span>
                                                                    <span class="switch-icon-right"><i data-feather="x"></i></span>
                                                                </label>
                                                            </div>
                                                        </div>
    <!--

                                                        <div class="row mb-1">
                                                            Note Create Rules

                                                            <ul>
                                                                <li>Sensative Clear note</li>
                                                                <li>Note must be have an category</li>
                                                                <li>Can have many agents under one notes</li>
                                                                <li>Note must be created by supper admin</li>
                                                            </ul>

                                                        </div>
    -->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="row mb-1">
                                                    <label>Name: <Required/> </label>
                                                    <div class=null>
                                                        <TextEditor v-model="createForm.notes" rows="30"></TextEditor>
                                                        <span v-if="errors.notes" class="error text-sm text-danger">{{ errors.notes }}</span>
                                                    </div>
                                                </div>


                                                <button :disabled="createForm.processing" type="submit"
                                                        class="btn btn-primary waves-effect waves-float waves-light me-2">Submit</button>
                                                <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal"
                                                        aria-label="Close">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                        </form>
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
    import Pagination from "../../../components/Pagination"
    import Icon from '../../../components/Icon'
    import Modal from '../../../components/Modal'
    import {ref, watch} from "vue";
    import debounce from "lodash/debounce";
    import {Inertia} from "@inertiajs/inertia";
    import Swal from 'sweetalert2'
    import {useForm} from "@inertiajs/inertia-vue3";
    import axios from 'axios';
    import {useDate} from "../../../composables/useDate";
    const range = useDate();
    import {CDropdown,CDropdownToggle, CDropdownMenu, CDropdownItem} from '@coreui/vue'
    import TextEditor from "../../../components/TextEditor";



    let props = defineProps({
        notes: Object | null,
        users:Object | null,
        categories:Object | null,
        filters: Object,
        errors: Object,
        main_url: null,
    });


    let editData = ref([]);


    let createForm = useForm({
        title: null,
        notes:null,
        agents: [],
        status:null,
        category:null,

        processing: Boolean,
    })

    let updateForm = useForm({
        name: null,
        email: null,
        secondary_email: null,
        phone: null,
        secondary_phone: null,
        company: null,
        address: null,
        note: null,
        status: null,
        agents: null,
    })

    let deleteItemModal = (id) => {
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
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

    let createNote = () => {
        Inertia.post(props.main_url, createForm, {
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
        axios.get(url+"?edit=true").then(res => {

            console.log(res.data)

            editData.value = res.data;
            updateForm.name = res.data.name;
            updateForm.email = res.data.email;
            updateForm.secondary_email = res.data.secondary_email;
            updateForm.phone = res.data.phone;
            updateForm.secondary_phone = res.data.secondary_phone;
            updateForm.company = res.data.company;
            updateForm.address = res.data.address;
            updateForm.note = res.data.note;
            updateForm.status = res.data.status;
            updateForm.agents = res.data.users;

            document.getElementById('editClient').$vb.modal.show();
        }).catch(err => {
            console.log(err);
        });
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
.ck.ck-editor__main>.ck-editor__editable:not(.ck-focused){
    min-height: 300px !important;
}
.ck-rounded-corners .ck.ck-editor__main>.ck-editor__editable, .ck.ck-editor__main>.ck-editor__editable.ck-rounded-corners{
    min-height: 300px !important;
}
</style>

