class Slack::Events::ReactionRemoved < Slack::Event
  property item : JSON::Any,
    item_user : String,
    reaction : String,
    user : String

  @[JSON::Field(converter: Slack::DecimalTimeStampConverter)]
  property event_ts : Time
end
