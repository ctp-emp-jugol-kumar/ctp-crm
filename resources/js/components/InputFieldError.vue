<!--suppress ALL -->
<template>
    <span class="error text-sm text-danger" v-if="errors">{{ errors }}</span>
</template>

<script setup>
    let props = defineProps({
        errors:String,
    })

</script>

<style scoped>

</style>
