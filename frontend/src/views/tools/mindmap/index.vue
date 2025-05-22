<template>
  <div id="mindMapContainer"></div>
</template>

<script setup lang="ts">
import { onMounted } from "vue";
import MindMap from "simple-mind-map";

// 默认配置项
const defaultOptions = {
  viewData: null,
  readonly: false,
  layout: "logicalStructure",
  fishboneDeg: 45,
  theme: "default",
  themeConfig: {},
  scaleRatio: 1,
  translateRatio: 1,
  minZoomRatio: 0.5,
  maxZoomRatio: 3,
  customResizeBtnInnerHTML: "",
};

onMounted(() => {
  const container = document.getElementById("mindMapContainer");
  if (container) {
    const mindMap = new MindMap({
      ...defaultOptions,
      el: container,
      data: {
        data: {
          text: "根节点",
        },
        children: [],
      },
    });
  } else {
    console.error("容器未找到");
  }
});
</script>
<style scoped>
#mindMapContainer {
  width: 100%;
  height: 100vh;
}
</style>