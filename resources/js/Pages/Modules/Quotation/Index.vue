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
                                    <h4 class="card-title">Quotations Information's </h4>
                                    <Link href="quotations/create" class="dt-button add-new btn btn-primary">Add Quotations</Link>
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
                                            <th class="sorting">Date</th>
                                            <th class="sorting">Client</th>
                                            <th class="sorting">Created by</th>
                                            <th class="sorting">Status</th>
<!--                                            <th class="sorting">Total</th>-->
<!--                                            <th class="sorting">Domain</th>-->
<!--                                            <th class="sorting">Hosting</th>-->
                                            <th class="sorting">Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr v-for="qut in quotations.data" :key="qut.id">
                                            <td>{{ qut.id }}</td>
                                            <td>{{ qut.date }}</td>
                                            <td>{{ qut.client_name ?? " " }} </td>
                                            <td>{{ qut.user_name ?? " " }} </td>
                                            <td>
                                                <span v-if="qut.status" class="badge badge-light-success">Success</span>
                                                <span v-else class="badge badge-light-warning">Pending</span>
                                            </td>
<!--                                            <td>{{ qut.totalPrice }} TK</td>-->
<!--                                            <td>{{ qut.domain ?? " "}}</td>-->
<!--                                            <td>{{ qut.hosting ?? " " }}</td>-->
                                            <td>


                                                <div class="demo-inline-spacing">
<!--                                                    <button @click="showQuotation(qut.id, 'invoice')" type="button" class="btn btn-icon btn-icon rounded-circle btn-warning waves-effect waves-float waves-light">
                                                        <Icon title="book" />
                                                    </button>-->
                                                    <a :href="qut.show_url" class="btn btn-icon btn-icon rounded-circle bg-light-primary waves-effect waves-float waves-light">
                                                        <Icon title="eye" />
                                                    </a>
                                                    <button @click="deleteItemModal(qut.id)" type="button" class="btn btn-icon btn-icon rounded-circle waves-effect waves-float waves-light bg-light-danger">
                                                        <Icon title="trash" />
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>

                                    <Pagination :links="quotations.links" :from="quotations.from" :to="quotations.to" :total="quotations.total" />
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




    <Modal id="showQuotation" title="Show Quotations" v-vb-is:modal :size="{defalut:'lg'}">
        <form @submit.prevent="createPlatforms">
            <div class="card-body">
                 <h2>Cllling</h2>
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

    import axios from "axios";

    export default {
        props: [
          'url',
        ],
        methods:{
            showQuotation(id){
                axios.get().then(function (data) {
                    document.getElementById('showQuotation').$vb.modal.show();
                    console.log(data);
                }).catch(function (err) {

                })
            }
        },

        setup(props){
            console.log(props.url);
        }
    }

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
    import {defineProps} from "@vue/runtime-core";


    let props = defineProps({
        quotations: Object,
        filters: Object,
        notification:Object,
        url:String,
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
    }


    let showQuotation = (id, page) => {
        Inertia.get(props.url+"/"+id, {page:page},{
            preserveState: true,
            replace:true,
        });
    }

    let createInvoice = (id) => {
        Inertia.get(props.url+"/invoice/"+id);
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
