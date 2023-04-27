<template>
    <div>
        <h1>This is my header of slot</h1>
        <slot name="header" message="hello"></slot>
        <h1>This is my footer of this slot</h1>
    </div>
</template>

<script>
export default {
name: "Sloting"
}
</script>

<style scoped>

</style>
