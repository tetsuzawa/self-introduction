<template>
  <section class="section">
    <div class="container">
      <div class="columns is-height-100">
        <div class="column">
          <!--          <div class="columns is-vcentered is-centered">-->
          <div class="column is-narrow content is-medium">
            <!--          <div class="content is-medium">-->
            <h3 class="is-size-3">{{ $t('home.about.title') }}</h3>

            <table class="table">

              <tr class="is-vcentered is-centered about-row">
                <td class="is-vcentered">
                  <div class="about-item is-vcentered">{{ $t('home.about.name_item') }}</div>
                </td>
                <td class="is-vcentered">
                  <div class="about-content is-vcentered">
                    {{ $t('home.about.primary_name') }} ({{ $t('home.about.secondary_name') }})
                  </div>
                </td>
              </tr>

              <tr class="is-vcentered is-centered about-row">
                <td class="is-vcentered">
                  <div class="about-item is-vcentered">{{ $t('home.about.education_item') }}</div>
                </td>
                <td class="is-vcentered">
                  <div class="about-content is-vcentered">{{ $t('home.about.education') }}</div>
                </td>
              </tr>

              <tr class="is-vcentered is-centered about-row">
                <td class="is-vcentered">
                  <div class="about-item is-vcentered">{{ $t('home.about.certification_name') }}</div>
                </td>
                <td class="is-vcentered">
                  <div class="about-content is-vcentered">{{ $t('home.about.toeic') }}</div>
                  <div class="about-content is-vcentered">{{ $t('home.about.ielts') }}</div>
                  <div class="about-content is-vcentered">{{ $t('home.about.electric_work') }}</div>
                </td>
              </tr>

              <tr class="is-vcentered is-centered about-row">
                <td class="is-vcentered">
                  <div class="about-item is-vcentered">GitHub</div>
                </td>
                <td class="is-vcentered">
                  <div class="about-content is-vcentered">
                    <a href="https://github.com/tetsuzawa">tetsuzawa</a>
                  </div>
                </td>
              </tr>


              <tr class="is-vcentered is-centered about-row">
                <td class="is-vcentered">
                  <div class="about-item is-vcentered">Twitter</div>
                </td>
                <td class="is-vcentered">
                  <div class="about-content is-vcentered">
                    <a href="https://twitter.com/tetsuzawa_el">tetsuzawa_el</a>
                  </div>
                </td>
              </tr>

              <tr class="is-vcentered is-centered about-row">
                <td class="is-vcentered">
                  <div class="about-item is-vcentered">LinkedIn</div>
                </td>
                <td class="is-vcentered">
                  <div class="about-content is-vcentered">
                    <a href="https://www.linkedin.com/in/tetsu-takizawa">tetsu-takizawa</a>
                  </div>
                </td>
              </tr>

              <tr class="is-vcentered is-centered about-row">
                <td class="is-vcentered">
                  <div class="about-item is-vcentered">Qiita</div>
                </td>
                <td class="is-vcentered">
                  <div class="about-content is-vcentered">
                    <a href="https://qiita.com/tetsuzawa">tetsuzawa</a>
                  </div>
                </td>
              </tr>

              <tr class="is-vcentered is-centered about-row">
                <td class="is-vcentered">
                  <div class="about-item is-vcentered">Wantedly</div>
                </td>
                <td class="is-vcentered">
                  <div class="about-content is-vcentered">
                    <a href="https://www.wantedly.com/users/92008116">瀧澤 哲</a>
                  </div>
                </td>
              </tr>

              <!--            </div>-->
            </table>
          </div>
        </div>
        <div class="column has-padding-top-2x-mobile">
          <div class="columns is-centered is-vcentered is-height-100 is-mobile">
            <div class="column is-narrow">
<!--              <ob-ghost></ob-ghost>-->
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped lang="scss">

  .privacy-text {
    @media (min-width: 768px) {
      max-width: 400px;
    }
  }

  .about-item {
    font-size: 1.0rem;
  }

  .about-row {
    margin: 0 10px;
    padding: 0 10px;
  }
</style>

<script>
    // import ObGhost from "./components/ghost";

    export default {
        // components: {ObGhost},
        name: 'about'
    }
</script>
