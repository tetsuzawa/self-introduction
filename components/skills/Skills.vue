<template>
  <section class="section">
    <div class="container">
      <div class="columns has-reverse-row-order-mobile">
        <div class="column is-6 is-centered is-vcentered section-icon-parent">
          <div class="column padding-top-2x-mobile has-text-centered section-icon-child">
            <span class="icon">
              <i class="fas fa-toolbox section-icon"></i>
            </span>
          </div>
        </div>
        <div class="column is-6">
          <div class="columns is-centered is-vcentered is-height-100">
            <div class="column is-narrow personal-text content is-medium">
              <h3 class="has-text-shadow">{{ $t('home.skills.title') }}</h3>
              <!--              <h4>{{ $t('home.skills.lang_title') }}</h4>-->
              <div class="tags">
                <span class="tag is-info is-medium">Go</span>
                <span class="tag is-info is-medium">Python</span>
                <span class="tag is-info is-medium">Javascript (ES6)</span>
                <span class="tag is-info is-medium">Vue.js / Nuxt.js</span>
                <span class="tag is-info is-small">C</span>
                <span class="tag is-info is-small">Unity C#</span>
                <span class="tag is-info is-small">HTML5 / CSS3</span>
                <span class="tag is-info is-small">Shell Script</span>
                <!--                <span class="tag is-primary is-small">Google Apps Script</span>-->
              </div>

              <!--              <h4>{{ $t('home.skills.other_title') }}</h4>-->
              <div class="tags">
                <span class="tag is-info is-medium">{{ $t('home.skills.web_development') }}</span>
                <span class="tag is-info is-medium">Git / GitHub</span>
                <span class="tag is-info is-medium">Linux</span>
                <span class="tag is-info is-medium">AWS</span>
                <span class="tag is-info is-medium">Docker</span>
                <span class="tag is-info is-medium">{{ $t('home.skills.signal_processing') }}</span>
                <span class="tag is-info is-medium">{{ $t('home.skills.vrsound') }}</span>
                <span class="tag is-info is-medium">{{ $t('home.skills.iot_electrical_work') }}</span>
                <span class="tag is-info is-small">RDBMS</span>
                <span class="tag is-info is-small">{{ $t('home.skills.data_analysis') }}</span>
                <span class="tag is-info is-small">{{ $t('home.skills.scraping') }}</span>
                <!--                <span class="tag is-primary is-medium">gRPC</span>-->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style lang="scss">

  .personal-text {
    @media (min-width: 768px) {
      max-width: 400px;
    }
  }

  .section-icon {
    font-size: 200px;
  }

  .section-icon-parent {
    position: relative;

    .section-icon-child {
      position: absolute;
      top: 40%;
      left: 50%;
    }
  }
</style>

<script>

    export default {
        name: 'skills'
    }
</script>
