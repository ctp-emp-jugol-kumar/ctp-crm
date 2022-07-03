<template>
    <div class="input-group input-group-lg bootstrap-touchspin">
        <span
            class="input-group-btn bootstrap-touchspin-injected">
            <button @click="decrement()"
                    class="btn btn-primary bootstrap-touchspin-down"
                    type="button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="24" height="24" viewBox="0 0 24 24"
                     fill="none" stroke="currentColor"
                     stroke-width="2" stroke-linecap="round"
                     stroke-linejoin="round"
                     class="feather feather-minus">
                    <line x1="5" y1="12" x2="19" y2="12"></line>
                </svg>
            </button>
        </span>
        <input type="number" class="touchspin form-control" :value="quantity">
        <span class="input-group-btn bootstrap-touchspin-injected">
            <button @click="increment()"
                    class="btn btn-primary bootstrap-touchspin-up"
                    type="button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="24" height="24" viewBox="0 0 24 24"
                     fill="none" stroke="currentColor"
                     stroke-width="2" stroke-linecap="round"
                     stroke-linejoin="round"
                     class="feather feather-plus">
                    <line x1="12" y1="5" x2="12" y2="19"></line>
                    <line x1="5" y1="12" x2="19" y2="12"></line>
                </svg>
            </button>
        </span>
    </div>
</template>

<script setup>
    import {ref} from 'vue';
    let props = defineProps({
        qty: Number,
    });
    const quantity = ref(props.qty);
    let increment = ()=>{
        quantity.value ++
    }
    let decrement = () =>{
        quantity.value > 1 ?  quantity.value-- :  quantity.value = 1;
    }
</script>

<style scoped>

</style>
