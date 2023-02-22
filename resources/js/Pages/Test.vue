<template>

    <Head>
        <title>Home</title>
        <meta type="description" content="Home information" head-key="description">
    </Head>


    <!-- Dashboard Ecommerce Starts -->
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>

        <section id="dashboard-ecommerce">
            <div class="row match-height">
                <div class="col-md-4 col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <h1 class="fw-bolder">Total Seals</h1>
                            <div class="d-flex align-items-center justify-content-between pe-3">
                                <h2 class="text-success">{{ data.totalSeals }} Tk</h2>
                                <span class="text-success">
                                    <vue-feather type="trending-up" size="40"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="fw-bolder">Total Expanse</h2>
                            <div class="d-flex align-items-center justify-content-between pe-3">
                                <h2 class="text-danger">{{ data.totalExpanse }} Tk</h2>
                                <span class="text-danger">
                                    <vue-feather type="trending-down" size="40"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="fw-bolder">Gross Profit</h2>
                            <div class="d-flex align-items-center justify-content-between pe-3">
                                <h2 class="text-info">{{ data.totalSeals - data.totalExpanse}} Tk</h2>
                                <span class="text-info">
                                    <vue-feather type="pocket" size="40"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="card">
                        <div class="card-body d-flex align-items-center justify-content-between">
                            <div>
                                <h3 class="fw-bolder mb-75">21,459</h3>
                                <span>Total Users</span>
                            </div>
                            <div class="avatar bg-light-primary p-50">
                                        <span class="avatar-content">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-user font-medium-4"><path
                                                d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12"
                                                                                                             cy="7"
                                                                                                             r="4"></circle></svg>
                                        </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card">
                        <div class="card-body d-flex align-items-center justify-content-between">
                            <div>
                                <h3 class="fw-bolder mb-75">4,567</h3>
                                <span>Paid Users</span>
                            </div>
                            <div class="avatar bg-light-danger p-50">
                                        <span class="avatar-content">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-user-plus font-medium-4"><path
                                                d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5"
                                                                                                             cy="7"
                                                                                                             r="4"></circle><line
                                                x1="20" y1="8" x2="20" y2="14"></line><line x1="23" y1="11" x2="17"
                                                                                            y2="11"></line></svg>
                                        </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card">
                        <div class="card-body d-flex align-items-center justify-content-between">
                            <div>
                                <h3 class="fw-bolder mb-75">19,860</h3>
                                <span>Active Users</span>
                            </div>
                            <div class="avatar bg-light-success p-50">
                                        <span class="avatar-content">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-user-check font-medium-4"><path
                                                d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5"
                                                                                                             cy="7"
                                                                                                             r="4"></circle><polyline
                                                points="17 11 19 13 23 9"></polyline></svg>
                                        </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card">
                        <div class="card-body d-flex align-items-center justify-content-between">
                            <div>
                                <h3 class="fw-bolder mb-75">237</h3>
                                <span>Pending Users</span>
                            </div>
                            <div class="avatar bg-light-warning p-50">
                                        <span class="avatar-content">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-user-x font-medium-4"><path
                                                d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5"
                                                                                                             cy="7"
                                                                                                             r="4"></circle><line
                                                x1="18" y1="8" x2="23" y2="13"></line><line x1="23" y1="8" x2="18"
                                                                                            y2="13"></line></svg>
                                        </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="row">

            <div class="col-xl-12 col-md-6 col-12">
                <div class="card card-statistics">
                    <div class="card-header">
                        <h4 class="card-title">Statistics</h4>
                        <!--                            <div class="d-flex align-items-center">-->
                        <!--                                <p class="card-text font-small-2 me-25 mb-0">Updated 1 month ago</p>-->
                        <!--                            </div>-->
                    </div>
                    <div class="card-body statistics-body">
                        <div class="row">
                            <div class="col-xl col-sm-6 col-12 mb-2 mb-xl-0">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-primary me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="users"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.clients }}</h4>
                                        <p class="card-text font-small-3 mb-0">Clients</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl col-sm-6 col-12 mb-2 mb-xl-0">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-info me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="refresh-ccw"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.users }}</h4>
                                        <p class="card-text font-small-3 mb-0">Users</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl col-sm-6 col-12 mb-2 mb-sm-0">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-success me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="trending-up"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.website }}</h4>
                                        <p class="card-text font-small-3 mb-0">Websits</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl col-sm-6 col-12">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-danger me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="trending-down"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.work }}</h4>
                                        <p class="card-text font-small-3 mb-0">Work</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl col-sm-6 col-12">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-secondery me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="zap-off"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.platforms }}</h4>
                                        <p class="card-text font-small-3 mb-0">Platforms</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl col-sm-6 col-12">
                                <div class="d-flex flex-row">
                                    <div class="avatar bg-light-warning me-2">
                                        <div class="avatar-content">
                                            <vue-feather type="star"/>
                                        </div>
                                    </div>
                                    <div class="my-auto">
                                        <h4 class="fw-bolder mb-0">{{ props.data.packages }}</h4>
                                        <p class="card-text font-small-3 mb-0">Packages</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ Statistics Card -->
        </section>

    </div>
    <!-- Dashboard Ecommerce ends -->
</template>


<script setup>

let props = defineProps({
    data: Object,
})


</script>
