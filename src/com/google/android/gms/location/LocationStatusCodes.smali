.class public final Lcom/google/android/gms/location/LocationStatusCodes;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static cJ(I)I
    .registers 3

    const/4 v0, 0x1

    if-ltz p0, :cond_5

    if-le p0, v0, :cond_d

    :cond_5
    const/16 v1, 0x3e8

    if-gt v1, p0, :cond_e

    const/16 v1, 0x3ea

    if-gt p0, v1, :cond_e

    :cond_d
    :goto_d
    return p0

    :cond_e
    move p0, v0

    goto :goto_d
.end method
