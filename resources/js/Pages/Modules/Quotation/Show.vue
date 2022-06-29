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

                        <div class="col-md-8 mx-auto">
                            <div class="row">
                                <div class="col">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Client Details</h4>
                                        </div>
                                        <div class="card-body">
                                            <table class="table table-striped table-bordered">
                                                <tbody>
                                                <tr>
                                                    <td>Client Name: {{ props.quotation.client.name }}</td>
                                                </tr>
                                                <tr>
                                                    <td>Client Email: {{ props.quotation.client.email }}</td>
                                                </tr>
                                                <tr>
                                                    <td>Client Phone: {{ props.quotation.client.phone }}</td>
                                                </tr>
                                                <tr>
                                                    <td>Client Secondery Phone: {{
                                                        props.quotation.client.secondary_phone }}
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Client Phone: {{ props.quotation.client.address }}</td>
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
                                                <h2>Quotation Id: CTP-{{ props.others_info.quot_id }}</h2>
                                                <tr>
                                                    <td>Quotation Validate: {{ props.others_info.created }}</td>
                                                </tr>
                                                <tr>
                                                    <td>Quotation Validate: {{ props.others_info.validated }}</td>
                                                </tr>
                                                <tr>
                                                    <td>Quotation Creator: {{ props.others_info.creator.name }}</td>
                                                </tr>
                                                <tr>
                                                    <td>Creator Email: {{ props.others_info.creator.email }}</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h2>Subject:</h2>
                                        </div>
                                        <div class="card-body">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th class="text-left bg-success">Description</th>
                                                    <th class="text-right bg-success">Price</th>
                                                </tr>
                                                </thead>

                                                <tbody>

                                                <tr v-if="props.quotation.works.length > 0 ">
                                                    <td class="text-left">
                                                        <span  v-for="work in props.quotation.works" :key="work.id">
                                                            {{ work.name }}<br>
                                                        </span>
                                                    </td>
                                                    <td class="text-right">
                                                        <p>price</p>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td class="text-left">{{ props.quotation.domain.name }}</td>
                                                    <td class="text-right">
                                                        <p> price {{  props.quotation.domain.price }}</p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-left">{{ props.quotation.hosting.name }}</td>
                                                    <td class="text-right">
                                                        <p>{{ props.quotation.hosting.price }}</p>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td class="text-left">Content Development for
                                                    </td>
                                                    <td class="text-right">
                                                        <p> price 55</p>
                                                    </td>
                                                </tr>

                                                <tr v-if="props.quotation.quotation_items.length > 0">
                                                    <td class="text-left">
                                                        <span v-for="qit in props.quotation.quotation_items" :key="qit.id">{{ qit.name }}</span>
                                                    </td>
                                                    <td class="text-right">
                                                        <p>works total</p>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td class="text-left">aditional requirement</td>
                                                    <td class="text-right">
                                                        <p>price 400</p>
                                                    </td>
                                                </tr>

                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <td class="text-right">Sub Total =</td>
                                                        <td class="text-right"><strong> sub total 5412</strong></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-right">Discount =</td>
                                                        <td class="text-right"><strong>discount 6541</strong>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-right">Grand Total =</td>
                                                        <td class="text-right"><strong>grand total 5566</strong></td>
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


    import {defineProps} from "@vue/runtime-core";

    let props = defineProps({
        quotation: Object,
        others_info: Object,
    })


</script>

<style scoped>

</style>
