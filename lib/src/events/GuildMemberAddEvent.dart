import '../../discord.dart';

/// Sent when a member joins a guild.
class GuildMemberAddEvent {
  /// The member that joined.
  Member member;

  /// Constructs a new [GuildMemberAddEvent].
  GuildMemberAddEvent(Client client, Map<String, dynamic> json) {
    if (client.ready) {
      final Guild guild = client.guilds.map[json['d']['guild_id']];
      this.member = new Member(json['d'], guild);
      guild.members[member.user.id] = member;
      client.users.map[member.user.id] = member.user;
      client.emit('guildMemberAdd', this);
    }
  }
}