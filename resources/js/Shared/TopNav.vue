<template>
    <nav
        class="header-navbar navbar navbar-expand-lg align-items-center floating-nav navbar-light navbar-shadow container-xxl">
        <div class="navbar-container d-flex content">
<!--            <div class="bookmark-wrapper d-flex align-items-center">
                <ul class="nav navbar-nav d-xl-none">
                    <li class="nav-item">
                        <a class="nav-link menu-toggle" @click="toggleVerticalMenuActive" href="#">
                            <vue-feather type="menu" />
                        </a>
                    </li>
                </ul>
                <ul class="nav navbar-nav bookmark-icons">
                    <li class="nav-item d-none d-lg-block"><a class="nav-link" href="app-email.html"
                            data-bs-toggle="tooltip" data-bs-placement="bottom" title="Email"><vue-feather type="mail" /></a></li>
                    <li class="nav-item d-none d-lg-block"><a class="nav-link" href="app-chat.html"
                            data-bs-toggle="tooltip" data-bs-placement="bottom" title="Chat"><vue-feather type="message-square" /></a></li>
                    <li class="nav-item d-none d-lg-block"><a class="nav-link" href="app-calendar.html"
                            data-bs-toggle="tooltip" data-bs-placement="bottom" title="Calendar"><vue-feather type="calendar" /></a></li>
                    <li class="nav-item d-none d-lg-block"><a class="nav-link" href="app-todo.html"
                            data-bs-toggle="tooltip" data-bs-placement="bottom" title="Todo"><vue-feather type="check-square" /></a></li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="nav-item d-none d-lg-block"><a class="nav-link bookmark-star"><vue-feather type="star" /></a>
                        <div class="bookmark-input search-input">
                            <div class="bookmark-input-icon"><vue-feather type="search" /></div>
                            <input class="form-control input" type="text" placeholder="Bookmark" tabindex="0"
                                data-search="search">
                            <ul class="search-list search-list-bookmark"></ul>
                        </div>
                    </li>
                </ul>
            </div>-->
            <ul class="nav navbar-nav align-items-center ms-auto">
                <li class="nav-item dropdown dropdown-language">
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdown-flag">
                        <a
                            class="dropdown-item" href="#" data-language="en"><i class="flag-icon flag-icon-us"></i>
                            English</a>
                            <a class="dropdown-item" href="#" data-language="fr"><i
                                class="flag-icon flag-icon-fr"></i> French</a>
                                <a class="dropdown-item" href="#"
                            data-language="de"><i class="flag-icon flag-icon-de"></i> German</a>
                            <a class="dropdown-item"
                            href="#" data-language="pt"><i class="flag-icon flag-icon-pt"></i>
                            Portuguese</a>
                    </div>
                </li>
                <dark-toggle />
                <li class="nav-item dropdown dropdown-user">
                    <a class="nav-link dropdown-toggle dropdown-user-link" id="dropdown-user" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <div class="user-nav d-sm-flex d-none">
                            <span class="user-name fw-bolder">John Doe</span>
                            <span class="user-status">Admin</span>
                        </div>
                        <span class="avatar">
                            <img class="round" src="https://images.unsplash.com/photo-1633332755192-727a05c4013d" alt="avatar" height="40" width="40">
                            <span class="avatar-status-online"></span>
                        </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdown-user">
                        <a class="dropdown-item" href="page-profile.html">
                            <vue-feather type="user" /> Profile
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="page-account-settings-account.html">
                            <vue-feather type="settings" /> Settings
                        </a>
                        <a class="dropdown-item" href="auth-login-cover.html">
                            <vue-feather type="power" /> Logout
                        </a>
                    </div>
                </li>
                <li class="nav-item nav-search">
                    Logout
                    <Link preserve-scroll method="post" class="nav-link nav-link-search" href="/admin/logout">
                        <vue-feather type="power" />
                    </Link>
                </li>
            </ul>
        </div>
    </nav>
    <ul class="main-search-list-defaultlist-other-list d-none">
        <li class="auto-suggestion justify-content-between"><a
                class="d-flex align-items-center justify-content-between w-100 py-50">
                <div class="d-flex justify-content-start"><span class="me-75"
                        data-feather="alert-circle"></span><span>No results found.</span></div>
            </a></li>
    </ul>
</template>

<script setup>
import DarkToggle from "../components/DarkToggle";

const props = defineProps({
  toggleVerticalMenuActive: {
      type: Function,
      required: true,
    },
})
</script>
