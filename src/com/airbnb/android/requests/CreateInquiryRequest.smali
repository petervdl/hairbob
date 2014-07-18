.class public Lcom/airbnb/android/requests/CreateInquiryRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "CreateInquiryRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/CreateInquiryRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/Calendar;Ljava/util/Calendar;ILcom/airbnb/android/requests/RequestListener;)V
    .registers 18
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "listingId"    # J
    .param p4, "checkinDate"    # Ljava/util/Calendar;
    .param p5, "checkoutDate"    # Ljava/util/Calendar;
    .param p6, "guestCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/CreateInquiryRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p7, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CreateInquiryRequest;>;"
    const-string/jumbo v9, "threads/create"

    const-wide/16 v4, -0x1

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-static/range {v1 .. v8}, Lcom/airbnb/android/requests/CreateInquiryRequest;->createInquiryParams(Ljava/lang/String;JJLjava/util/Calendar;Ljava/util/Calendar;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v9, v1, v0}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 15
    return-void
.end method

.method public static createInquiryParams(Ljava/lang/String;JJLjava/util/Calendar;Ljava/util/Calendar;I)Lcom/airbnb/android/utils/Strap;
    .registers 14
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "listingId"    # J
    .param p3, "userId"    # J
    .param p5, "checkinDate"    # Ljava/util/Calendar;
    .param p6, "checkoutDate"    # Ljava/util/Calendar;
    .param p7, "guestCount"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 24
    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    .line 25
    .local v1, "strap":Lcom/airbnb/android/utils/Strap;
    cmp-long v2, p1, v4

    if-lez v2, :cond_1d

    .line 26
    const-string/jumbo v2, "listing_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    .line 29
    :cond_1d
    cmp-long v2, p3, v4

    if-lez v2, :cond_2c

    .line 30
    const-string/jumbo v2, "user_id"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    .line 32
    :cond_2c
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "checkin_date"

    invoke-virtual {p5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "checkout_date"

    invoke-virtual {p6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "number_of_guests"

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    .line 37
    return-object v1
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public isSingleFire()Z
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
