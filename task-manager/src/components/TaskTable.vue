<template>
  <table>
    <thead>
      <tr class="bg-gray-100 border-b-2 border-gray-400">
        <th>Description</th>
        <th>Tags</th>
        <th>Horario</th>
        <th></th>
        <td class="hidden sm:block"></td>
      </tr>
    </thead>
    <tbody>
      <tr
        v-for="task in tasks"
        :key="task.id"
        class="border-b border-gray-200 hover:bg-gray-100 hover:bg-orange-100">
        <td>{{ task.description }}</td>
        <td>{{ task.tags }}</td>
        <td>{{ getTextStartEndDifference(task.start, task.end) }}</td>
        <td>
            <button>Detalles</button>
            <button>Options</button>
        </td>
        <td class="hidden sm:block"></td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
    name: 'TaskTable',

    props: {
        tasks: {
            type: Array,
            default: () => [ 
                {
                    description: "tarea",
                    tags: "tag1, tag2",
                    start: new Date("2021-06-19 15:00:00"),
                    end: new Date("2021-06-19 16:00:00")
                },
                {
                    description: "tarea2",
                    tags: "tag3, tag4",
                    start: new Date("2021-06-15 15:00:00"),
                    end: new Date("2021-06-16 9:00:00")
                }
            ]
        }
    },

    methods: {
        getTextStartEndDifference(start, end) {
            let text = ""
            , isSameDate = start.getDate() == end.getDate()
                && start.getMonth() == end.getMonth()
                && start.getFullYear() == end.getFullYear();

            text = text.concat(start.getDate(), "/", start.getMonth(), "/", start.getFullYear())
            text = text.concat(" ", this.getTwoDigits(start.getHours())
                , ":", this.getTwoDigits(start.getMinutes()), " - ");

            if (!isSameDate)
                text = text.concat(end.getDate(), "/", end.getMonth(), "/", end.getFullYear());

            text = text.concat(" ", this.getTwoDigits(end.getHours())
                , ":", this.getTwoDigits(end.getMinutes()));

            return text;
        },

        getTwoDigits(value) {
            let text = value.toString();
            if (value == 0) text = "0".concat(value);
            return text;
        }
    }
}
</script>

<style scoped>
.up::before {
  content: '👆';
}

.down::before {
  content: '👇';
}

td {
  padding: 20px 0px;
  font-size: 0.6rem;
  text-align: center;
}

th {
  padding: 5px;
  font-size: 0.6rem;
}

@media (min-width: 640px) {
  td,
  th {
    padding: 20px;
    font-size: 1rem;
  }

  th {
    padding: 12px;
  }
}
</style>
