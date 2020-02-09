<template>
  <div class="section" id="contact">
    <div class="container">
      <h3 class="has-text-shadow has-text-centered title">{{ $t('home.contact.title') }}</h3>
      <div class="columns has-reverse-row-order-mobile is-centered">
        <div class="column content is-centered is-vcentered has-text-centered">
          <button class="button is-rounded is-outlined" onclick="location.href='https://github.com/tetsuzawa'">
            <span class="icon github-icon">
              <i class="fab fa-github"></i>
            </span>
            <span>
              GitHub
            </span>
          </button>
          <button class="button is-rounded is-outlined" onclick="location.href='https://twitter.com/tetsuzawa_el'">
            <span class="icon twitter-icon">
              <i class="fab fa-twitter"></i>
            </span>
            <span>
              Twitter
            </span>
          </button>
          <button class="button is-rounded is-outlined"
                  onclick="location.href='https://www.linkedin.com/in/tetsu-takizawa'">
            <span class="icon linkedin-icon">
              <i class="fab fa-linkedin-in"></i>
            </span>
            <span>
              Linkedin
            </span>
          </button>
          <button class="button is-rounded is-outlined"
                  onclick="location.href='https://www.wantedly.com/users/92008116'">
            <span class="icon wantedly-icon">
              W
            </span>
            <span>
              Wantedly
            </span>
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
    export default {
        name: "contact"
    }
</script>

<style scoped lang="scss">
  .github-icon {
    color: #24292E;
  }

  .twitter-icon {
    color: #1BA1F2;
  }

  .linkedin-icon {
    color: #0073B1;
  }

  .wantedly-icon {
    font-family: "arial black";
    color: #00A4BB;
  }
</style>
