@ArticlesGenerator = React.createClass
  getInitialState: ->
    year: ''
    month: ''
    day: ''

  valid: ->
    @state.year && @state.month && @state.day

  handleChange: (event) ->
    name = event.target.name
    @setState "#{ name }": event.target.value

  handleSubmit: (event) ->
    event.preventDefault()
    @props.getArticles(event.target.year.value + event.target.month.value + event.target.day.value)
    console.log(event.target.year.value + event.target.month.value + event.target.day.value)

  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'YYYY'
          name: 'year'
          value: @state.year
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'MM'
          name: 'month'
          value: @state.month
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'DD'
          name: 'day'
          value: @state.day
          onChange: @handleChange
      React.DOM.button
        type: 'submit'
        className: 'btn btn-primary'
        disabled: !@valid()
        'Find Articles'