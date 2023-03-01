<template>

    <!-- Project table -->
    <div class="card">
        <h4 class="card-header">{{ this.$options.name }}</h4>
        <div class="table-responsive">
            <table class="user-list-table table">
                <thead class="table-light">
                <tr class="">
                    <th class="sorting">#id</th>
                    <th class="sorting">Creator</th>
                    <th class="sorting">Subject</th>
                    <th class="sorting">Created At</th>
                    <th class="sorting">Actions</th>
                </tr>
                </thead>
                <tbody>
                <tr v-for="invoice in invoices" :key="invoice.id">
                    <td>{{ invoice.id }}</td>
                    <td>{{ invoice.user.name }}</td>
                    <td>{{ invoice.subject }} </td>
                    <td>{{ formatted(invoice.created_at) }}</td>
                    <td>
                        <div class="demo-inline-spacing">

                            <a :href="`/admin/invoices/${invoice.id}`"
                               target="_blank"
                               class="btn bg-light-warning waves-effect waves-float waves-light">
                               <vue-feather type="eye" size="10"/>
                            </a>
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
