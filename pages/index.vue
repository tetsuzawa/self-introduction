<template>
  <section class="section">

    <profile-hero/>
    <about/>
    <skills/>
    <experiences/>
    <posts/>

  </section>
</template>

<script>
    import About from "../components/about/About";
    import Skills from "../components/skills/Skills";
    import Experiences from "../components/experiences/Experiences";
    import Posts from "../components/posts/Posts";

    export default {
        name: 'HomePage',

        components: {
            ProfileHero,
            About,
            Skills,
            Experiences,
            Posts
        }
    }
</script>
