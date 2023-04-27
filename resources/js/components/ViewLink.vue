<template>
    <li class="nav-item">
        <a
            class="nav-link"
            :class="{ 'active' : active}"
           :href="link">
            <slot></slot>
        </a>
    </li>
</template>

<script setup>
    let props = defineProps({
       active:Boolean,
       link:String
    });
</script>

<style scoped>

</style>
