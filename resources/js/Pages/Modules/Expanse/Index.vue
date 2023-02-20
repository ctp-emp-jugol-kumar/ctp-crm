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
                                    <h4 class="card-title">Methods Information's </h4>
                                    <button class="dt-button add-new btn btn-primary" tabindex="0" type="button" data-bs-toggle="modal"
                                            data-bs-target="#createData"
                                    >Add Method</button>
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
                                            <th class="sorting">Created At</th>
                                            <th class="sorting">Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr v-for="hosting in expanses.data" :key="hosting.id">
                                            <td>{{ hosting.id }}</td>
                                            <td>{{ hosting.created_at }}</td>
                                            <td>
                                                <div class="demo-inline-spacing">
                                                    <button type="button" @click="editItem(hosting.show_url)"
                                                            class="btn btn-icon btn-icon rounded-circle btn-warning waves-effect waves-float waves-light">
                                                        <Icon title="eye"/>
                                                    </button>
                                                    <button @click="deleteItemModal(hosting.id)" type="button" class="btn btn-icon btn-icon rounded-circle btn-warning waves-effect waves-float waves-light btn-danger">
                                                        <Icon title="trash" />
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>

                                    <Pagination :links="expanses.links" :from="expanses.from" :to="expanses.to" :total="expanses.total" />
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

    <Modal id="createData" title="Edit Hostings" v-vb-is:modal size="md">
        <form @submit.prevent="createData">
            <div class="modal-body">
                <div class="row mb-1">
                    <div class="col-md">
                        <label>Method Name: <Required/></label>
                        <div class="">
                            <input v-model="updateForm.name" type="text" placeholder="Method Name" class="form-control">
                            <span v-if="errors.name" class="error text-sm text-danger">{{ errors.name }}</span>
                        </div>
                    </div>
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
import axios from "axios";

let props = defineProps({
    expanses: Object,
    filters: Object,
    notification:Object,
    errors:Object,
    platforms:Object,
    main_url: String,
});


let createForm = useForm({
    name:"",

    processing:Boolean,
})

let updateForm = useForm({
    name:"",
})

let editData = ref([]);

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
            Inertia.delete( 'methods/' + id, { preserveState: true, replace: true, onSuccess: page => {
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


let createData = () => {
    Inertia.post('methods/', updateForm,{
        preserveState: true,
        onStart: () => {
            createForm.processing = true
        },
        onFinish: () => {
            createForm.processing = false
        },
        onSuccess: () => {
            document.getElementById('createData').$vb.modal.hide()
            createForm.reset()
            Swal.fire(
                'Saved!',
                'Your file has been Updated.',
                'success'
            )
        },
    })
}


let search = ref(props.filters.search);
let perPage = ref(props.filters.perPage);

watch([search, perPage], debounce(function ([val, val2]) {
    Inertia.get(props.main_url, { search: val, perPage: val2 }, { preserveState: true, replace: true });
}, 300));





</script>

<style lang="scss">
/*@import "../../../../sass/base/plugins/tables/datatables";*/
</style>
