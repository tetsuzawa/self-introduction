<template>
  <footer class="hero is-small is-white has-border-top-gray-light" id="footer">
    <span class="footer-separator"></span>
    <div class="hero-head">
      <div class="hero is-small">
        <div class="hero-body">
          <div class="navbar is-transparent">
            <div class="container">
              <div class="navbar-brand">
                <div class="navbar-item">
                  <nuxt-link to="/" class="navbar-item is-size-3">
                    <a href="/" class="footer-logo navbar-item is-size-3"></a>
                    <span class="footer-logo-separator"></span>
                    <h3 v-html="'<p>ABOUT ME</p>'" class="has-text-logo"></h3>
                  </nuxt-link>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="hero-body">
      <div class="container">
        <div class="level">
          <div class="level-left">
            <div class="columns">
              <div class="column is-narrow">
                <ul>
                  <li>
                    <a href="/" class="navbar-item">
                      Home
                    </a>
                  </li>
                  <li>
                    <a class="navbar-item" v-scroll-to="'#contact'">
                      Contact
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="content has-text-centered">
        {{ getCurrentYear }} © Tetsu Takizawa
      </div>
    </div>
  </footer>
</template>

<script>
    import Default from "../layouts/default";

    export default {
        name: "MyFooter",
        computed: {
            getCurrentYear() {
                const now = new Date();
                return now.getFullYear();
            }
        },
        components: {Default}
    }
</script>

<style lang="scss" scoped>
  .footer-separator {
    width: 90%;
    height: 2px;
    background: #fafafa;
    margin: 8px 0;
  }

  .footer-logo {
    background-image: url('~assets/images/logo.png');
    background-size: 70px 70px;
    background-repeat: no-repeat;
    background-position: center center;
    width: 70px;
    height: 70px;
  }

  .footer-logo-separator {
    width: 1px;
    height: 25px;
    background: #fafafa;
    margin-right: 8px;
    margin-left: 8px;
  }

</style>
