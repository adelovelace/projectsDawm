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

                num_breweries_types[state] = counter

                if(topNum < num_breweries_types[state] ){
                    topNum = num_breweries_types[state]
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

            plantilla = ""

            //ciudad con más cervecerias
            breweries_ciudad.forEach(city => {
                breweries.forEach(element => {
                    
                    if (city == element["city"]) {
                        counter += 1
                    }
                })        

                num_breweries_types[city] = counter

                if(topNum < num_breweries_types[city] ){
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

            console.log(document.querySelectorAll("div.mt-4.text-center.small"))

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


                plantilla += `<h4 class="small font-weight-bold">${type}<span
                class="float-right">${num_breweries_types[type]}</span></h4>
                <div class="progress mb-4">
                    <div class="progress-bar bg-danger" role="progressbar" style="width: ${(counter * 100) / 20}%"
                aria-valuenow="${(counter * 100) / 20}" aria-valuemin="0" aria-valuemax="100"></div>
                </div>`

                counter = 0

            });

            document.getElementById("numBreweriesPerType").innerHTML = plantilla






        }).catch(console.error);



}










window.addEventListener('DOMContentLoaded', (event) => {
    loadData()
});
