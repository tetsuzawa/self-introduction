<template>
  <section class="hero is-medium hero--splash" id="main">
    <div class="hero-body has-padding-bottom-1x-mobile">
      <div class="container">
        <div class="columns is-centered is-vcentered">
          <div class="column splash-browser has-position-relative">
            <figure class="has-position-relative animated fadeIn mockup">
              <img :src="profileLarge">
            </figure>
          </div>

          <div
            class="column has-text-centered has-padding-top-2x-mobile has-background-white is-z-2 has-position-relative">
            <div class="columns is-centered is-mobile">
              <div class="column" style="max-width: 450px">

                <h1 class="is-size-3-mobile is-size-1 has-text-weight-bold"
                    v-html="$t('home.profile_hero.name')">
                </h1>

                <p class="is-size-4 padding-top-1x"
                   v-html="$t('home.profile_hero.biography')">
                </p>
                <div class="has-padding-2x has-text-centered">
                  <button class="button is-rainbow is-rounded" v-scroll-to="'#contact'">
                    <span class="icon">
                       <i class="far fa-envelope"></i>
                    </span>
                    <span>{{ $t('home.profile_hero.contact_me') }}</span>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>


<script>
    import profileLarge from './assets/profile-large.jpg'

    export default {
        name: "profilehero",
        data() {
            return {
                profileLarge,
            };
        },
        computed: {
            helloSubjects() {
                return [
                    this.$i18n.t('home.splash_hero.world'),
                    this.$i18n.t('home.splash_hero.friends'),
                    this.$i18n.t('home.splash_hero.family'),
                    this.$i18n.t('home.splash_hero.grandma')
                ].map(subject => `${subject}!`);
            },
            locale() {
                return this.$i18n.locale;
            }
        }
    }
</script>

<style scoped lang="scss">

  .hero--splash {
    position: relative;
  }

  .splash-text {
    margin-top: 1rem;
  }

  .splash-browser {
    margin-top: 1rem;
    @media(max-width: 770px) {
      max-height: 45vh;
    }
  }

  .typewriter-cursor {
    font-weight: 400;
    color: #333;
  }

  .mockup {
    width: 100%;
  }

  .typed-element {
    display: block !important;
  }

  .contact-link {
    text-decoration: none;
  }

</style>
