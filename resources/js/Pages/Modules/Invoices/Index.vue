<template>
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-start mb-0">Invoices</h2>
                            <div class="breadcrumb-wrapper">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li>
                                    <li class="breadcrumb-item active">Invoices</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content-header-right text-md-end col-md-3 col-12 d-md-block d-none">
                    <div class="mb-1 breadcrumb-right">
                        <div class="dropdown">
                            <button class="btn-icon btn btn-primary btn-round btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="grid"></i></button>
                            <div class="dropdown-menu dropdown-menu-end"><a class="dropdown-item" href="app-todo.html"><i class="me-1" data-feather="check-square"></i><span class="align-middle">Todo</span></a><a class="dropdown-item" href="app-chat.html"><i class="me-1" data-feather="message-square"></i><span class="align-middle">Chat</span></a><a class="dropdown-item" href="app-email.html"><i class="me-1" data-feather="mail"></i><span class="align-middle">Email</span></a><a class="dropdown-item" href="app-calendar.html"><i class="me-1" data-feather="calendar"></i><span class="align-middle">Calendar</span></a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">

                <!-- Advanced Search -->
                <section id="advanced-search-datatable">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header border-bottom d-flex justify-content-between">
                                    <h4 class="card-title">Invoices Information's </h4>
                                    <a class="dt-button add-new btn btn-primary" href="invoices/create">Add Invoices</a>
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
                                                    <label>Search:<input v-model="search" type="search" class="form-control" placeholder=""
                                                                         aria-controls="DataTables_Table_0"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <table class="user-list-table table">
                                        <thead class="table-light">
                                        <tr class="">
                                            <th class="sorting">#id</th>
                                            <th class="sorting">Name</th>
                                            <th class="sorting">Price</th>
                                            <th class="sorting">Description</th>
                                            <th class="sorting">Created At</th>
                                            <th class="sorting">Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr v-for="user in users.data" :key="user.id">
                                            <td>{{ user.id }}</td>
                                            <td>{{ user.name }}</td>
                                            <td>{{ user.price }} </td>
                                            <td>{{ user.description }} </td>
                                            <td>{{ user.created_at }}</td>
                                            <td>
                                                <div class="demo-inline-spacing">
                                                    <button type="button" class="btn btn-icon btn-icon rounded-circle btn-warning waves-effect waves-float waves-light">
                                                        <Icon title="eye" />
                                                    </button>
                                                    <a :href="user.invice_url" class="btn btn-icon btn-icon rounded-circle btn-warning waves-effect waves-float waves-light">
                                                        <Icon title="download" />
                                                    </a>
                                                    <button @click="deleteItemModal(user.id)" type="button" class="btn btn-icon btn-icon rounded-circle btn-warning waves-effect waves-float waves-light btn-danger">
                                                        <Icon title="trash" />
                                                    </button>

                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>

                                    <Pagination :links="users.links" :from="users.from" :to="users.to" :total="users.total" />
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




    <Modal id="createNewCategory" title="Add New Client" v-vb-is:modal :size="{defalut:'lg'}">
        <form @submit.prevent="createNewCategory">
            <div class="modal-body">
                <div class="row mb-1">
                    <div class="col-md">
                        <label>Name: </label>
                        <div class="">
                            <input v-model="createForm.name" type="text" placeholder="Name" class="form-control">
                            <span v-if="createForm.errors.name" class="error">{{ createForm.errors.name }}</span>
                        </div>
                    </div>
                    <div class="col-md">
                        <label>Email: </label>
                        <div class="">
                            <input v-model="createForm.name" type="text" placeholder="Email" class="form-control">
                            <span v-if="createForm.errors.name" class="error">{{ createForm.errors.name }}</span>
                        </div>
                    </div>
                </div>
                <div class="row mb-1">
                    <div class="col-md">
                        <label>Secondary Email: </label>
                        <input v-model="createForm.name" type="text" placeholder="Secondary Email" class="form-control">
                        <span v-if="createForm.errors.name" class="error">{{ createForm.errors.name }}</span>
                    </div>
                    <div class="col-md">
                        <label>Phone: </label>
                        <input v-model="createForm.name" type="text" placeholder="Phone" class="form-control">
                        <span v-if="createForm.errors.name" class="error">{{ createForm.errors.name }}</span>
                    </div>
                </div>
                <div class="row mb-1">
                    <div class="col-md">
                        <label>Secondary Phone: </label>
                        <input v-model="createForm.name" type="text" placeholder="Secondary Phone" class="form-control">
                        <span v-if="createForm.errors.name" class="error">{{ createForm.errors.name }}</span>
                    </div>
                    <div class="col-md">
                        <label>Company: </label>
                        <input v-model="createForm.name" type="text" placeholder="company" class="form-control">
                        <span v-if="createForm.errors.name" class="error">{{ createForm.errors.name }}</span>
                    </div>
                </div>
                <div class="row mb-1">
                    <div class="col-md">
                        <label>Address: </label>
                        <textarea v-model="createForm.name" type="text" placeholder="address" rows="5" class="form-control"></textarea>
                        <span v-if="createForm.errors.name" class="error">{{ createForm.errors.name }}</span>
                    </div>
                    <div class="col-md">
                        <label>Nots: </label>
                        <textarea v-model="createForm.name" type="text" placeholder="note" rows="5" class="form-control"></textarea>
                        <span v-if="createForm.errors.name" class="error">{{ createForm.errors.name }}</span>
                    </div>
                </div>
                <div class="mb-1">
                    <label>Status: </label>
                    <select class="form-control" name="options">
                        <option value="">One</option>
                        <option value="">One</option>
                        <option value="">One</option>
                        <option value="">One</option>
                        <option value="">One</option>
                    </select>
                </div>
            </div>

            <div class="modal-footer">
                <button :disabled="createForm.processing" type="submit"
                        class="btn btn-primary waves-effect waves-float waves-light">Submit</button>
                <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal"
                        aria-label="Close">Cancel</button>
            </div>
        </form>
    </Modal>



</template>
<script>

</script>
<script setup>
    import Pagination from "../../../components/Pagination"
    import Icon from '../../../components/Icon'
    import Modal from '../../../components/Modal'
    import {ref, watch} from "vue";
    import debounce from "lodash/debounce";
    import {Inertia} from "@inertiajs/inertia";
    import Swal from 'sweetalert2'
    import {useForm} from "@inertiajs/inertia-vue3";



    // defineProps({
    //     users:Array,
    //     notification:Array,
    // });

    let props = defineProps({
        users: Object,
        filters: Object,
        //   can: Object,
        notification:Object,
    });

    let createForm = useForm({
        name:"",
        processing:Boolean,
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
                Inertia.delete(adminPath.value + '/users/' + id, { preserveState: true, replace: true, onSuccess: page => {
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
                    }})
            }
        })
    };





    let search = ref(props.filters.search);
    let perPage = ref(props.filters.perPage);

    watch([search, perPage], debounce(function ([val, val2]) {
        Inertia.get('/users', { search: val, perPage: val2 }, { preserveState: true, replace: true });
    }, 300));





</script>

<style lang="scss">
    /*@import "../../../../sass/base/plugins/tables/datatables";*/
</style>
