.class public final Lcom/google/android/gms/internal/ev;
.super Ljava/lang/Object;


# direct methods
.method public static D(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public static p(I)Z
    .registers 2

    const/4 v0, 0x5

    if-ge p0, v0, :cond_c

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static z(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method
