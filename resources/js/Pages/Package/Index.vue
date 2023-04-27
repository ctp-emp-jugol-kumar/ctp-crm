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
                                    <h4 class="card-title">Packages</h4>
                                    <a class="dt-button add-new btn btn-primary"
                                       :href="props.main_url+'/create'">
                                        Add Package
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Advanced Search -->
                <section id="advanced-search-datatable">
                    <div class="row">
                        <div class="col-md-4" v-for="pac in props.packages.data" :key="pac.id">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="text-capitalize">{{ pac.name }}</h5>
                                    <p class="text-capitalize">platform: {{ pac.platform.name }}</p>
                                    <p v-html="pac.description"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

</template>


<script setup>
    import {ref, watch} from "vue";
    import debounce from "lodash/debounce";
    import {Inertia} from "@inertiajs/inertia";
    import Swal from 'sweetalert2'
    import {useForm} from "@inertiajs/inertia-vue3";
    import axios from "axios";

    const props = defineProps({
        packages:Array|null,
        main_url:String|null,
    })






</script>

<style lang="scss">

</style>
