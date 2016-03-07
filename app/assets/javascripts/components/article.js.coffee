@Article = React.createClass
  render: ->
    React.DOM.li
      className: 'article-li'
      React.DOM.a
        className: 'NYT-link'
        href: @props.article.web_url
        @props.article.headline.main
      React.DOM.p
        className: 'pub-date'
        @props.article.pub_date.substr(5, 2) + '/' + @props.article.pub_date.substr(8, 2) + '/' + @props.article.pub_date.substr(0, 4)
      React.DOM.p
        className: 'lead'
        @props.article.snippet
