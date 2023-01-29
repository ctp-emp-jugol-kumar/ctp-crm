<template>
    <div>
        <div class="card">
            <div class="card-body">
                <input type="text" @input="updateValue">
                <button @click="handelInput">Click me</button>
            </div>
        </div>


        <!-- Project table -->
        <div class="card">
            <h4 class="card-header">{{ this.$options.name }}</h4>
            <div class="table-responsive">
                <table class="table datatable-project">
                    <thead>
                    <tr>
                        <th></th>
                        <th>Project</th>
                        <th class="text-nowrap">Total Task</th>
                        <th>Progress</th>
                        <th>Hours</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(value,key) in project">
                            <td>{{value}}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- /Project table -->
    </div>
</template>

<script>
    export default {
        props:[
            'project',
        ],
        methods:{
            updateValue(e){
                this.$emit("emitUpdateValue", e)
            }
        }
    }
</script>

<style scoped>

</style>
