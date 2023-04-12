<template>

    <!-- Project table -->
    <div class="card">
        <h4 class="card-header">{{ this.$options.name }}</h4>
        <div class="table-responsive">
            <table class="user-list-table table">
                <thead class="table-light">
                    <tr class="">
                        <th class="sorting">#id</th>
                        <th class="sorting">Date</th>
                        <th class="sorting">Created by</th>
                        <th class="sorting">Status</th>
                        <th class="sorting">Actions</th>
                    </tr>
                </thead>
                <tbody>
                <tr v-for="qut in quotations" :key="qut.id">
                    <td>{{ qut.id }}</td>
                    <td>{{ formatted(qut.date) }}</td>
                    <td>{{ qut.user.name ?? " " }} </td>
                    <td>
                        <span class="badge badge-light-primary text-capitalize"
                              :class="{
                                    'badge-light-success' : qut.status === 'Converted To Invoice',
                                    'badge-light-info' : qut.status === 'Feedback',
                                     'badge-light-dark' : qut.status === 'Sent',
                                    'badge-light-danger' : qut.status === 'Disqualified'
                        }">
                            {{ qut.status }}
                        </span>
                    </td>
                    <td>
                        <a class="btn bg-light-warning" :href="`/admin/quotations/${qut.id}`" target="_blank">
                            <Icon title="pencil" />
                        </a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

</template>

<script setup>
import Icon from '../Icon'
import {useDate} from '../../composables/useDate.js'
    defineProps({
        quotations: Object
    })

    let {formatted} = useDate();

</script>

<style scoped>

</style>
