<template>
  <div id="app">
    <create-task-bar />
    <navigation-bar />
    <task-table style="margin: auto"/>
  </div>
</template>

<script>
import CreateTaskBar from "./components/CreateTaskBar.vue";
import NavigationBar from './components/NavigationBar.vue';
import TaskTable from "./components/TaskTable.vue";

export default {
  name: "App",
  components: {
    CreateTaskBar,
    NavigationBar,
    TaskTable,
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #2c3e50;
  margin-top: 60px;
}

body {
    margin: 0;
    padding: 0;
    font-family: 'Roboto', sans-serif;
}

.primary-color {
    background: #2b2a2a;
}

.secondary-color {
    background: #fff;
}

.control-color {
    color: white;
    background-color: orange;
}

.round-button {
    width: 20px;
    height: 20px;
    border-radius: 50%;
    border: 0;
}

.round-button i {
    display: flex;
    justify-content: center;
    align-items: center;
}

.big-button {
    width: 40px;
    height: 40px;
    font-size: 20px;
}

.medium-button {
    width: 2em;
    height: 2em;
    flex-shrink: 0;
}

.small-button {
    width: 1.3em;
    height: 1.3em;
    padding: 0;
    font-size: 0.8em;
}
</style>
