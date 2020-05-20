# Q1) Why re-write the exisiting angular app?

1. The current angular app was developed to discover the psychiatrists needs. The system could not have been pre-architected to deliver the discovered features.

2. The current angular app is in 1.x and LTS ends in July 2021. Also good libraries are not being developed on Angular 1.x

# Q2) What new features are built into the new architecture?

## A. User experience benefits

1. When page is reloaded and there is no/slow connection to DB server the page should load from localstorage immediately.

2. When a component is already on the doctor browser and the doctor gives the commanbd "rec" then the recommendations show immediately from localcache and api is fired in the back. If the api returns new data the view is updated. (lazy-read)

3. When doctor adds a rec, the view gets updated. If server update fails then the view is reverted. (lazy-write)

4. When doctor is offline and open a patient file they see the page. #not-working

5. In each table column has priorities. So when less space is available low priority columns get hidden https://phppot.com/css/automatic-column-hiding-using-css-in-responsive-table

6. When there is space two components can come beside each other. https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_two_columns_responsive

## B. Developer benefits

1. On server side interaction with the DB should happen through a ORM like [sequelize](https://sequelize.org/). 

    1A. So standard queries are already written.

    1B. DB versioning and migrations can happen. [https://github.com/savantcare/healthbrain/blob/master/node-server/models/recommendation.model.js]

2. Maintian state on the client. When recommendation card state changes the rec panel changes its view automatically.
In the current angular app the recommendation panel was listening on socket to update its view.

3. No HTML is generated on server. All view is inside the .vue component. This view works on json returned by the server api. This allows different UIs to be written.

# Q3) Why was vue chosen over angular latest version?
1. More github stars. Take this as a voting from worldwide developers.

2. Simpler to understand

3. Useful libraries
    1. vuex
    2. https://github.com/vue-generators/vue-form-generator
    3. https://github.com/robinvdvleuten/vuex-persistedstate

4. Simple concepts to do common UI patterns
    Doing multiple adds in same form https://www.youtube.com/watch?v=Efr7SUrBUQw


# Q4) Should a table library be used or developed internally?


![card-table-features](./docs/analyzing-features-of-card-table.png)

Features needed:

1. KB to go up and down the data rows
2. Multi select
3. Actions for each data row invoked using keyboard single key.
4. When multiple rows are selected then invoke "Multi select actions"
5. Tabbed tables -> First tab shows table 1 and 2nd tab shows table 2. Used at "Your recommendations" "Others recommendations"

For the tabs each tab can be a table component. And the tabs are displayed using Vue’s <component> element with the is special attribute:
https://vuejs.org/v2/guide/components.html#Dynamic-Components

Some good table libraries are:

https://github.com/huangshuwei/vue-easytable

https://github.com/ratiw/vuetable-2

https://github.com/xaksis/vue-good-table


# Q5) Why was expressJS chosen over laravel?

Laravel: Used by 660 and Stars 59K

express nodejs: used by 6.6M and Stars 49K

Sequlize nodejs: Used by 190K and Stars 22K

# Q6) Why each component should be in its own repo?

When recommendation a new version is released Sanjay wants to do git pull only for recommendation repo on the prod server.

## Q6.1) Why not try branching concept?
Sometimes we need to invite external developers to work on a component and we do not want to give them access to the git repo containing other components

## Q6.2) Why is each component not a seperate npm package?

The goal is for recommendation-panel and recommendation-card to have the same vuex store. So when the state changes in recommendation-panel the view of recommendation-card is automatically updated.

[The code till 4th May](https://github.com/vikaskedia/healthbrain) implemented recommendation-panel and recommendation-card as two different npm packages. Different npm packages cannot share the same vuex store.

Hence recommendation-panel and recommendation-card cannot be two seperate npm packages they have to be components of the same vue app.

# Q7) How to reduce boilerplate code?

Have three types of components? #Todo

1. UI components: Reusable across the whole app. They communicate just by using props and events, not holding any application logic.

2. Layout components: App will have only 1 of these. Like header and footer.

3. Domain components: 

Ref: https://vueschool.io/articles/vuejs-tutorials/structuring-vue-components/


# Q8) How are the components structured?

## Option1:

<RecommendationCard>

<CardHeader Prop{Title=Recommendation}>
</CardHeader>

<DataTable Prop{row1:(a,b),row2:(c,d)}>
</DataTable>

</RecommendationCard>

## Option2:

<GenericCard Prop{Title=Recommendation, row1:(a,b),row2:(c,d)} >

</GenericCard>

Why is Option 1 better:

Theory: RecommendationCard is using libraries and in option 2 RecommendationCard is using a framework. Ref: https://www.programcreek.com/2011/09/what-is-the-difference-between-a-java-library-and-a-framework/

Practical:
1. Under option 1 I can decide not to use the cardHeader sub component and write my own card header in some cases like "Date of birth component"


# Q9) How to do theming for the app while each component maintains its own scoped local context style?

https://vuedose.tips/tips/theming-using-custom-properties-in-vuejs-components/

https://medium.com/maestral-solutions/coloring-your-app-implementing-live-theming-with-vue-js-and-styled-components-29e428900394

https://bootstrap-vue.org/docs/reference/theming

# Q10) How is the state of patient on a historical date generated?

## Architecture 1

Suppose doctor wants the state of the paitent on 15th Jan 2020:

The query is:
select * from recommendationsTable where patientID=1 and createdBy < "15th Jan 2020" and ( discontinuedDate > "15th Jan 2020" or discontinuedDate == NULL)
This returns JSON A


Suppose doctor wants the state of the paitent on 10th Mar 2020:
The query is:
select * from recommendationsTable where patientID=1 and createdBy < "10th Mar 2020" and ( discontinuedDate > "10th Mar 2020" or discontinuedDate == NULL)
This returns JSON B

Suppose the doctor wants to know the state of the patient on 9th March 2020:
This requires the same API as above.

Dis-Advantages of architecture 1:
1. Too many sql queries. But the data center is big and there are read only copies of MYSQL running from RAM ready to serve these queries. It is better to offload the complexity to the hardware instead of software. Wisdom says it is better to have expensive hardware and simple software.

## Architecture 2

The first query is:
select * from recommendationsTable where patientID=1;
This returns JSON C

Now all queries about the state of recommendation are made on the client side.

Advantages of architecture 2:
1. Less number of queries to server.

Dis-Advantages of architecture 2:
1. How to run sql query over a JSON on the browser client side.