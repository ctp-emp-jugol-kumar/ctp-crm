<template>
    <div class="row mt-5">
        <div class="col">
            <div class="card-title">
                <h2>Account Status</h2>
            </div>
            <div class="mt-2 row">
                <div class="col-lg-3 col-sm-6">
                    <div class="card">
                        <div class="card-body d-flex align-items-center justify-content-between">
                            <div>
                                <h3 class="fw-bolder mb-75">0</h3>
                                <span>Total Projects</span>
                            </div>
                            <div class="avatar bg-light-primary p-50">
                                <span class="avatar-content">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                         viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                         stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-user font-medium-4"><path
                                        d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="12" cy="7" r="4"></circle>
                                    </svg>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card">
                        <div class="card-body d-flex align-items-center justify-content-between">
                            <div>
                                <h3 class="fw-bolder mb-75">0</h3>
                                <span>Total Seals</span>
                            </div>
                            <div class="avatar bg-light-danger p-50">
                                <span class="avatar-content">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                         viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                         stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-user-plus font-medium-4"><path
                                        d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="8.5" cy="7" r="4"></circle>
                                        <line x1="20" y1="8" x2="20" y2="14"></line>
                                        <line x1="23" y1="11" x2="17" y2="11"></line>
                                    </svg>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card">
                        <div class="card-body d-flex align-items-center justify-content-between">
                            <div>
                                <h3 class="fw-bolder mb-75">0</h3>
                                <span>Pay Amount</span>
                            </div>
                            <div class="avatar bg-light-success p-50">
                                <span class="avatar-content">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                         viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                         stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-user-check font-medium-4"><path
                                        d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="8.5" cy="7" r="4"></circle>
                                        <polyline points="17 11 19 13 23 9"></polyline>
                                    </svg>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card">
                        <div class="card-body d-flex align-items-center justify-content-between">
                            <div>
                                <h3 class="fw-bolder mb-75">0</h3>
                                <span>Due Payment</span>
                            </div>
                            <div class="avatar bg-light-warning p-50">
                                <span class="avatar-content">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                         viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                         stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-user-x font-medium-4"><path
                                        d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="8.5" cy="7" r="4"></circle>
                                        <line x1="18" y1="8" x2="23" y2="13"></line>
                                        <line x1="23" y1="8" x2="18" y2="13"></line>
                                    </svg>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- /Project table -->

        <!-- Activity Timeline -->
<!--        <div class="card">
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
        </div>-->
    </div>
</template>

<script>
export default {
name: "Account"
}
</script>

<style scoped>

</style>
