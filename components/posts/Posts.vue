<template>
  <section class="section">
    <div class="container">
      <div class="columns is-height-100 is-multiline">
        <!--      <div class="columns is-multiline">-->
        <div class="column is-one-quarter" v-for="result in results">
          <div class="card">
            <a :href="result.url">
              <div class="card-content">
                <p class="title is-5">
                  {{ result.title }}
                </p>
              </div>
              <footer class="card-footer has-text-danger">
                <p class="card-footer-item">
                  <span class="icon">
                    <i class="mdi mdi-heart"></i>
                  </span>
                  {{ result.likes_count }}
                </p>
              </footer>
            </a>
          </div>
          {{ results }}
        </div>
      </div>
    </div>
  </section>

</template>

<script>
    export default {
        name: "posts",
        data() {
            return {
                results: [
                    //     // {
                    //     //     "likes_count": 144,
                    //     //     "title": "なぜGoを研究で使うのか",
                    //     //     "updated_at": "2019-12-19T17:09:55+09:00",
                    //     //     "url": "https://qiita.com/tetsuzawa/items/d279da49dca3d95f05b6"
                    //     // },
                ]
            }
        },
        // async asyncData({$axios}) {
        //     const baseUrl = 'https://qiita.com/api/v2/users/tetsuzawa/items';
        //     // const getUrl = encodeURI(baseUrl);
        //     // const response = await app.$axios.$get(getUrl);
        //     const response = await $axios.$get(baseUrl);
        //     // const response = [{title: "aaaiiivaecnaoe"}, {title: "aaaiiivaecnaoe"}];
        //     return {
        //         results: response
        //     }
        // }
        asyncData({$axios}) {
            const baseUrl = 'https://qiita.com/api/v2/users/tetsuzawa/items';
            $axios.$get(baseUrl)
                .then(response => {
                    this.results = response
                })
        }
    }
</script>

<style scoped lang="scss">

</style>
