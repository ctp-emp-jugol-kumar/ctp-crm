<template>
    <div>
        <table>
            <tr v-for="(row, rowIndex) in matrix" :key="rowIndex">
                <td v-for="(cell, cellIndex) in row" :key="cellIndex">{{ cell }}</td>
            </tr>
        </table>

        <input type="text" v-model="newCellValue">
        <button @click="addRow">Add Row</button>
    </div>
</template>
<script>
    export default {
        layout:null
    }
</script>
<script setup>
        import { ref } from 'vue';

        const newCellValue = ref("")
        // Define 2D array
        const matrix = ref([
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]
        ]);


        function addRow() {
            const newRow = Array(matrix.value[0].length).fill(newCellValue);
            matrix.value.push(newRow);
        }

</script>
