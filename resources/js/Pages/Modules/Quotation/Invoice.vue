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
                                    <Link href="/admin/quotations" class="dt-button add-new btn btn-primary">Manage
                                        Quotations
                                    </Link>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 mx-auto">
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
                                <div class="col-md-10 mx-auto">
                                    <div class="card">
                                        <div class="card-body">
                                            <table class="table table-striped table-borderless">
                                                <thead>
                                                    <tr>
                                                        <th class="bg-primary text-white">Service Name</th>
                                                        <th class="bg-primary text-white">QTY</th>
                                                        <th class="bg-primary text-white">Price</th>
                                                        <th class="bg-primary text-white">Total</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr v-for="(item, index) in others_info.all_items">
                                                        <td>{{ item.name ?? item.itemname }}</td>
                                                        <td>
                                                            <QuantityButton  v-model="item.quantity"/>
                                                        </td>
                                                        <td> {{ item.price ?? item.cost }} Tk</td>
                                                        <td>550 Tk</td>
                                                    </tr>
                                                </tbody>
                                            </table>

                                            <div class="row border-top">
                                                <div class="col-6">
                                                </div>
                                                <div class="col-6">
                                                    <table class="table table-striped mt-1">
                                                        <tbody class="text-center">
                                                            <tr>
                                                                <td><strong>Total </strong></td>
                                                                <td>1500 Tk</td>
                                                            </tr>
                                                            <tr>
                                                                <td><strong>Grand Total</strong></td>
                                                                <td>1500 Tk</td>
                                                            </tr>
                                                            <tr>
                                                                <td><strong>Discount Total</strong></td>
                                                                <td>1500 Tk</td>
                                                            </tr>
                                                            <tr>
                                                                <td><h4 class="fw-bold fs-3">Grand Total</h4></td>
                                                                <td><strong>{{ total }} Tk</strong></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
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
    import Pagination from "../../../components/Pagination"
    import Icon from '../../../components/Icon'
    import Modal from '../../../components/Modal'
    import {ref, watch, computed } from "vue";
    import debounce from "lodash/debounce";
    import {Inertia} from "@inertiajs/inertia";
    import Swal from 'sweetalert2'
    import QuantityButton from "../../../components/QuantityButton";
    import {useForm} from "@inertiajs/inertia-vue3";
    import {defineProps} from "@vue/runtime-core";

    let props = defineProps({
        quotation: Object,
        others_info: Object,
    });


    const total = computed(()=>{
        let grandTotal = 0;
        props.others_info.all_items.forEach((item) => {
             grandTotal += item.price ?? item.cost;
        });
        return grandTotal;
    });



