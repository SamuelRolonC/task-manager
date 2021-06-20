<template>
    <form id="createTask" class="task-bar">
        <div class="input-container input-container-description">
            <label for="inputTaskDescription">Description</label>
            <input id="inputTaskDescription" class="input-task" type="text" name="description" />
        </div>
        <button id="btnTaskTag" class="control-color" type="button" title="Tags">
            <font-awesome-icon icon="tags" />
        </button>
        <div class="input-container input-container-time">
            <label for="inputTaskStart">Start time</label>
            <!-- <input id="inputTaskStart" class="input-task" type="number" name="start" /> -->
            <datetime type="datetime" v-model="datetime"></datetime>
        </div>
        <div class="input-container input-container-time">
            <label for="inputTaskEnd">End time</label>
            <input id="inputTaskEnd" class="input-task" type="number" name="end" />
        </div>
        <button id="btnTaskCreate" class="round-button medium-button control-color" type="submit" title="Create">
            <font-awesome-icon icon="play" />
        </button>
        <div class="create-task-modes">
            <button id="btnTaskTimerMode" class="round-button small-button control-color" type="button" title="Timer mode">
                <i class="fas fa-stopwatch"></i>
                <font-awesome-icon icon="stopwatch" />
            </button>
            <button id="btnTaskManualMode" class="round-button small-button control-color" type="button" title="Manual mode">
                <i class="fas fa-list"></i>
                <font-awesome-icon icon="list" />
            </button>
        </div>
    </form>
</template>

<script>
export default {
    name: "CreateTaskBar",
    props: {

    },
}
</script>

<style scoped>
.task-bar {
    display: flex;
    align-items: center;
    width: 100%;
    height: auto;
    background-color: #fff;
    text-align: initial;
}

#inputTaskDescription {

}

#btnTaskTag {
    height: auto;
    width: auto;
    padding: 0.2em;
    border: 0;
    margin: 0.2em;
}

.input-task {
    height: auto;
    width: 100%;
    padding: 0.5em;
}

.create-task-modes {
    display: block;
    margin: 0 0.2em;
    padding: 0;
    width: 1.5em;
    height: auto;
}

#btnTaskCreate {
    margin: 0.2em;
}

.input-container {
    margin: .2em;
}

.input-container input {
    box-sizing: border-box
} 

.input-container-description {
    width: 100%;
}

.input-container-time {
    width: 100px;
}
</style>