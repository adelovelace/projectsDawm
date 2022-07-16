//import {GroupedBarChart} from "@d3/grouped-bar-chart"

let loadData = () => {

    fetch("https://api.openbrewerydb.org/breweries")
        .then(response => response.json())
        .then(data => {

            let plantilla
            let counter = 0
            let topNum = 0
            let top

            let breweries = data
            let breweries_types = new Set()
            let breweries_city = new Set()
            let breweries_state = new Set()
            let num_breweries_types = {}
            let num_breweries_state = {}
            let total_breweries = 0
            
            //total de cervecerias
            breweries.forEach(element => {

                breweries_types.add(element["brewery_type"])
                breweries_city.add(element["city"])
                breweries_state.add(element["state"])

                total_breweries++

            });

            let t_Breweries = document.getElementById("total-breweries")

            plantilla = `<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Breweries</div>
        <div class="h5 mb-0 font-weight-bold text-gray-800">${total_breweries}</div>`

            t_Breweries.innerHTML = plantilla

            //estado con más cervecerias
            breweries_state.forEach(state => {

                breweries.forEach(element => {

                    if (state == element["state"]) {
                        counter += 1
                    }
                })

                num_breweries_state[state] = counter

                if (topNum < num_breweries_state[state]) {
                    topNum = num_breweries_state[state]
                    top = state
                }

                counter = 0

            });

            let s_Breweries = document.getElementById("state-breweries")

            plantilla = `<div class="text-xs font-weight-bold text-success text-uppercase mb-1">
            Estado con más cevecerías</div>
            <div class="h5 mb-0 font-weight-bold text-gray-800">${top}: ${topNum}</div>`

            s_Breweries.innerHTML = plantilla

            counter = 0
            topNum = 0
            top = ""

            plantilla = ""

            //ciudad con más cervecerias
            breweries_city.forEach(city => {
                breweries.forEach(element => {

                    if (city == element["city"]) {
                        counter += 1
                    }
                })

                num_breweries_types[city] = counter

                if (topNum < num_breweries_types[city]) {
                    topNum = num_breweries_types[city]
                    top = city
                }

                counter = 0

            });

            let c_Breweries = document.getElementById("city-breweries")

            plantilla = `<div class="text-xs font-weight-bold text-success text-uppercase mb-1">
            Ciudad con más cevecerías</div>
            <div class="h5 mb-0 font-weight-bold text-gray-800">${top}: ${topNum}</div>`

            c_Breweries.innerHTML = plantilla

            counter = 0

            plantilla = ""

            document.querySelectorAll("h6.m-0.font-weight-bold.text-primary")[0].textContent = "Breweries by State"
            let divBar = document.querySelectorAll("div.chart-area")[0]
            // let divBar = document.querySelectorAll("div.chart-pie.pt-4.pb-2")[0]
            let svg_mark = `<svg width="600" height="500"></svg>`
            divBar.innerHTML = svg_mark


            let arreglo = []

            for (let city in num_breweries_state) {
                arreglo.push({ "state": city, "qty": num_breweries_state[city] })
            }

            var svg = d3.select("svg"),
                margin = 300,
                width = svg.attr("width") - margin,
                height = svg.attr("height") - margin;


            var xScale = d3.scaleBand().range([0, 700]).padding(0.4),
                yScale = d3.scaleLinear().range([height, 0]);

            var g = svg.append("g")
                .attr("transform", "translate(" + 100 + "," + 100 + ")");

            xScale.domain(arreglo.map(function (d) { return d.state; }));
            yScale.domain([0, d3.max(arreglo, function (d) { return d.qty; })]);

            g.append("g")
                .attr("transform", "translate(0," + height + ")")
                .call(d3.axisBottom(xScale));

            g.append("g")
                .call(d3.axisLeft(yScale).tickFormat(function (d) {
                    return d;
                }).ticks(10))
                .append("text")
                .attr("y", 6)
                .attr("dy", "0.71em")
                .attr("text-anchor", "end")
                .text("value");


            g.selectAll(".bar")
            .data(arreglo)
            .enter().append("rect")
            .attr("class", "bar")
            .attr("x", function(p) { return xScale(p.state); })
            .attr("y", function(d) { return yScale(d.qty); })
            .attr("width", xScale.bandwidth())
            .attr("height", function(d) { return height - yScale(d.qty); });


          

            //número de cervecerias por tipo
            document.querySelectorAll('div > h6')[8].textContent = "Breweries per type"

            breweries_types.forEach(type => {
                breweries.forEach(element => {

                    if (type == element["brewery_type"]) {
                        console.log()
                        counter++
                    }
                })

                num_breweries_types[type] = counter

                plantilla += `${type} <span
        class="float-right">${num_breweries_types[type]}</span></h4 >
            <div class="progress mb-4">
                <div class="progress-bar bg-danger" role="progressbar" style="width: ${(counter * 100) / 20}%"
                    aria-valuenow="${(counter * 100) / 20}" aria-valuemin="0" aria-valuemax="100"></div>
            </div>`

                counter = 0

            });

            document.querySelectorAll("div.sidebar-brand-text.mx-3")[0].textContent = "Breweries"
            document.getElementById("numBreweriesPerType").innerHTML = plantilla

            document.querySelectorAll("div.card.border-left-warning.shadow.h-100.py-2")[0].setAttribute('hidden','true')
            document.querySelectorAll("div.col-xl-4.col-lg-5")[0].setAttribute('hidden','true')
            document.querySelectorAll("div.col-lg-6")[1].setAttribute('hidden','true')
            document.querySelectorAll("div.col-lg-6")[2].setAttribute('hidden','true')
            document.querySelectorAll("div.col-lg-6")[3].setAttribute('hidden','true')
            document.querySelectorAll("div.col-lg-6")[4].setAttribute('hidden','true')
            document.querySelectorAll("div.col-lg-6")[5].setAttribute('hidden','true')
            document.querySelectorAll("div.col-lg-6")[6].setAttribute('hidden','true')
            document.querySelectorAll("div.col-lg-6")[7].setAttribute('hidden','true')
            document.querySelectorAll("div.col-lg-6")[8].setAttribute('hidden','true')
            document.querySelectorAll("div.col-lg-6")[9].setAttribute('hidden','true')

            

            document.querySelectorAll("li.nav-item")[1].setAttribute('hidden','true')
            document.querySelectorAll("li.nav-item")[2].setAttribute('hidden','true')
            document.querySelectorAll("li.nav-item")[3].setAttribute('hidden','true')
            document.querySelectorAll("li.nav-item")[4].setAttribute('hidden','true')
            document.querySelectorAll("li.nav-item")[5].setAttribute('hidden','true')

            document.querySelectorAll("div.sidebar-heading")[0].setAttribute('hidden','true')
            document.querySelectorAll("div.sidebar-heading")[1].setAttribute('hidden','true')
            document.querySelectorAll("button.rounded-circle.border-0")[0].setAttribute('hidden','true')

            
            document.querySelector("div.sidebar-card.d-none.d-lg-flex")[0].setAttribute('hidden','true')
            console.log( )


            

        }).catch(console.error);



}










window.addEventListener('DOMContentLoaded', (event) => {
    loadData()
});
