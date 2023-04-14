<template>
    <Layout>
        <UpperQuotation>
            <!-- Product Details starts -->
            <div class="card-body invoice-padding invoice-product-details" v-for="(item, index) in formData.items">
                <div class="source-item">
                    <div data-repeater-list="group-a" >
                        <div class="repeater-wrapper" data-repeater-item>
                            <div class="row">
                                <div class="col-12 d-flex product-details-border position-relative pe-0">
                                    <div class="row w-100 pe-lg-0 pe-1 py-2">
                                        <div class="col-lg-6 col-12 mb-lg-0 mb-2 mt-lg-0 mt-2">
                                            <p class="card-text col-title mb-md-50 mb-0">Item</p>
                                            <div class="input-group">
                                                <v-select :options="services"
                                                          class="form-control"
                                                          v-model="selected"
                                                         label="service_name"
                                                          :reduce="category => category.id"
                                                          @update:modelValue="loadPlatforms(index)"
                                                         placeholder="e.g Select Service">
                                                    <template v-slot:option="option">
                                                        <li class="d-flex align-items-start py-1">
                                                            <div class="d-flex align-items-center justify-content-between w-100">
                                                                <div class="me-1 d-flex flex-column" >
                                                                    <h6 class="mb-25">{{ option.service_name }}</h6>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </template>
                                                </v-select>
                                            </div>

                                           <!-- <div class="input-group"
                                                 v-if="platforms.length > 0">
                                                <div class="input-group-prepend border-end-0 rounded-0">
                                                    <div class="input-group-text cursor-pointer" @click="reback">
                                                        <vue-feather type="arrow-left"/>
                                                    </div>
                                                </div>
                                                <v-select
                                                    :options="platforms"
                                                    label="name"
                                                    class="form-control"
                                                    placeholder="e.g Select Service">
                                                    <template v-slot:option="option">
                                                        <li class="d-flex align-items-start py-1">
                                                            <div class="d-flex align-items-center justify-content-between w-100">
                                                                <div class="me-1 d-flex flex-column" >
                                                                    <h6 class="mb-25">{{ option.name }}</h6>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </template>
                                                </v-select>
                                            </div>-->
                                            <textarea class="form-control mt-2" rows="1">Customization & Bug Fixes</textarea>
                                        </div>
                                        <div class="col-lg-3 col-12 my-lg-0 my-2">
                                            <p class="card-text col-title mb-md-2 mb-0">Cost</p>
                                            <input type="number" class="form-control" value="24" placeholder="24" />
                                            <div class="mt-2">
                                                <span>Discount:</span>
                                                <span class="discount">0%</span>
                                                <span class="tax-1 ms-50" data-bs-toggle="tooltip" data-bs-placement="top" title="Tax 1">0%</span>
                                                <span class="tax-2 ms-50" data-bs-toggle="tooltip" data-bs-placement="top" title="Tax 2">0%</span>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-12 my-lg-0 my-2">
                                            <p class="card-text col-title mb-md-2 mb-0">Qty</p>
                                            <input type="number" class="form-control" value="1" placeholder="1" />
                                        </div>
                                        <div class="col-lg-2 col-12 mt-lg-0 mt-2">
                                            <p class="card-text col-title mb-md-50 mb-0">Price</p>
                                            <p class="card-text mb-0">$24.00</p>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-column align-items-center justify-content-between border-start invoice-product-actions py-50 px-25">
                                        <vue-feather type="x" class="cursor-pointer font-medium-3" data-repeater-delete></vue-feather>
                                        <div class="dropdown">
                                            <vue-feather class="cursor-pointer more-options-dropdown me-0"
                                                         type="settings"
                                                         role="button" id="dropdownMenuButton"
                                                         data-bs-toggle="dropdown"
                                                         aria-haspopup="true"
                                                         aria-expanded="false">
                                            </vue-feather>
                                            <div class="dropdown-menu dropdown-menu-end item-options-menu p-1" aria-labelledby="dropdownMenuButton">
                                                <div class="mb-1">
                                                    <label for="discount-input" class="form-label">Discount(%)</label>
                                                    <input type="number" class="form-control" id="discount-input" />
                                                </div>
                                                <div class="form-row mt-50">
                                                    <div class="mb-1 col-md-6">
                                                        <label for="tax-1-input" class="form-label">Tax 1</label>
                                                        <select name="tax-1-input" id="tax-1-input" class="form-select tax-select">
                                                            <option value="0%" selected>0%</option>
                                                            <option value="1%">1%</option>
                                                            <option value="10%">10%</option>
                                                            <option value="18%">18%</option>
                                                            <option value="40%">40%</option>
                                                        </select>
                                                    </div>
                                                    <div class="mb-1 col-md-6">
                                                        <label for="tax-2-input" class="form-label">Tax 2</label>
                                                        <select name="tax-2-input" id="tax-2-input" class="form-select tax-select">
                                                            <option value="0%" selected>0%</option>
                                                            <option value="1%">1%</option>
                                                            <option value="10%">10%</option>
                                                            <option value="18%">18%</option>
                                                            <option value="40%">40%</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="dropdown-divider my-1"></div>
                                                <div class="d-flex justify-content-between">
                                                    <button type="button" class="btn btn-outline-primary btn-apply-changes">Apply</button>
                                                    <button type="button" class="btn btn-outline-secondary">Cancel</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <button type="button" @click="addItem" class="btn btn-primary btn-sm btn-add-new" data-repeater-create>
                    <i data-feather="plus" class="me-25"></i>
                    <span class="align-middle">Add Item</span>
                </button>
            </div>
            <!-- Product Details ends -->
        </UpperQuotation>

    </Layout>
</template>

<script setup>
    import Layout from '../../Shared/Layout.vue'
    import UpperQuotation from "./Partials/UpperQuotation.vue"
    import {useForm} from "@inertiajs/inertia-vue3";
    import {computed, ref} from "vue"


    const props = defineProps({
        services: Array|[]|null,
    })


    const formData = useForm({
        items:[
            {
                name:null,
            }
        ]
    })

    const addItem = () =>{
        formData.items.push({
            name:null,
        })
    }


/*
    const formattedServices = computed(() =>{
        return props.services.map(service => {
            return {name: service.service.data.service_name, value: service.service.data.id}
        })
    })

*/
    const selected = ref(null)
    const platforms = ref([])
    const loadPlatforms = (event) => {

        console.log(this.selected)
        console.log(event);

        // const service = props.services.filter(item => {
        //     return item.service.data.id === event;
        // })[0];
        // platforms.value = service.service.data.id === event ? service.service.platforms.map(platform => {
        //     return {name: platform.data.name, value: platform.data.id}
        // }) : [];
    }


    console.log()

    // const formattedPlatforms = computed(() =>{
    //     return platforms.value.map(platform => {
    //         return {name: platform.data.name, value: platform.data.id}
    //
    //     })
    //
    //     console.log(platform)
    //
    // })

    // const reback = () => platforms.value = [];
</script>


<style lang="sass" scoped>
    @import "../../../sass/base/pages/app-invoice.scss"
</style>


