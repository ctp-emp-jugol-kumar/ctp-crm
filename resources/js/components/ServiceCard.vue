<template>
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">{{ cardTitle }}</h4>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-4 mb-1" v-for="(option , index) in items" :key="index">
                    <ServiceItem :name="option.name"/>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
    import ServiceItem from './ServiceItem'
    let props = defineProps({
        cardTitle:String,
        items:Object,
    })

</script>

<style scoped>

</style>
