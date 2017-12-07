json.array! @events do |event|
  date_format = event.all_day_event? ? '%Y-%m-%d' : '%Y-%m-%dT%H:%M:%S'
  date_format2 = '%H:%M'
  
  json.id event.id
  json.title event.title
  if event.dow.blank?
     json.start event.start.strftime(date_format)
     json.end event.end.strftime(date_format)
  end
  if event.dow.present?
     json.start event.start.strftime(date_format2)
     json.end event.end.strftime(date_format2)
  end
  if event.dow.present?
    json.dow event.dow
  end
  json.color event.color unless event.color.blank?
  json.allDay event.all_day_event? ? true : false
  if event.dow.blank?
     json.update_url event_path(event, method: :patch)
     json.edit_url edit_event_path(event)
  end
  if event.dow.present?
     json.update_url event_path(event, method: :patch)
     json.edit_url edit_event_path(event)
  end
end
