<template>

    <!-- Project table -->
    <div class="card">
        <h4 class="card-header">{{ this.$options.name }}</h4>
        <div class="table-responsive">
            <table class="user-list-table table">
                <thead class="table-light">
                <tr class="">
                    <th class="sorting">#id</th>
                    <th class="sorting">Name</th>
                    <th class="sorting">Creator</th>
                    <th class="sorting">Subject</th>
                    <th class="sorting">Created At</th>
                    <th class="sorting">Actions</th>
                </tr>
                </thead>
                <tbody>
                <tr v-for="invoice in invoices" :key="invoice.id">
                    <td>{{ invoice.id }}</td>
                    <td></td>
                    <td>{{ invoice.user.name }}</td>
                    <td>{{ invoice.subject }} </td>
                    <td>{{ formatted(invoice.created_at) }}</td>
                    <td>
                        <div class="demo-inline-spacing">
                            <a :href="invoice.edit_url"
                               class="btn btn-icon btn-icon rounded-circle bg-light-warning waves-effect waves-float waves-light">
                                <Icon title="pencil" />
                            </a>
                            <a :href="invoice.invice_url"
                               class="btn btn-icon btn-icon rounded-circle bg-light-primary waves-effect waves-float waves-light">
                                <Icon title="eye" />
                            </a>
                            <button @click="deleteItemModal(invoice.id)"
                                    type="button"
                                    class="btn btn-icon btn-icon rounded-circle waves-effect waves-float waves-light bg-light-danger">
                                <Icon title="trash" />
                            </button>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script setup>
import {useDate} from '../../composables/useDate'
    defineProps({
        invoices: Object
    })


let {formatted} = useDate();

</script>

<style scoped>

</style>
