.class Lcom/google/android/gms/analytics/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/j;


# instance fields
.field tA:Ljava/lang/String;

.field tz:Ljava/lang/String;

.field wg:Ljava/lang/String;

.field wh:I

.field wi:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/analytics/w;->wh:I

    iput v0, p0, Lcom/google/android/gms/analytics/w;->wi:I

    return-void
.end method


# virtual methods
.method public cT()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->tz:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public cU()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->tz:Ljava/lang/String;

    return-object v0
.end method

.method public cV()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->tA:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public cW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->tA:Ljava/lang/String;

    return-object v0
.end method

.method public cX()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->wg:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public cY()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->wg:Ljava/lang/String;

    return-object v0
.end method

.method public cZ()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/w;->wh:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public da()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/w;->wh:I

    return v0
.end method

.method public db()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/analytics/w;->wi:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public dc()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/w;->wi:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
