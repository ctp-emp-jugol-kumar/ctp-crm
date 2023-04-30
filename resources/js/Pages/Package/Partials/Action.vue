<template>
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <label class="mb-2">Change Project Status</label>
                    <v-select v-model="formData.status"
                              label="name"
                              :options="status"
                              placeholder="~~Select Sub Category~~">
                    </v-select>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>


import {useForm} from "@inertiajs/inertia-vue3";

const status = [
    'New Project',
    'In Process',
    'Testing',
    'Revision',
    'Complete',
    'Canceled'
]

const formData = useForm({
    status:null,
})


</script>

<style scoped>

</style>
