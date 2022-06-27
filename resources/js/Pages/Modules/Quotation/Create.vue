<template>

    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-start mb-0">Quotations Form</h2>
                            <div class="breadcrumb-wrapper">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li>
                                    <li class="breadcrumb-item active">Quotations</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content-header-right text-md-end col-md-3 col-12 d-md-block d-none">
                    <div class="mb-1 breadcrumb-right">
                        <div class="dropdown">
                            <button class="btn-icon btn btn-primary btn-round btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="grid"></i></button>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="app-todo.html">
                                    <i class="me-1" data-feather="check-square"></i>
                                    <span class="align-middle">Todo</span></a>
                                <a class="dropdown-item" href="app-chat.html">
                                    <i class="me-1" data-feather="message-square"></i>
                                    <span class="align-middle">Chat</span></a>
                                <a class="dropdown-item" href="app-email.html">
                                    <i class="me-1" data-feather="mail"></i>
                                    <span class="align-middle">Email</span></a>
                                <a class="dropdown-item" href="app-calendar.html">
                                    <i class="me-1" data-feather="calendar"></i>
                                    <span class="align-middle">Calendar</span></a>
                            </div>
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
                                    <h4 class="card-title">Quotations Information's </h4>
                                    <Link href="/admin/quotations" class="dt-button add-new btn btn-primary">Manage Quotations</Link>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-11 mx-auto">
                            <form @submit.prevent="createQutation">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="modal-body">
                                                <div class="row mb-1">
                                                    <div class="col-md">
                                                        <label for="select2-basic">Client : <Required/></label>
                                                        <div class="">
                                                            <select class="select2 form-select" id="select2-basic" v-model="data.client_id">
                                                                <option v-for="option in clients" :value="option.id">{{ option.name }}</option>
                                                            </select>
                                                            <span  class="error text-sm text-danger"></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-md">
                                                        <label>Subject : </label>
                                                        <div class="">
                                                            <input  type="text" placeholder="Subjects" v-model="data.subject" class="form-control">
                                                            <span  class="error text-sm text-danger"></span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row mb-1">
                                                    <div class="col-md">
                                                        <label for="select2-basic">Date :</label>
                                                        <div class="">
                                                            <input type="date" class="form-control" v-model="data.date">
                                                            <span  class="error text-sm text-danger"></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-md">
                                                        <label>Valid until : </label>
                                                        <div class="">
                                                            <input type="date" class="form-control" v-model="data.valid_until">
                                                            <span  class="error text-sm text-danger"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-body">
                                        <div class="modal-body">
                                            <div class="row mb-1">
                                                <div class="col-md">
                                                    <label for="select2-basic">Total page : <Required/></label>
                                                    <div class="">
                                                        <input  type="text" placeholder="Subjects" v-model="data.page" class="form-control">
                                                        <span  class="error text-sm text-danger"></span>
                                                    </div>
                                                </div>
                                                <div class="col-md">
                                                    <label>Price Parpage : </label>
                                                    <div class="">
                                                        <input  type="text" placeholder="Subjects" v-model="data.page_price" class="form-control">
                                                        <span  class="error text-sm text-danger"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-body">
                                        <div class="modal-body">
                                            <div class="row mb-1">
                                                <div class="col-md">
                                                    <label for="select2-basic">Content Of Page : <Required/></label>
                                                    <div class="">
                                                        <input  type="text" placeholder="Subjects" v-model="data.content_page" class="form-control">
                                                        <span  class="error text-sm text-danger"></span>
                                                    </div>
                                                </div>
                                                <div class="col-md">
                                                    <label>Content Page Price : </label>
                                                    <div class="">
                                                        <input  type="text" placeholder="Subjects" v-model="data.content_price" class="form-control">
                                                        <span  class="error text-sm text-danger"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Select a Service</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="demo-inline-spacing">
                                            <div class="form-check form-check-primary" v-for="(option , index) in services" :key="index">
                                                <input type="radio" v-model="data.website_id" :id="option.name" :value="option.id" class="form-check-input" :checked="index===0">
                                                <label class="form-check-label" :for="option.name">{{ option.name }}</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Select Domain</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="demo-inline-spacing">
                                            <div class="form-check form-check-primary" v-for="(option , index) in domains" :key="index">
                                                <input type="radio" v-model="data.domain_id" :id="option.name" :value="option.id" class="form-check-input" :checked="index===0">
                                                <label class="form-check-label" :for="option.name">{{ option.name }}</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Select Hostings</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="demo-inline-spacing">
                                            <div class="form-check form-check-primary" v-for="(option , index) in hostings" :key="index">
                                                <input type="radio" v-model="data.hosting_id" :id="option.name" :value="option.id" class="form-check-input" :checked="index===0">
                                                <label class="form-check-label" :for="option.name">{{ option.name }}</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Select a Package</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="demo-inline-spacing">
                                            <div class="form-check form-check-primary" v-for="(option , index) in packages" :key="index">
                                                <input type="radio" v-model="data.design_id" :id="option.name" :value="option.id"  class="form-check-input" :checked="index===0">
                                                <label class="form-check-label" :for="option.name">{{ option.name }}</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Select a platform</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="demo-inline-spacing">
                                            <div class="form-check form-check-primary" v-for="(option , index) in platforms" :key="index">
                                                <input type="radio"  v-model="data.platform_id" :id="option.name" :value="option.id" class="form-check-input" :checked="index===0">
                                                <label class="form-check-label" :for="option.name">{{ option.name }}</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Works</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="demo-inline-spacing">
                                            <div class="form-check form-check-primary" v-for="(option , index) in works" :key="index">
                                                <input type="checkbox" class="form-check-input" v-model="data.woarks" :id="option.name" :value="option.id" :checked="index === 0">
                                                <label class="form-check-label" :for="option.name">{{ option.name }}</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-body">
                                        <div class="modal-body">
                                            <div class="row mb-1">
                                                <div class="col-md">
                                                    <label for="select2-basic">Payment Policy : <Required/></label>
                                                    <div class="">
                                                        <textarea  type="text" placeholder="Subjects" v-model="data.payment_policy" class="form-control"></textarea>

                                                        <span  class="error text-sm text-danger"></span>
                                                    </div>

                                                </div>
                                                <div class="col-md">
                                                    <label>terms_of_service : </label>
                                                    <div class="">
                                                        <textarea  type="text" placeholder="Subjects" v-model="data.terms_of_service" class="form-control"></textarea>
                                                        <span  class="error text-sm text-danger"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                                <div class="card" >
                                    <div class="card-body">
                                        <div data-repeater-item v-for="(item, index) in data.quatations">
                                            <h4 class="card-title">Test form - {{index + 1}}</h4>
                                            <div class="row d-flex align-items-center">
                                                <div class="col-md-4 col-12">
                                                    <div class="mb-1">
                                                        <label class="form-label" for="quatitiontitle">Item Name</label>
                                                        <textarea type="text" id="quatitiontitle" class="form-control" rows="4" v-model="data.quatations[index].itemname"  aria-describedby="itemname" placeholder="Vuexy Admin Template" />
                                                    </div>
                                                </div>

                                                <div class="col-md-2 col-12">
                                                    <div class="mb-1">
                                                        <label class="form-label" for="itemcost">Cost</label>
                                                        <input type="text" id="itemcost" class="form-control" v-model="data.quatations[index].cost" aria-describedby="itemcost" placeholder="32" />
                                                    </div>
                                                </div>

                                                <div class="col-md-2 col-12">
                                                    <div class="mb-1">
                                                        <label class="form-label" for="itemquantity">Quantity</label>
                                                        <input type="text" id="itemquantity" class="form-control" v-model="data.quatations[index].quantity" aria-describedby="itemquantity" placeholder="1" />
                                                    </div>
                                                </div>


                                                <div class="col-md-2 col-12" v-if="index != 0">
                                                    <button class="btn btn-outline-danger text-nowrap px-1" @click="deleteRow(index)" data-repeater-delete type="button">
                                                        <i data-feather="x" class="me-25"></i>
                                                        <span>Delete</span>
                                                    </button>
                                                </div>
                                            </div>
                                            <hr />
                                        </div>
                                        <button class="btn btn-primary" type="button" name="button" @click="addRow">Add form fields</button>
                                    </div>
                                </div>


                                <div class="float-end">
                                    <button  type="submit"
                                            class="btn btn-primary waves-effect waves-float waves-light me-2">Submit</button>
                                    <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal"
                                            aria-label="Close">Cancel</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </section>
                <!--/ Advanced Search -->
                <!--/ Multilingual -->
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




    let props = defineProps({
        clients: Object,
        services: Object,
        packages: Object,
        platforms: Object,
        works: Object,
        filters: Object,
        domains: Object,
        hostings:Object,
        //   can: Object,
        notification:Object,
    })


    // let createForm = useForm({
    //     processing:Boolean,
    // })



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

    // let createQutation = ( )=>{
    // }


    //
    // let search = ref(props.filters.search);
    // let perPage = ref(props.filters.perPage);
    //
    // watch([search, perPage], debounce(function ([val, val2]) {
    //     Inertia.get('/users', { search: val, perPage: val2 }, { preserveState: true, replace: true });
    // }, 300));
    //




