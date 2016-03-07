@Articles = React.createClass
  getInitialState: ->
    articles: []
  generateArticles: (dateString)->
    $.ajax
      method: "GET"
      url: "/search"
      dataType: "JSON"
      data:
        date: dateString
      success: (response) =>
        @setState articles: response.response.docs, date: dateString
  render: ->
    React.DOM.div
      className: 'articles'
      React.DOM.h2
        className: 'header'
        'Get NYT headlines from:'
      React.createElement ArticlesGenerator, getArticles: @generateArticles
      React.DOM.ul null,
        for article in @state.articles
          React.createElement Article, key: article._id, article: article