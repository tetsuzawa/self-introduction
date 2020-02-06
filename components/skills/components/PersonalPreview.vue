<template>
    <figure class="image">
        <img class="personal-preview" :src="image" alt="Phone with personal features preview">
    </figure>
</template>

<style lang="scss">
    .personal-preview {
    }
</style>


<script>
    import image from './customisable.png';

    export default {
        name: 'personal-preview',
        data() {
            return {
                image: image
            }
        }
    }
</script>
