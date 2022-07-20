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
                                        <tr v-for="invoice in users.data" :key="invoice.id">
                                            <td>{{ invoice.id }}</td>
                                            <td>{{ invoice.name }}</td>
                                            <td>{{ invoice.price }} </td>
                                            <td>{{ invoice.description }} </td>
                                            <td>{{ invoice.created_at }}</td>
                                            <td>
                                                <div class="demo-inline-spacing">
                                                    <a :href="invoice.invice_url"
                                                       class="btn btn-icon btn-icon rounded-circle bg-light-warning waves-effect waves-float waves-light">
                                                        <Icon title="eye" />
                                                    </a>


                                                    <a :href="invoice.edit_url"
                                                       class="btn btn-icon btn-icon rounded-circle bg-light-primary waves-effect waves-float waves-light">
                                                        <Icon title="eye" />
                                                    </a>


                                                    <button @click="deleteItemModal(invoice.id)"
                                                            type="button"
                                                            class="btn btn-icon btn-icon rounded-circle waves-effect waves-float waves-light bg-light-danger">
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

    let editITem = (id) =>{
        Inertia.get('invoices/'+id)
    }




    let search = ref(props.filters.search);
    let perPage = ref(props.filters.perPage);

    watch([search, perPage], debounce(function ([val, val2]) {
        Inertia.get('/users', { search: val, perPage: val2 }, { preserveState: true, replace: true });
    }, 300));





</script>

<style lang="scss">
    /*@import "../../../../sass/base/plugins/tables/datatables";*/
</style>
