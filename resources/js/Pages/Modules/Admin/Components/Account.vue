<template>
    <div>
        <!-- Project table -->
        <div class="card">
            <h4 class="card-header">User's Projects List</h4>
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
                </table>
            </div>
        </div>
        <!-- /Project table -->

        <!-- Activity Timeline -->
        <div class="card">
            <h4 class="card-header">User Activity Timeline</h4>
            <div class="card-body pt-1">
                <ul class="timeline ms-50">
                    <li class="timeline-item">
                        <span class="timeline-point timeline-point-indicator"></span>
                        <div class="timeline-event">
                            <div class="d-flex justify-content-between flex-sm-row flex-column mb-sm-0 mb-1">
                                <h6>User login</h6>
                                <span class="timeline-event-time me-1">12 min ago</span>
                            </div>
                            <p>User login at 2:12pm</p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <span class="timeline-point timeline-point-warning timeline-point-indicator"></span>
                        <div class="timeline-event">
                            <div class="d-flex justify-content-between flex-sm-row flex-column mb-sm-0 mb-1">
                                <h6>Meeting with john</h6>
                                <span class="timeline-event-time me-1">45 min ago</span>
                            </div>
                            <p>React Project meeting with john @10:15am</p>
                            <div class="d-flex flex-row align-items-center mb-50">
                                <div class="avatar me-50">
                                    <img src="#" alt="Avatar" width="38" height="38" />
                                </div>
                                <div class="user-info">
                                    <h6 class="mb-0">Leona Watkins (Client)</h6>
                                    <p class="mb-0">CEO of pixinvent</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <span class="timeline-point timeline-point-info timeline-point-indicator"></span>
                        <div class="timeline-event">
                            <div class="d-flex justify-content-between flex-sm-row flex-column mb-sm-0 mb-1">
                                <h6>Create a new react project for client</h6>
                                <span class="timeline-event-time me-1">2 day ago</span>
                            </div>
                            <p>Add files to new design folder</p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <span class="timeline-point timeline-point-danger timeline-point-indicator"></span>
                        <div class="timeline-event">
                            <div class="d-flex justify-content-between flex-sm-row flex-column mb-sm-0 mb-1">
                                <h6>Create Invoices for client</h6>
                                <span class="timeline-event-time me-1">12 min ago</span>
                            </div>
                            <p class="mb-0">Create new Invoices and send to Leona Watkins</p>
                            <div class="d-flex flex-row align-items-center mt-50">
                                <img class="me-1" src="#" alt="data.json" height="25" />
                                <h6 class="mb-0">Invoices.pdf</h6>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
export default {
name: "Account"
}
</script>

<style scoped>

</style>
