$(document).ready ->
  $('#calendar').fullCalendar
    editable: true,
    customButtons: addShow:
      text: 'Add Show'
      click: (event, jsEvent, view) ->
        window.location.href = '~/app/views/calendars/add.html.haml'   
        return
    header:
      left: 'prev,next today addShow',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    defaultView: 'month',
    height: 500,
    slotMinutes: 30,

    eventSources: [{
      url: '/events',
    }],
    
    timeFormat: 'h:mm',
    #timeFormat: 'h:mm t{ - h:mm t} ',
    dragOpacity: "0.5"

    eventDrop: (event, dayDelta, minuteDelta, allDay, revertFunc) ->
      updateEvent(event);

    eventResize: (event, dayDelta, minuteDelta, revertFunc) ->
      updateEvent(event);

    selectable: true
    select: (start, end, jsEvent, view) ->
      title = prompt('Enter Show Title', 'South Park')
      #start = prompt('Enter Start Time', '8:00')
      #end = prompt('Enter End Time', '8:30')
      if title != null
        event = 
          title: if title.trim() != '' then title else 'New Show'
          start: start
          end: end
          allDay: false
        $('#calendar').fullCalendar 'renderEvent', event, true
      $('#calendar').fullCalendar 'unselect'
      return

updateEvent = (the_event) ->
  $.update "/events/" + the_event.id,
    event:
      title: the_event.title,
      starts_at: "" + the_event.start,
      ends_at: "" + the_event.end,
      description: the_event.description
