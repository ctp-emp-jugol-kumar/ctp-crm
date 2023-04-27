<template>
    <div>
        <!-- Project table -->
        <div class="card">
            <h4 class="card-header">{{ this.$options.name }}</h4>
            <div class="table-responsive">

                <table class="user-list-table table table-striped">
                    <thead class="table-light">
                    <tr class="">
                        <th class="sorting">Project Id</th>
                        <th class="sorting">Project Name</th>
                        <th class="sorting">Delivery Date</th>
                        <th class="sorting">Developers</th>
                        <th class="sorting">Project Status</th>
                        <th class="sorting">Project Progress</th>
                        <th class="sorting">Created At</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="projects in project" :key="projects.id">
                        <td>
                            <a href="javascript:void(0)">#Pro_{{ projects.id }}</a>
                        </td>
                        <td>{{ projects.name  }}</td>

                        <td>{{ formatted(projects.start) + " - " + formatted(projects.end) }} </td>
                        <th>
                            <div class="avatar-group mt-50">
                                <div data-bs-toggle="tooltip"
                                     data-popup="tooltip-custom"
                                     data-bs-placement="bottom"
                                     title=""
                                     class="avatar pull-up"
                                     data-bs-original-title="Elicia Rieske"
                                     v-for="(developer, index) in projects.users" :key="developer.id">
                                    <img :src="projects.files" alt="Avatar" height="30" width="30">
                                </div>
                            </div>
                        </th>
                        <td>
                            <span
                                class="badge"
                                :class="{
                                'badge-light-primary'   : projects.status === 'New Project',
                                'badge-light-warning'   : projects.status === 'Testing',
                                'badge-light-success'   : projects.status === 'Complete',
                                'badge-light-secandery' : projects.status === 'Revision',
                                'badge-light-danger'    : projects.status === 'Canceled',
                            }">
                                {{ projects.status }}
                            </span>
                        </td>
                        <td>
                            <p style="line-height: 0">{{projects.progress}} % Complete</p>
                            <div class="progress" style="height: 7px;">
                                <div role="progressbar"
                                     aria-valuemin="0"
                                     aria-valuemax="100"
                                     aria-valuenow="50"
                                     class="progress-bar progress-bar-striped"
                                     :class="{
                                                'bg-primary'   : projects.status === 'New Project',
                                                'bg-warning'   : projects.status === 'Testing',
                                                'bg-success'   : projects.status === 'Complete',
                                                'bg-secandery' : projects.status === 'Revision',
                                                'bg-danger'    : projects.status === 'Canceled',
                                            }"
                                     :style="{ width: `${projects.progress}%`}">
                                </div>
                            </div>
                        </td>

                        <td>{{ formatted(projects.created_at) }}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- /Project table -->
    </div>
</template>

<script setup>
import {useDate} from '../../composables/useDate.js'
 defineProps({
     project: Object,
 })

let {formatted} = useDate();

</script>

<style scoped>

</style>
