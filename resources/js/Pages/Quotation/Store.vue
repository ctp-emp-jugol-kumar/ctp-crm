<template>
    <UpperQuotation :subtotal="totalPrice" :clients="props.clients" :errors="props.errors" @handleQuotation="saveQuotation">
        <!-- Product Details starts -->
        <div class="card-body invoice-padding invoice-product-details" v-for="(item, index) in formData.items">
            <div class="source-item">
                <div data-repeater-list="group-a" >
                    <div class="repeater-wrapper">
                        <div class="row">
                            <div class="col-12 d-flex product-details-border position-relative pe-0">
                                <p class="card-text col-title mb-md-50 mb-0">Item</p>
                                <div class="row w-100 pe-lg-0 pe-1 py-2">
                                    <div :class="formData.items[index].service ? 'col-md-7' : 'col-md-12'">
                                        <div class="input-group"
                                             v-if="!formData.items[index].platforms?.length > 0">
                                            <v-select :options="services"
                                                      v-model="formData.items[index].service"
                                                      label="service_name"
                                                      class="form-control select-padding p-0 rounded-0"
                                                      style="width:100%; padding: 0px 0px !important;"
                                                      :reduce="service => service.id"
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
<!--                                        <div class="d-flex"
                                             v-if="formData.items[index].platforms?.length > 0">
                                            <div class="input-group-prepend border-end-0 rounded-0">
                                                <div class="input-group-text cursor-pointer rounded-0 border-end-0" @click="reback(index)">
                                                    <vue-feather type="arrow-left"/>
                                                </div>
                                            </div>
                                            <v-select
                                                :options="formData.items[index].platforms"
                                                label="name"
                                                style="width:100%; padding: 0px 0px !important;"
                                                class="form-control select-padding p-0 rounded-0"
                                                v-model="formData.items[index].platform"
                                                @update:modelValue="loadPlatformFeatureds(index)"
                                                placeholder="e.g Select Platform">
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

                                        <div v-if="formData.items[index].activeTab === 'custom'">
                                            <div class="border">
                                                <textarea class="form-control" rows="5" placeholder="e.g wright your custom quotation">{{ packs?.descriptions }}</textarea>
                                            </div>
                                            <div class="d-flex gap-2 mt-1 align-items-center">
                                                <div class="d-flex">
                                                    <button class="btn btn-icon btn-primary rounded-0">
                                                        <vue-feather type="minus"/>
                                                    </button>
                                                    <input type="text" class="form-control rounded-0" readonly placeholder="change here qty and price">
                                                    <button class="btn btn-icon btn-primary rounded-0">
                                                        <vue-feather type="plus"/>
                                                    </button>
                                                </div>

                                                <div>
                                                    <input type="text" class="form-control rounded-0" placeholder="e.g total price">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="showContentQuotation border p-2" v-if="formData.items[index].activeTab === 'feature'">
                                            <table class="table table-striped details-table">
                                                <thead>
                                                    <th>Name</th>
                                                    <th>Price</th>
                                                    <th>Qty</th>
                                                    <th>Total</th>
                                                    <th>Action</th>
                                                </thead>
                                                <tbody>
                                                    <tr v-for="(fes, j)  in formData.items[index].checkFeatrueds">
                                                        <td>{{ fes.name }}</td>
                                                        <td>{{ fes.price }}</td>
                                                        <td>{{ fes.qty }} </td>
                                                        <td>{{ fes.price * fes.qty }}</td>
                                                        <td>
                                                            <span class="badge bg-primary cursor-pointer" @click="qtyPlus(index, j)" style="padding: 3px !important;margin-right: 4px;">
                                                                <vue-feather type="plus" size="5"/>
                                                            </span>
                                                            <span class="badge bg-warning cursor-pointer" @click="qtyMinus(index, j)"  style="padding: 3px !important;margin-right: 4px;">
                                                                <vue-feather type="minus" size="5"/>
                                                            </span>
                                                            <span class="badge bg-danger cursor-pointer" @click="itemRemove(index, j)" style="padding: 3px !important;">
                                                                <vue-feather type="x" size="5"/>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>

                                        </div>


                                        <div v-if="formData.items[index].activeTab === 'package'" v-for="(packs, k) in formData.items[index].checkPackages">
                                            <div class="border position-relative">
                                                <textarea class="form-control" rows="5">{{ packs?.descriptions }}</textarea>
                                                <vue-feather type="x" class="packDelete" size="15" @click="packItemRemove(index, k)"/>
                                            </div>
                                            <div class="d-flex gap-2 my-1 align-items-center">
                                                <div class="d-flex">
                                                    <button @click="minusPackageQty(index, k)" class="btn btn-icon btn-primary rounded-0">
                                                        <vue-feather type="minus"/>
                                                    </button>
                                                    <input type="text" class="form-control rounded-0" :value="packs?.qty" placeholder="change here qty and price">
                                                    <button @click="plusPackageQty(index, k)" class="btn btn-icon btn-primary rounded-0">
                                                        <vue-feather type="plus"/>
                                                    </button>
                                                </div>
                                                <div>
                                                    <label for="packagePrice">Package Price</label>
                                                    <input type="text" id="packagePrice" class="form-control rounded-0" v-model="formData.items[index].checkPackages[k].price" @input="changeSubTotal(index, k)" placeholder="e.g total price">
                                                </div>
                                                <div>
                                                    <label for="subtotalPackage">Sub Total</label>
                                                    <input type="text" id="subtotalPackage" class="form-control rounded-0" v-model="formData.items[index].checkPackages[k].subTotal" placeholder="e.g total price">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="btn-group" v-if="formData.items[index].service != null">
                                            <button @click="getPlatItems(index, 'custom')" :class="`customClass-${index}`" class="border-0 btn btn-primary btn-sm">Custom</button>
                                            <button @click="getPlatItems(index, 'feature')" :class="`featuredClass-${index}`" class="border-0 btn btn-sm">Featureds</button>
                                            <button @click="getPlatItems(index, 'package')" :class="`packageClass-${index}`" class="border-0 btn btn-sm">Packages</button>
                                        </div>
                                        <div class="featruedOverflowStyle" v-if="formData.items[index].activeTab === 'feature'">
                                            <div class="input-group" v-for="(fes, i) in  formData.items[index].features" >
                                                <div class="form-check form-check-primary">
                                                    <input type="checkbox" v-model="formData.items[index].checkFeatrueds" :value="fes" class="form-check-input" :id="`featureCheck-${index}-${i}`">
                                                    <label class="form-check-label" :for="`featureCheck-${index}-${i}`">{{ fes.name }} ({{ fes.price }})</label>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="featruedOverflowStyle" v-if="formData.items[index].activeTab === 'package'">
                                            <div class="input-group" v-for="(pack, i)  in  formData.items[index].packages" >
                                                <div class="form-check form-check-primary">
                                                    <input type="checkbox" v-model="formData.items[index].checkPackages" :value="pack" class="form-check-input" :id="`packageCheck-${index}-${i}`">
                                                    <label class="form-check-label" :for="`packageCheck-${index}-${i}`">{{ pack.name }} ({{ pack.price }})</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex flex-column align-items-center justify-content-between border-start invoice-product-actions py-50 px-25">
                                    <vue-feather type="x" class="cursor-pointer font-medium-3" @click="removeItem(index)"></vue-feather>
