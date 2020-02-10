<template>
  <div>
    <my-navbar/>
    <nuxt/>
    <my-footer/>
  </div>
</template>

<script>
    import NuxtBuildIndicator from "../.nuxt/components/nuxt-build-indicator";
    import MyNavbar from "../components/MyNavbar";
    import MyFooter from "../components/MyFooter";

    export default {
        components: {MyFooter, MyNavbar, NuxtBuildIndicator},
        data() {
            return {
                items: [
                    {
                        title: 'Home',
                        icon: 'home',
                        to: {name: 'index'}
                    },
                    {
                        title: 'Inspire',
                        icon: 'lightbulb',
                        to: {name: 'inspire'}
                    }
                ]
            }
        }
    }
</script>


<style>
  html {
    font-family: 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI',
    Roboto, 'Helvetica Neue', Arial, sans-serif;
    font-size: 16px;
    word-spacing: 1px;
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%;
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
    box-sizing: border-box;
  }

  *,
  *:before,
  *:after {
    box-sizing: border-box;
    margin: 0;
  }

</style>
