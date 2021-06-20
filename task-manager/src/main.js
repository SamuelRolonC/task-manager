import Vue from "vue";
import App from "./App.vue";
import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { 
  faUserSecret, 
  faTags, 
  faPlay,
  faStopwatch,
  faList,
  faHome,
  faArrowLeft
} from '@fortawesome/free-solid-svg-icons'
import { Datetime } from 'vue-datetime'
import 'vue-datetime/dist/vue-datetime.css'
 
library.add(faUserSecret)
library.add(faTags)
library.add(faPlay)
library.add(faStopwatch)
library.add(faList)
library.add(faHome)
library.add(faArrowLeft)

Vue.config.productionTip = false;
Vue.component('font-awesome-icon', FontAwesomeIcon)
Vue.use(Datetime)


new Vue({
  render: (h) => h(App),
}).$mount("#app");