<!--                                    <div class="dropdown">
                                        <vue-feather class="cursor-pointer more-options-dropdown me-0"
                                                     type="settings"
                                                     role="button" id="dropdownMenuButton"
                                                     data-bs-toggle="dropdown"
                                                     aria-haspopup="true"
                                                     aria-expanded="false">
                                        </vue-feather>
                                    </div>-->
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
</template>

<script setup>
    import UpperQuotation from "./Partials/StoreUpperQuotation.vue"
    import {useForm, usePage} from "@inertiajs/inertia-vue3";
    import {computed, ref, onMounted } from "vue"
    import {useQuotationStore} from "../../Store/useQuotationStore";
    import {Inertia} from "@inertiajs/inertia";

    const quotationStore = useQuotationStore()

    const props = defineProps({
        services: Array|[]|null,
        clients:Array|[]|null,
        main_url:String|null,
        errors:Object|Array|[],
    })


    const formData = useForm({
        quotationId: quotationStore.getQuotId,
        totalPrice:0,
        items:[{
            name:null,
            service:null,
            platform:null,
            platforms:[],
            features:[],
            packages:[],
            checkFeatrueds:[],
            checkPackages:[],
            activeTab:'custom'
        }]
    })

    const processing = ref(false)
    const saveQuotation = (events) =>{
        Inertia.post(props.main_url, {...formData, ...events}, {
            preserveState: true,
            onStart: () =>{ processing.value = true},
            onFinish: () => {processing.value = false},
            onSuccess: ()=> { $toast.success('Quotation Created Successfully Done...') },
            onError: ()=> { $toast.error('Have An Error. Please Try Again.') },
        })
    }


    const addItem = () =>{
        formData.items.push({
                name:null,
                service:null,
                platform:null,
                platforms:[],
                features:[],
                packages:[],
                checkFeatrueds:[],
                checkPackages:[],
                activeTab:'custom'
            })
    }
    const removeItem = (index) => {
        alert("want to delete "+ index)
        formData.items.splice(index, 1);
    }

    // const isFeatured = ref(true)

    const getPlatItems=(index, active)=>{
        formData.items[index].activeTab = active;
        if (active === 'custom'){
            document.querySelector(`.customClass-${index}`).classList.add('btn-primary')
            document.querySelector(`.featuredClass-${index}`).classList.remove('btn-primary')
            document.querySelector(`.packageClass-${index}`).classList.remove('btn-primary')
        }
        if (active === 'feature'){
            document.querySelector(`.customClass-${index}`).classList.remove('btn-primary')
            document.querySelector(`.featuredClass-${index}`).classList.add('btn-primary')
            document.querySelector(`.packageClass-${index}`).classList.remove('btn-primary')
        }
        if (active === 'package'){
            document.querySelector(`.customClass-${index}`).classList.remove('btn-primary')
            document.querySelector(`.featuredClass-${index}`).classList.remove('btn-primary')
            document.querySelector(`.packageClass-${index}`).classList.add('btn-primary')
        }

        // if(formData.items[index].isFeatured){
        //     formData.items[index].isFeatured = false;
        // }else{
        //     formData.items[index].isFeatured = true;
        // }
        // document.querySelector(`.featuredClass-${index}`).classList.toggle('btn-primary')
        // document.querySelector(`.packageClass-${index}`).classList.toggle('btn-primary')
    }



    const selected = ref(null)



    const loadPlatforms = (event) => {
        // console.log(event)

        // console.log(formData.items[event].service);

        const service = props.services.filter(item => {
            return item.id === formData.items[event].service;
        })[0];

        const featuresValue = service.features.map(features =>{
            return {...features, qty:1}
        });
        const packageValue = service.packages.map(pack =>{
            return {...pack, qty:1, subTotal:pack.price * 1}
        });

        formData.items[event].features = featuresValue;
        formData.items[event].packages = packageValue;

    }

