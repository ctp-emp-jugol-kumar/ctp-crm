<template>
    <div>
        <!-- Project table -->
        <div class="card">
            <h4 class="card-header">User's Transactions</h4>
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
                        <tr v-for="(transaction , key) in transactions" :key="key">
                            <td>{{ transaction.method_id }}</td>
                            <td>{{ transaction.user_id }}</td>
                            <td>{{ transaction.client_id }}</td>
                            <td>{{ transaction.invoice_id }}</td>
                            <td>{{ transaction.quotation_id }}</td>
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
    name: "Billing",
    props:[
        'transactions',
    ],
}
</script>

<style scoped>

</style>
