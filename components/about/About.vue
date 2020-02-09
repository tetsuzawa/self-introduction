<template>
  <section class="section">
    <div class="container">
      <div class="columns is-height-100">
        <div class="column content">
          <h3 class="is-size-3">{{ $t('home.about.title') }}</h3>

          <table class="table">
            <tr class="about-row">
              <td>
                <div class="about-item">
                    <span class="icon name-icon">
                      <i class="far fa-address-card"></i>
                    </span>
                  {{ $t('home.about.name_item') }}
                </div>
              </td>
              <td>
                <div class="about-content">
                  {{ $t('home.about.name.primary') }} ({{ $t('home.about.name.secondary') }})
                </div>
              </td>
            </tr>

            <tr class="about-row">
              <td>
                <div class="about-item">
                    <span class="icon education-icon">
                      <i class="fas fa-university"></i>
                    </span>
                  {{ $t('home.about.education_item') }}
                </div>
              </td>
              <td>
                <div class="about-content">{{ $t('home.about.education') }}</div>
              </td>
            </tr>

            <tr class="about-row">
              <td>
                <div class="about-item">
                    <span class="icon certification-icon">
                      <i class="fas fa-star"></i>
                    </span>
                  {{ $t('home.about.certification_name') }}
                </div>
              </td>
              <td>
                <div class="about-content">{{ $t('home.about.toeic') }}</div>
                <div class="about-content">{{ $t('home.about.ielts') }}</div>
                <div class="about-content">{{ $t('home.about.electric_work') }}</div>
              </td>
            </tr>

            <tr class="about-row">
              <td>
                <div class="about-item">
                    <span class="icon github-icon">
                      <i class="fab fa-github"></i>
                    </span>
                  GitHub
                </div>
              </td>
              <td>
                <div class="about-content">
                  <a href="https://github.com/tetsuzawa">tetsuzawa</a>
                </div>
              </td>
            </tr>


            <tr class="about-row">
              <td>
                <div class="about-item">
                    <span class="icon twitter-icon">
                      <i class="fab fa-twitter"></i>
                    </span>
                  Twitter
                </div>
              </td>
              <td>
                <div class="about-content">
                  <a href="https://twitter.com/tetsuzawa_el">tetsuzawa_el</a>
                </div>
              </td>
            </tr>

            <tr class="about-row">
              <td>
                <div class="about-item">
                    <span class="icon linkedin-icon">
                      <i class="fab fa-linkedin-in"></i>
                    </span>
                  LinkedIn
                </div>
              </td>
              <td>
                <div class="about-content">
                  <a href="https://www.linkedin.com/in/tetsu-takizawa">tetsu-takizawa</a>
                </div>
              </td>
            </tr>

            <tr class="about-row">
              <td>
                <div class="about-item">
                    <span class="icon qiita-icon">
                      Q
                    </span>
                  Qiita
                </div>
              </td>
              <td>
                <div class="about-content">
                  <a href="https://qiita.com/tetsuzawa">tetsuzawa</a>
                </div>
              </td>
            </tr>

            <tr class="about-row">
              <td>
                <div class="about-item">
                    <span class="icon wantedly-icon">
                      W
                    </span>
                  Wantedly
                </div>
              </td>
              <td>
                <div class="about-content">
                  <a href="https://www.wantedly.com/users/92008116">瀧澤 哲</a>
                </div>
              </td>
            </tr>
          </table>

        </div>
        <div class="column has-padding-top-2x-mobile has-text-centered">
          <div class="columns is-centered is-vcentered is-height-100 is-mobile">
            <div class="column is-narrow">
              <span class="icon">
                <i class="far fa-address-card section-icon"></i>
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
    export default {
        name: 'about'
    }
</script>

<style scoped lang="scss">

  .about-item {
    font-size: 1.0rem;
    display: inline-block;
  }

  .about-content{
    font-size: 1.1rem;
  }

  .about-row {
    margin: 0 10px;
    padding: 0 10px;
  }

  .section-icon {
    font-size: 200px;
  }

  .name-icon {
    color: #24292E;
  }

  .education-icon {
    color: #24292E;
  }

  .certification-icon {
    color: #eccd00;
  }

  .github-icon {
    color: #24292E;
  }

  .twitter-icon {
    color: #1BA1F2;
  }

  .linkedin-icon {
    color: #0073B1;
  }

  .qiita-icon {
    font-family: "arial black", sans-serif;
    color: #55C400;
  }

  .wantedly-icon {
    font-family: "arial black",sans-serif;
    color: #00A4BB;
  }
</style>