/*
        //  this function used for package platform and featured systems
       const loadPlatformFeatureds = (event) => {


        const platform = formData.items[event].platforms.filter(item => {
            return item.value === formData.items[event].platform.value;
        })[0];

        const value = platform.value === formData.items[event].platform.value ? platform.features.map(fetures => {
            return {...fetures, qty:1};
        }) : [];


        const packageValue = platform.value === formData.items[event].platform.value ? platform.packages.map(packageItem => {
            return {...packageItem, qty:1};
        }) : [];

        formData.items[event].features = value;
        formData.items[event].packages = packageValue;
    }*/

    const reback = (index) => {
        formData.items[index].platforms = [];
        formData.items[index].features = [];
        formData.items[index].packages = [];
    }

    const qtyPlus = (iIndex, jIndex) =>{
        formData.items[iIndex].checkFeatrueds[jIndex].qty++
        $toast.success("Quantity Increase")
    }
    const qtyMinus = (iIndex, jIndex) => {
        if (formData.items[iIndex].checkFeatrueds[jIndex].qty > 1){
            formData.items[iIndex].checkFeatrueds[jIndex].qty--
            $toast.warning("Quantity Decrees")
        }else{
            $toast.warning("Minimum Quantity 1")
        }
    }
    const itemRemove = (iIndex, jIndex) =>{
        formData.items[iIndex].checkFeatrueds.splice(jIndex, 1);
        $toast.error("Item Deleted")
    }


    // package manage remove, qty update and manage sub total

    const changeSubTotal = (index, kIndex) =>{
        formData.items[index].checkPackages[kIndex].subTotal = formData.items[index].checkPackages[kIndex].qty * parseInt(formData.items[index].checkPackages[kIndex].price)
    }

    const plusPackageQty= (index, kIndex) =>{
        formData.items[index].checkPackages[kIndex].qty++
        formData.items[index].checkPackages[kIndex].subTotal = formData.items[index].checkPackages[kIndex].qty * parseInt(formData.items[index].checkPackages[kIndex].price)

        $toast.success("Quantity Increase")
    }
    const minusPackageQty = (index, kIndex) =>{
        if (formData.items[index].checkPackages[kIndex].qty > 1){
            formData.items[index].checkPackages[kIndex].qty--
            formData.items[index].checkPackages[kIndex].subTotal = formData.items[index].checkPackages[kIndex].qty * parseInt(formData.items[index].checkPackages[kIndex].price)
            $toast.warning("Quantity Decrees")
        }else{
            $toast.warning("Minimum Quantity 1")
        }
    }
    const packItemRemove = (iIndex, kIndex) =>{
        formData.items[iIndex].checkPackages.splice(kIndex, 1);
        $toast.error("Item Deleted")
    }


    const totalPrice = computed(()=>{
        let total= 0;
        formData.items.map(item =>{
            item.checkFeatrueds.map(fes =>{
                total += fes.price * fes.qty;
            })
            item.checkPackages.map(pac => {
                total += parseInt(pac.subTotal)
            })
        })

        formData.totalPrice = total
        return total;
    })



</script>


<style lang="sass" scoped>
    @import "../../../sass/base/pages/app-invoice.scss"

</style>
<style lang="css" scoped>
.vs__dropdown-toggle{
    border: none !important;
}

.packDelete{
    position: absolute;
    right: -19px;
    cursor: pointer;
    background: #e7e7e7;
    padding: 1px;
    top: -7px;
    border-radius: 50px;
}
</style>

