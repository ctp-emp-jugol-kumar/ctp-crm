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

                    <div class="mt-1">
                        <label class="form-label">Example range</label>
                        <div>
                            <input type="range" @input="progress" class="form-range customRange" :value="reange" min="1" max="100">
                            <span>{{ reange }} %</span>
                        </div>
                    </div>

                    <button class="btn btn-primary btn-sm mt-1" @click="changeStatus">Update</button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-4">
                <!-- card body  -->
                <div class="card-body">
                    <h4 class=" card-title ">Overall Progress </h4>
                    <ProgressChart :progress="20"/>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>


import {useForm} from "@inertiajs/inertia-vue3";
import {ref} from "vue"
import Swal from "sweetalert2";
import ProgressChart from "../../../components/ProgressChart.vue";

const props = defineProps({
    info:{
        type:Object,
        required:true
    },
    updateUrl:{
        type:String,
        required:true
    }
})
const status = [
    'New Project',
    'Development',
    'In Process',
    'Testing',
    'Revision',
    'Complete',
    'Canceled'
]

const formData = useForm({
    projectId:props.info.id,
    status:props.info.status,
    progress:0,
})
const reange = ref(props.info.progress);
const progress = (event) =>{
    formData.progress = event.target.value;
    reange.value = event.target.value;
}
const processing = ref(false)
const changeStatus = () =>{
    formData.post(props.updateUrl, {
        preserveState: true,
        onStart: () => {processing.value = true},
        onFinish: () => {processing.value = false},
        onSuccess: ()=> { $toast.success('Project Status Updated...') },
        onError: ()=> { $toast.error('Have An Error. Please Try Again.') },
    })
}

</script>

<style scoped>

</style>
