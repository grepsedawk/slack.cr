class Slack::Events::Message < Slack::Event
  use_optional_discriminator "subtype", {
    bot_add:         Slack::Events::Message::BotAdd,
    channel_join:    Slack::Events::Message::ChannelJoin,
    message_changed: Slack::Events::Message::MessageChanged,
    message_deleted: Slack::Events::Message::MessageDeleted,
  }

  property attachments : Array(Attachment)?,
    blocks : Array(JSON::Any),
    channel : String?,
    channel_type : String?,
    client_msg_id : String,
    team : String,
    text : String,
    user : String

  @[JSON::Field(converter: Slack::DecimalTimeStampConverter)]
  property ts : Time
end