</script>
<style scoped>
    .table_bottom_border{
        border-top: 1px solid darkblue;
    }

    .invoice-preview .invoice-padding,
    .invoice-edit .invoice-padding,
    .invoice-add .invoice-padding {
        padding-left: 2.5rem;
        padding-right: 2.5rem; }

    .invoice-preview .table th:first-child,
    .invoice-preview .table td:first-child,
    .invoice-edit .table th:first-child,
    .invoice-edit .table td:first-child,
    .invoice-add .table th:first-child,
    .invoice-add .table td:first-child {
        padding-left: 2.5rem; }

    .invoice-preview .logo-wrapper,
    .invoice-edit .logo-wrapper,
    .invoice-add .logo-wrapper {
        display: flex;
        align-items: center;
        margin-bottom: 1.9rem; }

    .invoice-preview .logo-wrapper .invoice-logo,
    .invoice-edit .logo-wrapper .invoice-logo,
    .invoice-add .logo-wrapper .invoice-logo {
        font-size: 2.142rem;
        font-weight: bold;
        letter-spacing: -0.54px;
        margin-left: 1rem;
        margin-bottom: 0; }

    .invoice-preview .invoice-title,
    .invoice-edit .invoice-title,
    .invoice-add .invoice-title {
        font-size: 1.285rem;
        margin-bottom: 1rem; }

    .invoice-preview .invoice-title .invoice-number,
    .invoice-edit .invoice-title .invoice-number,
    .invoice-add .invoice-title .invoice-number {
        font-weight: 600; }

    .invoice-preview .invoice-date-wrapper,
    .invoice-edit .invoice-date-wrapper,
    .invoice-add .invoice-date-wrapper {
        display: flex;
        align-items: center; }

    .invoice-preview .invoice-date-wrapper:not(:last-of-type),
    .invoice-edit .invoice-date-wrapper:not(:last-of-type),
    .invoice-add .invoice-date-wrapper:not(:last-of-type) {
        margin-bottom: 0.5rem; }

    .invoice-preview .invoice-date-wrapper .invoice-date-title,
    .invoice-edit .invoice-date-wrapper .invoice-date-title,
    .invoice-add .invoice-date-wrapper .invoice-date-title {
        width: 7rem;
        margin-bottom: 0; }

    .invoice-preview .invoice-date-wrapper .invoice-date,
    .invoice-edit .invoice-date-wrapper .invoice-date,
    .invoice-add .invoice-date-wrapper .invoice-date {
        margin-left: 0.5rem;
        font-weight: 600;
        margin-bottom: 0; }

    .invoice-preview .invoice-spacing,
    .invoice-edit .invoice-spacing,
    .invoice-add .invoice-spacing {
        margin: 1.45rem 0; }

    .invoice-preview .invoice-number-date .title,
    .invoice-edit .invoice-number-date .title,
    .invoice-add .invoice-number-date .title {
        width: 115px; }

    .invoice-preview .invoice-total-wrapper,
    .invoice-edit .invoice-total-wrapper,
    .invoice-add .invoice-total-wrapper {
        width: 100%;
        max-width: 12rem; }

    .invoice-preview .invoice-total-wrapper .invoice-total-item,
    .invoice-edit .invoice-total-wrapper .invoice-total-item,
    .invoice-add .invoice-total-wrapper .invoice-total-item {
        display: flex;
        align-items: center;
        justify-content: space-between; }

    .invoice-preview .invoice-total-wrapper .invoice-total-item .invoice-total-title,
    .invoice-edit .invoice-total-wrapper .invoice-total-item .invoice-total-title,
    .invoice-add .invoice-total-wrapper .invoice-total-item .invoice-total-title {
        margin-bottom: 0.35rem; }

    .invoice-preview .invoice-total-wrapper .invoice-total-item .invoice-total-amount,
    .invoice-edit .invoice-total-wrapper .invoice-total-item .invoice-total-amount,
    .invoice-add .invoice-total-wrapper .invoice-total-item .invoice-total-amount {
        margin-bottom: 0.35rem;
        font-weight: 600; }

    @media (min-width: 768px) {
        .invoice-preview .invoice-title,
        .invoice-edit .invoice-title,
        .invoice-add .invoice-title {
            text-align: right;
            margin-bottom: 3rem; } }

    .invoice-edit .invoice-preview-card .invoice-title,
    .invoice-add .invoice-preview-card .invoice-title {
        text-align: left;
        margin-right: 3.5rem;
        margin-bottom: 0; }

    .invoice-edit .invoice-preview-card .invoice-edit-input,
    .invoice-edit .invoice-preview-card .invoice-edit-input-group,
    .invoice-add .invoice-preview-card .invoice-edit-input,
    .invoice-add .invoice-preview-card .invoice-edit-input-group {
        max-width: 11.21rem; }

    .invoice-edit .invoice-preview-card .invoice-product-details,
    .invoice-add .invoice-preview-card .invoice-product-details {
        background-color: #fcfcfc;
        padding: 3.75rem 3.45rem 2.3rem 3.45rem; }

    .invoice-edit .invoice-preview-card .invoice-product-details .product-details-border,
    .invoice-add .invoice-preview-card .invoice-product-details .product-details-border {
        border: 1px solid #ebe9f1;
        border-radius: 0.357rem; }

    .invoice-edit .invoice-preview-card .invoice-to-title,
    .invoice-add .invoice-preview-card .invoice-to-title {
        margin-bottom: 1.9rem; }

    .invoice-edit .invoice-preview-card .col-title,
    .invoice-add .invoice-preview-card .col-title {
        position: absolute;
        top: -1.75rem; }

    .invoice-edit .invoice-preview-card .item-options-menu,
    .invoice-add .invoice-preview-card .item-options-menu {
        min-width: 20rem; }

    .invoice-edit .invoice-preview-card .repeater-wrapper:not(:last-child),
    .invoice-add .invoice-preview-card .repeater-wrapper:not(:last-child) {
        margin-bottom: 3rem; }

    .invoice-edit .invoice-preview-card .invoice-calculations .total-amt-title,
    .invoice-add .invoice-preview-card .invoice-calculations .total-amt-title {
        width: 100px; }

    @media (max-width: 769px) {
        .invoice-edit .invoice-preview-card .invoice-title,
        .invoice-add .invoice-preview-card .invoice-title {
            margin-right: 0;
            width: 115px; }
        .invoice-edit .invoice-preview-card .invoice-edit-input,
        .invoice-add .invoice-preview-card .invoice-edit-input {
            max-width: 100%; } }

    @media (max-width: 992px) {
        .invoice-edit .col-title,
        .invoice-add .col-title {
            position: unset !important;
            top: -1.5rem !important; } }


</style>
