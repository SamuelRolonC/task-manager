<template>
    <nav class="view-nav grid-container">
        <div class="view-main-object">
            <div class="objective-description">
                <label>{{ objectiveLabel }}</label>
                <h1>{{ objective.description }}</h1>
            </div>
            <div class="objective-date">
                <label>{{ objectiveDateLabel }}</label>
                <h2>{{ objective.definitionDate }}</h2>
            </div>
        </div>
        <div>

        </div>

        <div class="view-nav-left-side">
            <div class="view-parent-object">
                <label>{{ projectLabel }}</label>
                <h2>{{ project.description }}</h2>
            </div>

            <div class="view-navigation-buttons">
                <form :action="homeRelativeUrl" method="GET">
                    <button id="btnHome" class="round-button big-button control-color" type="submit" :title="buttonHomeTitle">
                        <!-- <i class="fas fa-home"></i> -->
                        <font-awesome-icon icon="home" />
                    </button>
                </form>

                <form :action="backRelativeUrl" method="GET">
                    <button id="btnBack" class="round-button big-button control-color" type="submit" :title="buttonBackTitle">
                        <!-- <i class="fas fa-arrow-left"></i> -->
                        <font-awesome-icon icon="arrow-left" />
                    </button>
                </form>
            </div>
        </div>
    </nav>
</template>

<script>
export default {
    name: "NavigationBar",
    props: {

    },

    data() {
        return {
            viewName: "Planned tasks",
            buttonHomeTitle: "Home",
            buttonBackTitle: "Back",
            objectiveLabel: "Objective",
            objectiveDateLabel: "DefinitionDate",
            projectLabel: "Project",
            objective: {
                description: "Objetive #1",
                definitionDate: "15/06/2021"
            },
            project: {
                description: "Project #1",
            },

            // URLs
            rootUrl: "/app-source-code/",
            homeRelativeUrl: "index.html",
            backRelativeUrl: "index.html"
        }
    }
}
</script>

<style scoped>
.view-nav h1 {
    width: fit-content;
}

.view-nav {
    display: flex;
    justify-content: space-between;
}

.view-nav .view-navigation-buttons {
    width: 50px;
}

.view-navigation-buttons .big-button {
    margin: 5px;
}

.view-nav .objective-description {
    display: inline-block;
    margin: 10px;
}

.view-nav .objective-date {
    display: inline-block;
    margin: 10px;
}

.view-nav .project-description {
    display: inline-block;
}

.grid-container {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-template-rows: 1fr;
    gap: 0px 0px;
    grid-template-areas: ". . .";
}

.view-nav h1 {
    width: fit-content;
}

.view-nav p {
    width: fit-content;
}

.view-nav .view-main-object {
    width: auto;
}

.view-nav .view-parent-object {
    width: auto;
    display: inline-block;
    margin: 10px;
}

.view-nav .view-navigation-buttons {
    width: auto;
    display: inline-block;
}

.view-nav .view-nav-left-side {
    display: flex;
    justify-content: flex-end;
}
</style>