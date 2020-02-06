<template>
  <!-- class="navbar header has-shadow is-fixed-top sticky-header"-->
  <nav
    class="navbar header has-shadow is-fixed-top is-transparent has-border-bottom-gray-light animated fadeInDown"
    role="navigation"
    aria-label="main navigation"
  >
    <!--      <template>-->
    <div class="container">
      <div class="navbar-brand">
        <nuxt-link to="/" class="navbar-item is-size-4 has-text-primary">
          <a href="#" class="header-logo"></a>
          <!--
                    <img
                      src="@/assets/images/logo.png"
                      alt="Lightweight UI components for Vue.js based on Bulma"
                      width="60"
                      height="auto"
                    >
          -->
          <span class="header-logo-separator"></span>
          <p class="has-text-logo is-size-5">VRA</p>
        </nuxt-link>

        <a
          role="button"
          class="navbar-burger burger"
          aria-label="menu"
          aria-expanded="false"
          data-target="navbarBasicExample"
        >
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
        </a>
      </div>

      <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
          <nuxt-link class="navbar-item" to="/">
            Home
          </nuxt-link>

          <nuxt-link class="navbar-item" to="/contact">
            Contact
          </nuxt-link>

        </div>
      </div>

      <div class="navbar-end">

        <a href="https://github.com/tetsuzawa" class="navbar-item">
          <b-icon icon="github-box" size="is-medium"></b-icon>
        </a>
        <a href="https://twitter.com/tetsuzawa_el" class="navbar-item">
          <b-icon icon="twitter-box" size="is-medium"></b-icon>
        </a>
        <a href="https://www.linkedin.com/in/tetsu-takizawa" class="navbar-item">
          <b-icon icon="linkedin-box" size="is-medium"></b-icon>
        </a>


        <div class="navbar-item">
          <div class="buttons">

            <div class="navbar-item has-dropdown is-right is-hoverable">
              <a class="navbar-link">
                {{ currentLocale.name }}
              </a>

              <div class="navbar-dropdown">
                <nuxt-link
                  v-for="locale in availableLocales"
                  :key="locale.code"
                  :to="switchLocalePath(locale.code)"
                  class="navbar-item">{{ locale.name }}
                </nuxt-link>
              </div>
            </div>


          </div>
        </div>
      </div>

      <!-- *********** Sign Up, Login *********** -->
      <!--
      <div class="navbar-end">
        <div class="navbar-item">
          <div class="buttons">
            <a class="button is-primary">
              <strong>Sign up</strong>
            </a>
            <a class="button is-light">
              Log in
            </a>
          </div>
        </div>
      </div>
      -->
      <!-- *********** Sign Up, Login *********** -->
    </div>
  </nav>
</template>

<script>
    export default {
        name: "MyNavbar",
        data() {
            return {
                // currentLocale: this.$i18n.locale
            }
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
    background-size: 60px 30px;
    background-repeat: no-repeat;
    background-position: center center;
    width: 70px;
    height: 40px;
  }

  .header-logo-separator {
    width: 1px;
    height: 25px;
    background: #fafafa;
    margin-right: 8px;
  }


</style>
