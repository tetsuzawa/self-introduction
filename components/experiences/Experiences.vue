<template>
  <div class="section">
    <div class="container">
      <div class="columns has-reverse-row-order-mobile is-centered">
        <div class="column content is-medium">
          <h3 class="has-text-shadow has-text-centered">{{ $t('home.experiences.title') }}</h3>

          <div class="timeline is-centered is-vcentered">
            <header class="timeline-header icon is-large has-text-danger">
              <i class="fas fa-map-marker-alt fa-2x"></i>
            </header>
            <div class="timeline-item">
              <div class="timeline-marker"></div>
              <div class="timeline-content">
                <h6 class="heading subtitle is-7">September 2019 ~ February 2020</h6>
                <h4 class="title is-4">{{ $t('home.experiences.graduation_research.title') }}</h4>
                <p v-html="$t('home.experiences.graduation_research.contents')"></p>

                <div class="tags">
                  <span class="tag is-light is-medium">Go</span>
                  <span class="tag is-light is-medium">Python</span>
                  <span class="tag is-light is-medium">{{ $t('home.skills.signal_processing') }}</span>
                  <span class="tag is-light is-medium">{{ $t('home.skills.data_analysis') }}</span>
                  <span class="tag is-light is-medium">{{ $t('home.skills.iot_electrical_work') }}</span>
                </div>
              </div>
            </div>

            <div class="timeline-item">
              <div class="timeline-marker"></div>
              <div class="timeline-content">
                <h6 class="heading subtitle is-7">September 2019</h6>
                <h4 class="title is-4">{{ $t('home.experiences.sony.title') }}</h4>
                <p v-html="$t('home.experiences.sony.contents')"></p>

                <div class="tags">
                  <span class="tag is-light is-medium">Unity C#</span>
                  <span class="tag is-light is-medium">Python</span>
                  <span class="tag is-light is-medium">{{ $t('home.skills.vrsound') }}</span>
                  <span class="tag is-light is-medium">{{ $t('home.skills.data_analysis') }}</span>
                </div>
              </div>
            </div>

            <div class="timeline-item">
              <div class="timeline-marker"></div>
              <div class="timeline-content">
                <h6 class="heading subtitle is-7">March 2019</h6>
                <h4 class="title is-4">{{ $t('home.experiences.mongol.title') }}</h4>
                <p v-html="$t('home.experiences.mongol.contents')"></p>

                <div class="tags">
                  <span class="tag is-light is-medium">{{ $t('home.skills.iot_electrical_work') }}</span>
                </div>
              </div>
            </div>

            <div class="timeline-item">
              <div class="timeline-marker"></div>
              <div class="timeline-content">
                <h6 class="heading subtitle is-7">September 2018</h6>
                <h4 class="title is-4">{{ $t('home.experiences.ishida.title') }}</h4>
                <p v-html="$t('home.experiences.ishida.contents')"></p>

                <div class="tags">
                  <span class="tag is-light is-medium">C</span>
                  <span class="tag is-light is-medium">{{ $t('home.skills.iot_electrical_work') }}</span>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
    export default {
        name: "experiences"
    }
</script>

<style scoped lang="scss">
</style>
