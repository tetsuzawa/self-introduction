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
                  <nuxt-link :to="'home'" class="navbar-item is-size-3">
                    <a href="#" class="footer-logo"></a><span class="footer-logo-separator"></span>
                    <h3 v-html="'<p>VR Audio</p>'" class="has-text-logo"></h3>
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
                    <nuxt-link :to="'home'" class="navbar-item" active-class="is-active">
                      Home
                    </nuxt-link>
                  </li>
                  <li>
                    <nuxt-link :to="'about-us'" class="navbar-item" active-class="is-active">
                      about us
                    </nuxt-link>
                  </li>
                  <li>
                    <nuxt-link :to="'manifesto'" class="navbar-item" active-class="is-active">
                      manifest
                    </nuxt-link>
                  </li>
                  <li>
                    <nuxt-link :to="'contact-us'" class="navbar-item" active-class="is-active">
                      contact us
                    </nuxt-link>
                  </li>
                  <li>
                    <nuxt-link :to="'angel'" class="navbar-item" active-class="is-active">
                      angel
                    </nuxt-link>
                  </li>
                  <li>
                    <nuxt-link :to="'faq'" class="navbar-item" active-class="is-active">
                      FAQ
                    </nuxt-link>
                  </li>
                </ul>
              </div>
              <div class="column is-narrow">
                <ul>
                  <li>
                    <nuxt-link :to="'vulnerability-report'" class="navbar-item"
                               active-class="is-active">report vulnerability
                    </nuxt-link>
                  </li>
                  <li>
                    <a href="https://medium.com/okuna" rel="noopener noreferrer"
                       class="navbar-item" target="_blank"
                    >Blog</a>
                  </li>
                  <li>
                    <a href="https://shwca.se/okuna" rel="noopener noreferrer"
                       class="navbar-item" target="_blank"
                    >Press</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <div class="level-right">
            <ul>
              <li>
                <a href="https://twitter.com/tetsuzawa_el" class="is-flex is-vcentered"
                   target="_blank" rel="noopener noreferrer">
                  <div class="columns is-mobile">
                    <div class="column">
                      <span class="icon">
                        <i class="fab fa-twitter fa-lg"></i>
                      </span>
                    </div>
                    <div class="column">
                      Twitter
                    </div>
                  </div>
                </a>
                <a href="https://github.com/tetsuzawa" class="is-flex is-vcentered" target="_blank"
                   rel="noopener noreferrer">
                  <div class="columns is-mobile">
                    <div class="column">
                      <span class="icon">
                        <i class="fab fa-github-alt fa-lg"></i>
                      </span>
                    </div>
                    <div class="column">
                      GitHub
                    </div>
                  </div>
                </a>
                <a href="https://www.linkedin.com/in/tetsu-takizawa" class="is-flex is-vcentered"
                   target="_blank" rel="noopener noreferrer">
                  <div class="columns is-mobile">
                    <div class="column">
                       <span class="icon">
                         <i class="fab fa-linkedin-in fa-lg"></i>
                       </span>
                    </div>
                    <div class="column">
                      LinkedIn
                    </div>
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="hero-footer">
      <div class="container">
        <div class="columns">
          <div class="column">
            <div class="level has-padding-2x">
              <div class="level-left">
                <div class="content has-text-centered-mobile">
                  the ob organization ™️ All Rights Reserved | <a
                  href="https://www.iubenda.com/privacy-policy/91224954"
                  class="iubenda-white iubenda-embed " title="Privacy Policy" target="_blank"
                  rel="noopener noreferrer">Privacy policy </a>
                </div>
              </div>
              <div class="level-right">
                <div class="content made-in-europe">
                  <span>
                    made with
                  </span>
                  <span class="icon" style="color: #ff0000;">
                    <i class="fas fa-heart"></i>
                  </span>
                  <span>
                    By me
                  </span>
                  &nbsp;
                  <span class="icon is-medium" v-twemoji></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="container">
      <div class="content has-text-centered">
        2019 ©TetsuTakizawa
      </div>
    </div>
  </footer>
</template>

<script>
    import Default from "../layouts/default";

    export default {
        name: "MyFooter",
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
