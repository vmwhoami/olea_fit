<template>
  <svg
    xmlns="http://www.w3.org/2000/svg"
    :id="id"
    :width="width"
    :height="height"
    :viewBox="viewBox"
    :aria-labelledby="iconName"
    :class="cssClass"
    role="presentation"
  >
    <g :fill="iconColor" :transform="transformInstructions">
      <slot />
    </g>
  </svg>
</template>

<script>
export default {
  name: "IconBase",
  props: {
    id: {
      type: String,
      default: null,
    },
    iconName: {
      type: String,
      default: "box",
    },
    width: {
      type: [Number, String],
      default: 25,
    },
    height: {
      type: [Number, String],
      default: 25,
    },
    iconColor: {
      type: String,
      default: "currentColor",
    },
    viewBox: {
      type: String,
      default: "0 0 20 20",
    },
    cssClass: {
      type: String,
      default: null,
    },
    transformInstructions: {
      type: String,
      default: "scale(1)",
    },
  },
};
</script>