</script>

<script>
    export default {
        el: '.container',
        data() {
            return {
                data:{
                    quatations: [
                        {
                            itemname: '',
                            cost: '',
                            quantity: ''
                        }
                    ],
                    client_id:"",
                    subject:"",
                    valid_until:"",
                    website_id:"",
                    platform_id:"",
                    design_id:"",
                    domain_id:"",
                    hosting_id:"",
                    page:"",
                    page_price:"",
                    content_page:"",
                    content_price:"",
                    payment_policy:"",
                    terms_of_service:"",
                    date:"",
                    woarks:[],


                    // processing:Boolean,

                }
            }
        },

        methods: {
            addRow () {
                this.data.quatations.push({
                    itemname: '',
                    cost: '',
                    quantity: ''
                })
            },
            deleteRow (index) {
                this.data.quatations.splice(index, 1)
            },
            createQutation(){
                Inertia.post('/admin/quotations', this.data, {
                    preserveState: true,
                    // onStart: () =>{ data.processing = true},
                    // onFinish: () => { data.processing = false},
                    onSuccess: ()=> {
                        // document.getElementById('createDomains').$vb.modal.hide()
                        this.data.quatations.reset()
                        Swal.fire(
                            'Saved!',
                            'Your file has been Saved.',
                            'success'
                        )
                    },
                })
            }
        }
    }
</script>

<style lang="scss">
    /*@import "../../../../sass/base/plugins/tables/datatables";*/
</style>
