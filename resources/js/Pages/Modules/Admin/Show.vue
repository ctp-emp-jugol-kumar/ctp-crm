<template>

    <UserProfile :user="props.user"/>

</template>

<script setup>
    import VueLink from '../../../components/ViewLink'
    import UserProfile from "../../../components/UserProfile";
    let props = defineProps({
        user:[],
    })
</script>
