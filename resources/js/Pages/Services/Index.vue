<template>
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <section id="advanced-search-datatable">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header border-bottom d-flex justify-content-between">
                                    <h4 class="card-title">Services Information's </h4>
                                    <button class="dt-button add-new btn btn-primary"
                                            data-bs-toggle="modal"
                                            data-bs-target="#addServices">
                                        Add Service
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <div class="row">
                    <div class="col-md-3" v-for="item in props.services.data" :key="item.id">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center justify-content-between">
                                    <h2 class="card-title">{{ item.name }}</h2>
                                    <CDropdown>
                                        <CDropdownToggle class="p-0">
                                            <vue-feather type="more-vertical" />
                                        </CDropdownToggle>
                                        <CDropdownMenu>
                                            <CDropdownItem :href="item.edit_url">
                                                <vue-feather type="edit" size="15"/>
                                                <span class="ms-1">Edit</span>
                                            </CDropdownItem>

                                            <CDropdownItem @click="deleteItem(props.main_url, item.id)">
                                                <vue-feather type="trash-2" size="15"/>
                                                <span class="ms-1">Delete</span>
                                            </CDropdownItem>
                                        </CDropdownMenu>
                                    </CDropdown>
                                </div>
                                <span class="badge bg-primary"  style="margin-right:5px;" v-for="plat in item.platforms">
                                    {{ plat.name }}
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- Add Payment Sidebar -->
    <div class="modal modal-slide-in fade" id="addServices" aria-hidden="true">
        <div class="modal-dialog sidebar-lg">
            <div class="modal-content p-0">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">×</button>
                <div class="modal-header mb-1">
                    <h5 class="modal-title">
                        <span class="align-middle">Add New Service</span>
                    </h5>
                </div>
                <div class="modal-body flex-grow-1">
                    <form @submit.prevent="addService">
                        <div class="mb-1">
                            <label class="form-label" for="amount">Service Name</label>
                            <input class="form-control"
                                   id="amount"
                                   v-model="formData.serviceName"
                                   type="text" placeholder="e.g Web Development"/>
                        </div>

                        <div class="mb-1">
                            <label class="form-label" for="amount">Service Platforms</label>
                            <v-select  label="name"
                                       :options="props.platforms"
                                       :reduce="item => item.id"
                                       multiple
                                       v-model="formData.platforms"
                                       placeholder="e.g Laravel, vue js, react js etc">
                            </v-select>
                        </div>


                        <div class="d-flex flex-wrap mb-0">
                            <button type="submit" class="btn btn-primary me-1" data-bs-dismiss="modal">Save</button>
                            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- /Add Payment Sidebar -->



</template>
<script>

</script>
<script setup>

    import {useAction} from "../../composables/useAction";
    import {ref} from "vue";
    import {useForm} from "@inertiajs/inertia-vue3";
    import {CDropdown,CDropdownToggle, CDropdownMenu, CDropdownItem} from '@coreui/vue'


    const {swalSuccess, deleteItem} = useAction()

    const props = defineProps({
        services: [],
        platforms:[],
        filters: Object,
        notification:Object,
        errors:Object,
        main_url: String,
    });


    const processing = ref(false);
    const formData = useForm({
        serviceName:"",
        platforms:[],
    })

    const addService = ( )=>{
        formData.post(props.main_url,{
            preserveState: true,
            onStart: () =>{ processing.value = true},
            onFinish: () => {processing.value = false},
            onSuccess: ()=> {
                document.getElementById('addServices').$vb.modal.hide()
                createForm.reset()
                swalSuccess()
            },
        })
    }


</script>

<style lang="scss">

</style>
