.class public final Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
.super Ljava/lang/Object;


# direct methods
.method public static createAutoMatchCriteria(IIJ)Landroid/os/Bundle;
    .registers 6
    .param p0, "minAutoMatchPlayers"    # I
    .param p1, "maxAutoMatchPlayers"    # I
    .param p2, "exclusiveBitMask"    # J

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "min_automatch_players"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "max_automatch_players"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "exclusive_bit_mask"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method
