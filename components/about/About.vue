<template>
  <section class="section">
    <div class="container">
      <div class="columns is-height-100">
        <div class="column">
          <div class="column is-narrow content is-medium">
            <h3 class="is-size-3">{{ $t('home.about.title') }}</h3>

            <table class="table">
              <tr class="about-row">
                <td>
                  <div class="about-item">{{ $t('home.about.name_item') }}</div>
                </td>
                <td>
                  <div class="about-content">
                    {{ $t('home.about.primary_name') }} ({{ $t('home.about.secondary_name') }})
                  </div>
                </td>
              </tr>

              <tr class="about-row">
                <td>
                  <div class="about-item">{{ $t('home.about.education_item') }}</div>
                </td>
                <td>
                  <div class="about-content">{{ $t('home.about.education') }}</div>
                </td>
              </tr>

              <tr class="about-row">
                <td>
                  <div class="about-item">{{ $t('home.about.certification_name') }}</div>
                </td>
                <td>
                  <div class="about-content">{{ $t('home.about.toeic') }}</div>
                  <div class="about-content">{{ $t('home.about.ielts') }}</div>
                  <div class="about-content">{{ $t('home.about.electric_work') }}</div>
                </td>
              </tr>

              <tr class="about-row">
                <td>
                  <div class="about-item">GitHub</div>
                </td>
                <td>
                  <div class="about-content">
                    <a href="https://github.com/tetsuzawa">tetsuzawa</a>
                  </div>
                </td>
              </tr>


              <tr class="about-row">
                <td>
                  <div class="about-item">Twitter</div>
                </td>
                <td>
                  <div class="about-content">
                    <a href="https://twitter.com/tetsuzawa_el">tetsuzawa_el</a>
                  </div>
                </td>
              </tr>

              <tr class="about-row">
                <td>
                  <div class="about-item">LinkedIn</div>
                </td>
                <td>
                  <div class="about-content">
                    <a href="https://www.linkedin.com/in/tetsu-takizawa">tetsu-takizawa</a>
                  </div>
                </td>
              </tr>

              <tr class="about-row">
                <td>
                  <div class="about-item">Qiita</div>
                </td>
                <td>
                  <div class="about-content">
                    <a href="https://qiita.com/tetsuzawa">tetsuzawa</a>
                  </div>
                </td>
              </tr>

              <tr class="about-row">
                <td>
                  <div class="about-item">Wantedly</div>
                </td>
                <td>
                  <div class="about-content">
                    <a href="https://www.wantedly.com/users/92008116">瀧澤 哲</a>
                  </div>
                </td>
              </tr>
            </table>

          </div>
        </div>
        <div class="column has-padding-top-2x-mobile">
          <div class="columns is-centered is-vcentered is-height-100 is-mobile">
            <div class="column is-narrow">
              <span class="icon">
                <i class="far fa-address-card fa-lg"></i>
              </span>
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
