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
                                <h2 class="card-title">{{ item.name }}</h2>
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

    const {swalSuccess} = useAction()

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

/*
    let editData = ref([]);

    let updateForm = useForm({
        name:"",
        price:"",
        description:"",

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
                Inertia.delete( 'services/' + id, { preserveState: true, replace: true, onSuccess: page => {
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

    let addDataModal = () => {
        document.getElementById('createServices').$vb.modal.show()
    }


    let editItem = (url) => {
        axios.get(url).then(res => {

            editData.value = res.data;

            updateForm.name = res.data.name;
            updateForm.price = res.data.price;
            updateForm.description = res.data.description;
            document.getElementById('editData').$vb.modal.show();
        }).catch(err => {
            console.log(err);
        });
    }

    let updateData = (id) => {
        Inertia.put('services/' + id, updateForm, {
            preserveState: true,
            onStart: () => {
                createForm.processing = true
            },
            onFinish: () => {
                createForm.processing = false
            },
            onSuccess: () => {
                document.getElementById('editData').$vb.modal.hide()
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



*/

</script>

<style lang="scss">

</style>
