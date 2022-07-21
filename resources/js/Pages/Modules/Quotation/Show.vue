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
                                    <div>

                                        <Link :href="info.others_info.create_invoice" class="dt-button add-new btn btn-primary me-2">Download Quotation
                                        </Link>

                                        <Link href="/admin/quotations" class="dt-button add-new btn btn-primary">Manage
                                            Quotations
                                        </Link>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dvi class="col-md-12 mx-auto">
                            <div class="row">
                                <div class="col">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Client Details</h4>
                                        </div>
                                        <div class="card-body">
                                            <table class="table table-striped table-bordered">
                                                <tbody>
                                                <h3 class="text-capitalize">Client Name: {{ props.info.quotation_owner.client.name }}</h3>
                                                <tr>
                                                    <td>Client Email: {{ props.info.quotation_owner.client.email }}</td>
                                                </tr>
                                                <tr>
                                                    <td>Client Phone: {{ props.info.quotation_owner.client.phone }}</td>
                                                </tr>
                                                <tr>
                                                    <td>Client Secondery Phone: {{
                                                        props.info.quotation_owner.client.secondary_phone }}
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Client Phone: {{ props.info.quotation_owner.client.address }}</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Quotation Details</h4>
                                        </div>
                                        <div class="card-body">
                                            <table class="table table-striped table-bordered">
                                                <tbody>
                                                <h3>Quotation Id: CTP-{{ props.info.quotation.id }}</h3>
                                                <tr>
                                                    <td>Quotation Validate: {{  props.info.dates.date}}</td>
                                                </tr>
                                                <tr>
                                                    <td>Quotation Validate: {{ props.info.dates.valid_until }}</td>
                                                </tr>
                                                <tr>
                                                    <td>Quotation Creator: {{ props.info.quotation_owner.creator.name }}</td>
                                                </tr>
                                                <tr>
                                                    <td>Creator Email: {{ props.info.quotation_owner.creator.email }}</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </dvi>
                        <div class="col-md-8 mx-auto">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h2>Subject:</h2>
                                        </div>
                                        <div class="card-body">
                                            <table class="table table-borderless table-striped">
                                                <thead>
                                                    <tr>
                                                        <th class="text-left bg-primary text-white">Description</th>
                                                        <th class="text-right bg-primary text-white">Price</th>
                                                        <th class="text-right bg-primary text-white">Discount</th>
                                                        <th class="text-right bg-primary text-white">Total</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <tr v-for="(item, index) in allData" :key="item.id">
                                                        <td class="">
                                                            <p v-html="item.name"></p>
                                                        </td>
                                                        <td class="text-end">
                                                            <p>{{ item.price }} * {{ item.quantity }} = {{ item.sumItem }} Tk</p>
                                                        </td>
                                                        <td class="text-end">
                                                            <p>{{ item.discount }} Tk</p>
                                                        </td>
                                                        <td class="text-end">
                                                            <p>{{ item.total }} Tk</p>
                                                        </td>
                                                    </tr>
                                                </tbody>

                                                <tfoot class="table_bottom_border">
                                                    <tr class="text-end">
                                                        <td></td>
                                                        <td></td>
                                                        <td class="text-right">Sub Total =</td>
                                                        <td class="text-right"><strong> Tk </strong></td>
                                                    </tr>
                                                    <tr class="text-end">
                                                        <td></td>
                                                        <td></td>
                                                        <td class="text-right">Discount =</td>
                                                        <td class="text-right"><strong>0 Tk</strong>
                                                        </td>
                                                    </tr>
                                                    <tr class="text-end">
                                                        <td></td>
                                                        <td></td>
                                                        <td class="text-right">Grand Total =</td>
                                                        <td class="text-right"><strong> Tk</strong></td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
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

</template>

<script setup>

    import { computed } from "vue";

    let props = defineProps({
        info:Object,
    })

    let allData = computed(() =>{
        return [...props.info.others_info.domains, ...props.info.others_info.hosgings,
            ...props.info.others_info.works, ...props.info.others_info.packages,
            ...props.info.others_info.items].map(item => {
                return {
                    name     : item.name     ?? item.itemname,
                    quantity : item.quantity,
                    price    : item.price ,
                    sumItem  : item.price * item.quantity > 0 ? item.quantity : 1,
                    discount : item.discount ?? 0,
                    total    : item.price||0-item.discount||0
                }
        });
    })

    let subTotal = computed(() =>{
        return allData.total
    })

</script>

<style scoped>
    .table_bottom_border{
        border-top: 1px solid darkblue;
    }
</style>
