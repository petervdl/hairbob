.class public final Lcom/google/android/gms/games/internal/constants/MatchResult;
.super Ljava/lang/Object;


# direct methods
.method public static isValid(I)Z
    .registers 2
    .param p0, "result"    # I

    .prologue
    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
