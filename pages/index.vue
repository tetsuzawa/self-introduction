<template>
  <section class="section">

    <profile-hero/>
    <about/>
    <skills/>
    <experiences/>
    <posts :postlist="postlist"/>
    <contact/>

  </section>
</template>

<script>
    import ProfileHero from "../components/profile-hero/ProfileHero";
    import About from "../components/about/About";
    import Skills from "../components/skills/Skills";
    import Experiences from "../components/experiences/Experiences";
    import Posts from "../components/posts/Posts";
    import Contact from "../components/contact/Contact";

    export default {
        name: 'HomePage',
        components: {
            ProfileHero,
            About,
            Skills,
            Experiences,
            Posts,
            Contact
        },

        // props for posts
        async asyncData({$axios}) {
            const baseUrl = 'https://qiita.com/api/v2/users/tetsuzawa/items';
            const getUrl = encodeURI(baseUrl);
            const response = await $axios.$get(getUrl);
            return {
                postlist: response,
            }
        }
    }
</script>
