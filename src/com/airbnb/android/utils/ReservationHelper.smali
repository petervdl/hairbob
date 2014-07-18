.class public Lcom/airbnb/android/utils/ReservationHelper;
.super Ljava/lang/Object;
.source "ReservationHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endDate(JLjava/util/Date;I)Ljava/util/Date;
    .registers 10
    .param p0, "id"    # J
    .param p2, "start"    # Ljava/util/Date;
    .param p3, "nights"    # I

    .prologue
    .line 11
    if-gtz p3, :cond_26

    .line 12
    const-string/jumbo v1, "reservation_helper"

    const/4 v2, 0x1

    new-instance v3, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v3}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v4, "c1"

    const-string/jumbo v5, "end_date"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "reservation_id"

    invoke-virtual {v3, v4, p0, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "num_nights"

    invoke-virtual {v3, v4, p3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 14
    :cond_26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 15
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 16
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 17
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method
