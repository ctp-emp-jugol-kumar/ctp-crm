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
                            <button class="btn-icon btn btn-primary btn-round btn-sm dropdown-toggle" type="button"
                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                data-feather="grid"></i></button>
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
                                    <Link href="/admin/quotations" class="dt-button add-new btn btn-primary">Manage
                                        Quotations
                                    </Link>
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
                                                    <label>Client :
                                                        <Required/>
                                                    </label>
                                                    <div class="">
                                                        <select2 :options="clients" :reduce="client => client.id"
                                                                 label="name" placeholder="Select Client"></select2>
                                                    </div>
                                                </div>
                                                <div class="col-md">
                                                    <label>Subject : </label>
                                                    <div class="">
                                                        <input type="text" placeholder="Subjects" v-model="data.subject"
                                                               class="form-control">
                                                        <span class="error text-sm text-danger"></span>
                                                        <InputFieldError :errors="errors.subject"/>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-1">
                                                <div class="col-md">
                                                    <label>Date :
                                                        <Required/>
                                                    </label>
                                                    <div class="">
                                                        <Datepicker v-model="data.date" :monthChangeOnScroll="false"
                                                                    placeholder="Select Date" autoApply></Datepicker>
                                                        <InputFieldError :errors="errors.date"/>
                                                    </div>
                                                </div>

                                                <div class="col-md">
                                                    <label>Valid until :
                                                        <Required/>
                                                    </label>

                                                    <div class="">
                                                        <Datepicker v-model="data.valid_until" :monthChangeOnScroll="false"
                                                                    placeholder="Select Date" autoApply></Datepicker>
                                                        <InputFieldError :errors="errors.valid_until"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <ServiceCard :cardTitle="worksTitle" :items="works"/>
                                <ServiceCard :cardTitle="domainTitle" :items="domains"/>
                                <ServiceCard :cardTitle="hostingTitle" :items="hostings"/>
                                <ServiceCard :cardTitle="packageTitle" :items="packages"/>
                                <div class="card">
                                    <div class="card-body">
                                        <div class="modal-body">
                                            <div class="row mb-1">
                                                <div class="col-md">
                                                    <label>Payment Policy :
                                                        <Required/>
                                                    </label>
                                                    <div class="">
                                                        <TextEditor></TextEditor>
                                                    </div>
                                                </div>
                                                <div class="col-md">
                                                    <label>terms_of_service : </label>
                                                    <div class="">
                                                        <TextEditor></TextEditor>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-4" data-repeater-item v-for="(item, index) in data.quatations">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title">index: {{ index }} total: {{ data.quatations.length - 1}}</h4>
                                                <div class="row d-flex align-items-center">
                                                    <div class="col-12">
                                                        <div class="mb-1">
                                                            <TextEditor v-model="data.quatations[index].itemname" placeholder="Item Details"/>
                                                        </div>
                                                        <div class="input-group border-0 d-flex">
                                                            <QtyButton/>
                                                            <input type="number" class="form-control rounded-start" placeholder="Price">
                                                            <input type="number" class="form-control" placeholder="Discount">
                                                        </div>
                                                    </div>
                                                </div>
                                                <button
                                                    v-if="index === data.quatations.length - 1"
                                                    class="btn btn-primary btn-sm float-end mt-25"
                                                    type="button"
                                                    name="button"
                                                    @click="addRow">
                                                    <vue-feather type="plus" />
                                                </button>
                                                <button
                                                    v-else
                                                    class="btn btn-danger btn-sm float-end mt-25"
                                                    @click="deleteRow(index)"
                                                    data-repeater-delete
                                                    type="button">
                                                    <vue-feather type="trash" />
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-item-center justify-content-between">
                                            <div class="d-flex flex-column">
                                                <label class="form-check-label mb-50"
                                                       for="customSwitch10">Primary</label>
                                                <div class="form-check form-switch form-check-primary">
                                                    <input type="checkbox" class="form-check-input"
                                                           v-model="data.status" id="customSwitch10" checked/>
                                                    <label class="form-check-label" for="customSwitch10">
                                                        <span class="switch-icon-left"><i
                                                            data-feather="check"></i></span>
                                                        <span class="switch-icon-right"><i data-feather="x"></i></span>
                                                    </label>
                                                </div>
                                            </div>

                                            <div>
                                                <button type="submit"
                                                        class="btn btn-primary waves-effect waves-float waves-light me-2">
                                                    Submit
                                                </button>
                                                <button type="reset" class="btn btn-outline-secondary"
                                                        data-bs-dismiss="modal"
                                                        aria-label="Close">Cancel
                                                </button>
                                            </div>
                                        </div>
                                    </div>
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
    import TextEditor from "../../../components/TextEditor";
    import QuantityButton from "../../../components/QuantityButton";
    import ServiceItem from "../../../components/ServiceItem";
    import ServiceCard from "../../../components/ServiceCard";
    import InputFieldError from "../../../components/InputFieldError";
    import QtyButton from "../../../components/QtyButton";

    let props = defineProps({
        clients: Object,
        services: Object,
        packages: Object,
        platforms: Object,
        works: Object,
        filters: Object,
        domains: Object,
        hostings: Object,
        notification: Object,
        errors: Object,
    })


    let worksTitle = "Select work services"
    let domainTitle = "Select domains"
    let hostingTitle = "Select hosting"
    let packageTitle = "Select packages"


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
                Inertia.delete(adminPath.value + '/users/' + id, {
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



</script>

<script>
export default {

    el: '.container',

    data() {
        return {
            data: {
                quatations: [
                    {
                        itemname: '',
                        cost: '',
                        quantity: ''
                    }
                ],
                client_id: "",
                subject: "",
                valid_until: "",
                website_id: "",
                platform_id: "",
                design_id: "",
                domain_id: "",
                hosting_id: "",
                page: "",
                page_price: "",
                content_page: "",
                content_price: "",
                payment_policy: "",
                terms_of_service: "",
                date: "",
                woarks: [],
                status: "",
            },
        }
    },

    methods: {
        addRow() {
            this.data.quatations.push({
                itemname: '',
                cost: '',
                quantity: ''
            })
        },
        deleteRow(index) {
            this.data.quatations.splice(index, 1)
        },
        createQutation() {
            Inertia.post('/admin/quotations', this.data, {
                preserveState: true,
                // onStart: () =>{ data.processing = true},
                // onFinish: () => { data.processing = false},
                onSuccess: () => {
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
