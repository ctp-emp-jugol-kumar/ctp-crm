<template>
    <vue-select v-model="selected" :options="options" @update:modelValue="updateSelectedWithUniqueValue"></vue-select>
</template>

<script>
    export default {
        data() {
            return {
                selected: null,
                options: [
                    { value: 'option1', label: 'Option 1' },
                    { value: 'option2', label: 'Option 2' },
                    { value: 'option3', label: 'Option 3' }
                ],
                uniqueValue: 'myUniqueValue'
            };
        },
        methods: {
            updateSelectedWithUniqueValue() {
                this.updateSelected(this.uniqueValue);
            },
            updateSelected(uniqueValue) {
                // Do something with the selected value and uniqueValue
                console.log(this.selected, uniqueValue);
            }
        }
    };
</script>
