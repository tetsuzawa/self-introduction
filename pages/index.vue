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
    import ProfileCard from "../components/ProfileCard";
    import About from "../components/about/About";
    import Skills from "../components/skills/Skills";
    import Experiences from "../components/experiences/Experiences";
    import Posts from "../components/posts/Posts";

    export default {
        name: 'HomePage',

        components: {
            Personal,
            ProfileCard,
            Card,
            SplashHero,
            Privacy,

            ProfileHero,
            About,
            Skills,
            Experiences,
            Posts
        }
    }
</script>
