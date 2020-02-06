<template>
  <section class="section">
    <div class="container">
      <!--      <div class="button" v-on:click="loadPosts">load posts</div>-->

      <div class="columns is-height-100 is-multiline">
        <!--      <div class="columns is-multiline">-->
        <div class="column is-one-quarter" v-for="post in postlist">
          <div class="card">
            <a :href="post.url">
              <div class="card-content">
                <p class="title is-5">
                  {{ post.title }}
                </p>
              </div>
              <footer class="card-footer has-text-danger">
                <p class="card-footer-item">
                  <span class="icon">
                    <i class="mdi mdi-heart"></i>
                  </span>
                  {{ post.likes_count }}
                </p>
              </footer>
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
                type: Object,
                default: null,
                required: false,
            }
        },
    }
</script>

<style scoped lang="scss">

</style>
