<template>
  <section class="section">
    <div class="container">
      <div class="title content is-medium">
        <h3 class="has-text-shadow has-text-centered">{{ $t('home.posts.title') }}</h3>
      </div>
      <div class="columns is-multiline">
        <div class="column is-one-quarter" v-for="post in postlist">
          <div class="card post-card">
            <a :href="post.url">
              <div class="card-content">
                <div class="title is-5 post-card-title">
                  {{ post.title }}
                </div>
                <!--                <div class="columns is-multiline">-->
                <!--                  <div class="column is-2 has-text-danger">-->
                <!--                  <div class="column">-->
                <div class="">
                  <div class="tags">
                    <span class="tag is-light" v-for="tag in post.tags">{{ tag.name }}</span>
                  </div>
                </div>
                <div class="has-text-danger likes-count">
                    <span class="icon">
                      <i class="fas fa-heart"></i>
                    </span>
                  {{ post.likes_count }}
                  <!--                  {{ post.likes_count }}-->
                </div>
                <!--                </div>-->
              </div>
              <!--              <footer class="card-footer has-text-danger">-->
              <!--                <p class="card-footer-item">-->
              <!--                  <span class="icon">-->
              <!--                    <i class="fas fa-heart"></i>-->
              <!--                  </span>-->
              <!--                  {{ post.likes_count }}-->

              <!--                </p>-->
              <!--              </footer>-->
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

</template>

<script>
    export default {
        name: "posts",
        props: {
            postlist: {
                type: Array,
                default: null,
                required: false,
            }
        },
        methods: {}
    }
</script>

<style scoped lang="scss">
  .post-card {
    height: max(180px);
  }

  .likes-count {
    position: absolute;
    right: 16px;
    bottom: 10px;
  }


</style>
