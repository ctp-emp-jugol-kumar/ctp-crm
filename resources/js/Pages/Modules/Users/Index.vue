<template>
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-start mb-0">DataTables</h2>
                            <div class="breadcrumb-wrapper">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item"><a href="#">Datatable</a></li>
                                    <li class="breadcrumb-item active">Basic</li>
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
                                <div class="card-header border-bottom">
                                    <h4 class="card-title">Advanced Search</h4>
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
                                            <th class="sorting">Name</th>
                                            <th class="sorting">Role</th>
                                            <th class="sorting">Active on</th>
                                            <th class="sorting">Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr v-for="user in users.data" :key="user.id">
                                            <td>
                                                <div class="d-flex justify-content-left align-items-center">
                                                    <div class="avatar-wrapper">
                                                        <div class="avatar  me-1">
                                                            <img src="https://images.unsplash.com/photo-1633332755192-727a05c4013d"
                                                                 alt="{{ user.username }}" height="32" width="32">
                                                        </div>
                                                    </div>
                                                    <div class="d-flex flex-column">
                                                        <div class="user_name text-truncate text-body">
                                                            <span class="fw-bolder">{{ user.username }}</span>
                                                        </div>
                                                        <small class="emp_post text-muted">{{ user.email }}</small>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>{{ user.username }}</td>
                                            <td>{{ user.is_active }}</td>
                                            <td>
                                                <div class="demo-inline-spacing">
                                                    <button type="button" class="btn btn-icon btn-icon rounded-circle btn-warning waves-effect waves-float waves-light">
                                                        <Icon title="eye" />
                                                    </button>
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
                                <!--
                                <div class="card-datatable">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th>Project</th>
                                                <th>Client</th>
                                                <th>Users</th>
                                                <th>Status</th>
                                                <th>Actions</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr v-for="user in users.data" :key="user.id">
                                                    <td>
                                                        Id# {{ user.id }}
                                                    </td>
                                                    <td>{{ user.first_name }}</td>
                                                    <td>
                                                        <div class="avatar-group">
&lt;!&ndash;                                                            <div data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar pull-up my-0" title="Lilian Nenez">&ndash;&gt;
&lt;!&ndash;                                                                <img src="../../../app-assets/images/portrait/small/avatar-s-5.jpg" alt="Avatar" height="26" width="26" />&ndash;&gt;
&lt;!&ndash;                                                            </div>&ndash;&gt;
&lt;!&ndash;                                                            <div data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar pull-up my-0" title="Alberto Glotzbach">&ndash;&gt;
&lt;!&ndash;                                                                <img src="../../../app-assets/images/portrait/small/avatar-s-6.jpg" alt="Avatar" height="26" width="26" />&ndash;&gt;
&lt;!&ndash;                                                            </div>&ndash;&gt;
&lt;!&ndash;                                                            <div data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar pull-up my-0" title="Alberto Glotzbach">&ndash;&gt;
&lt;!&ndash;                                                                <img src="../../../app-assets/images/portrait/small/avatar-s-7.jpg" alt="Avatar" height="26" width="26" />&ndash;&gt;
&lt;!&ndash;                                                            </div>&ndash;&gt;
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <span v-if="user.is_active" class="badge rounded-pill badge-light-primary me-1">Active</span>
                                                        <span v-else class="badge rounded-pill badge-light-danger me-1">Inactive</span>
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <button type="button" class="btn btn-sm dropdown-toggle hide-arrow py-0" data-bs-toggle="dropdown">
                                                                <i data-feather="more-vertical"></i>
                                                            </button>
                                                            <div class="dropdown-menu dropdown-menu-end">
                                                                <a class="dropdown-item" href="#">
                                                                    <i data-feather="edit-2" class="me-50"></i>
                                                                    <span>Edit</span>
                                                                </a>
                                                                <a class="dropdown-item" href="#">
                                                                    <i data-feather="trash" class="me-50"></i>
                                                                    <span>Delete</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>-->
                            </div>
                        </div>
                    </div>
                </section>
                <!--/ Advanced Search -->
                <!--/ Multilingual -->
            </div>
        </div>
    </div>
</template>
<script>

</script>
<script setup>
    import Pagination from "../../../components/Pagination"
    import Icon from '../../../components/Icon'
    import {ref, watch} from "vue";
    import debounce from "lodash/debounce";
    import {Inertia} from "@inertiajs/inertia";
    import Swal from 'sweetalert2'



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
