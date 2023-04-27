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
                                    <a class="dt-button add-new btn btn-primary"
                                    :href="props.main_url+'/create'">
                                        Add Platform
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
<!--
                <div class="d-flex">
                    <div class="col-md-4" v-for="item in props.platforms.data" :key="item.id">
                        <div class="card">
                            <div class="card-body">
                                <h2 class="card-title">{{ item.name }}</h2>
                                <div>
                                    <ul>
                                        <li class="list-group-item" v-for="fea in item.featureds" :key="fea.id">
                                            <vue-feather type="check-circle" size="12"/>
                                            {{ fea.name }} ({{ fea.price }} Tk)
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                -->
                <div class="container_1">
                    <div class="item col-md-4" v-for="item in props.platforms.data" :key="item.id">
                        <div class="card">
                            <div class="card-body">
                                <h2 class="card-title">{{ item.name }}</h2>
                                <div>
                                    <ul>
                                        <li class="list-group-item" v-for="fea in item.featureds" :key="fea.id">
                                            <vue-feather type="check-circle" size="12"/>
                                            {{ fea.name }} ({{ fea.price }} Tk)
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>





</template>

<script setup>

    import {useAction} from "../../composables/useAction";
    import {ref, onMounted} from "vue";
    import {useForm} from "@inertiajs/inertia-vue3";

    import MiniMasonry from "minimasonry";

    const {swalSuccess} = useAction()

    const props = defineProps({
        platforms: [],
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
                formData.reset()
                swalSuccess()
            },
        })
    }


    onMounted(() =>{

        var masonry1 = new MiniMasonry({
            container: '.container_1',
            baseWidth: 400,
            surroundingGutter: false,
            gutterX: 10,
            gutterY: 10
        });
    })



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

<style lang="css">
.container {
    width: 100%;
    position: relative;
}
.item {
    position: absolute;
    height: max-content;
}
</style>
