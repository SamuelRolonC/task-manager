// import { Datetime } from 'vue-datetime';

new Vue({
    el: "#app",
    // components: {
    //     Datetime
    // },
    data () {
        return {
            title: "Task Manager",
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
})