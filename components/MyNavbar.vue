<template>
  <nav class="navbar has-shadow has-border-bottom-gray-light animated fadeInDown"
       role="navigation"
       aria-label="main navigation"
  >
    <div class="navbar-brand">
      <a href="/" class="navbar-item is-size-4 header-logo"></a>
      <span class="header-logo-separator"></span>

      <a
        role="button"
        class="navbar-burger burger"
        aria-label="menu"
        aria-expanded="false"
        data-target="'#navbarBasic'"
        :class="{ 'is-active': menuActive }"
        @click="menuToggle"
      >
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>

    <div id="navbarBasic" class="navbar-menu">
      <div class="navbar-start">
        <a class="navbar-item" v-scroll-to="'#main'">
          Home
        </a>

        <a class="navbar-item" v-scroll-to="'#contact'">
          Contact
        </a>
      </div>

      <div class="navbar-item has-dropdown is-right is-hoverable">
        <a class="navbar-link">
          {{ currentLocale.name }}
        </a>

        <div class="navbar-dropdown">
          <a
            v-for="locale in availableLocales"
            :href="switchLocalePath(locale.code)"
            :key="locale.code"
            class="navbar-item">{{ locale.name }}
          </a>
        </div>
      </div>
    </div>
  </nav>
</template>

<script>
    export default {
        name: "MyNavbar",
        data() {
            return {
                menuActive: false,
            }
        },
        methods: {
            menuToggle() {
                this.menuActive = !this.menuActive;
            },
        },
        computed: {
            currentLocale() {
                return this.$i18n.locales.filter(i => i.code === this.$i18n.locale)[0]
            },
            availableLocales() {
                return this.$i18n.locales.filter(i => i.code !== this.$i18n.locale)
            }
        }
    }

</script>

<style lang="scss" scoped>
  .header-logo {
    background-image: url('~assets/images/logo.png');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
    width: 80px;
    height: 80px;
  }

  .header-logo-separator {
    width: 1px;
    height: 25px;
    background: #fafafa;
    margin-right: 8px;
  }


</style>
