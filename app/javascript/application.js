// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import '@hotwired/turbo-rails'
import "controllers"
import { Chart, registerables } from 'chart.js'

Chart.register(...registerables)

console.log('hello world');
document.addEventListener('turbo:load', () => {
    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: JSON.parse(ctx.canvas.dataset.labels),
      datasets: [{
        data: JSON.parse(ctx.canvas.dataset.data),
      }]
    },
    });
  })