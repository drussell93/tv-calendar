initialize_calendar = undefined

initialize_calendar = ->
  $('.calendar').each ->
    calendar = $(this)
    calendar.fullCalendar
      header:
        left: 'prev,next today, addShow'
        center: 'title'
        right: 'month,agendaWeek,agendaDay'
      selectable: true
      selectHelper: true
      editable: true
      eventLimit: true
      events: '/events.json'
      
      customButtons: addShow:
        text: 'Add Show'
        click: (event, jsEvent, view) ->
          window.location.href = '~/app/views/calendars/add.html.haml'
          return

      select: (start, end) ->
        $.getScript '/events/new', ->
          $('#event_date_range').val moment(start).format('MM/DD/YYYY HH:mm') + ' - ' + moment(end).format('MM/DD/YYYY HH:mm')
          date_range_picker()
          $('.start_hidden').val moment(start).format('YYYY-MM-DD HH:mm')
          $('.end_hidden').val moment(end).format('YYYY-MM-DD HH:mm')
          return
        calendar.fullCalendar 'unselect'
        return
      eventDrop: (event, delta, revertFunc) ->
        event_data = event:
          id: event.id
          start: event.start.format()
          end: event.end.format()
        $.ajax
          url: event.update_url
          data: event_data
          type: 'PATCH'
        return
      eventClick: (event, jsEvent, view) ->
        $.getScript event.edit_url, ->
          $('#event_date_range').val moment(event.start).format('MM/DD/YYYY HH:mm') + ' - ' + moment(event.end).format('MM/DD/YYYY HH:mm')
          date_range_picker()
          $('.start_hidden').val moment(event.start).format('YYYY-MM-DD HH:mm')
          $('.end_hidden').val moment(event.end).format('YYYY-MM-DD HH:mm')
          return
        return
    return
  return
  
$(document).on 'turbolinks:load', initialize_calendar
