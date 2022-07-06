<template>
    <span>{{ name }}</span>
    <div class="border-1 border-light rounded-3 p-25">
        <div class="input-group border-0">
            <div class="input-group-text border-0">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox"
                           id="inputCheckbox">
                </div>
            </div>
            <QtyButton/>
            <input type="number" class="form-control border-0" placeholder="Discount">
        </div>
    </div>
</template>

<script setup>
    import QuantityButton from "./QuantityButton";
    import QtyButton from "./QtyButton";
    let props = defineProps({
        name:String,
    })
</script>

<style scoped>

</style>
