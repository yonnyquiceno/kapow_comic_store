function search(query) {
    if (event.keyCode == 13) {
        q = query.value
        // window.location = "http://localhost:3000/comics?q=".concat(q.toString()); //development
        window.location = "https://kapow-comic-store.herokuapp.com/comics?q=".concat(q.toString()); //production
    }
}

$(document).ready(function() {
    $("#search-field-container").hide()
    $(".show-search-field").click(function() {
        $("#search-field-container").show("slow")
    });
});
