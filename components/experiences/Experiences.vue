<template>
  <div class="container">
    <div class="columns has-reverse-row-order-mobile is-centered is-vcentered">
      <div class="column content is-medium is-centered">
        <h3 class="has-text-shadow is-centered">{{ $t('home.experiences.title') }}</h3>

        <div class="timeline is-centered is-vcentered">
          <!--          <header class="timeline-header">-->
          <!--            <span class="tag is-medium is-light">Start</span>-->
          <!--          </header>-->
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

          <!--          <div class="timeline-item">-->
          <!--            <div class="timeline-marker is-image is-32x32">-->
          <!--              <img src="http://bulma.io/images/placeholders/32x32.png">-->
          <!--            </div>-->
          <!--            <div class="timeline-content">-->
          <!--              <p class="heading">February 2016</p>-->
          <!--              <p>Timeline content - Can include any HTML element</p>-->
          <!--            </div>-->
          <!--          </div>-->

          <!--          <header class="timeline-header">-->
          <!--            <span class="tag is-light">2017</span>-->
          <!--          </header>-->
          <!--          <div class="timeline-item">-->
          <!--            <div class="timeline-marker is-icon">-->
          <!--              <i class="fa fa-flag"></i>-->
          <!--            </div>-->
          <!--            <div class="timeline-content">-->
          <!--              <p class="heading">March 2017</p>-->
          <!--              <p>Timeline content - Can include any HTML element</p>-->
          <!--            </div>-->
          <!--          </div>-->
          <!--          <div class="timeline-header">-->
          <!--            <span class="tag is-medium is-light">End</span>-->
          <!--          </div>-->
          <!--        </div>-->

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
