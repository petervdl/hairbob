.class public Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "UpdateMessageThreadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

.field private static final ENDPOINT_THREAD_CREATE:Ljava/lang/String; = "threads/create"

.field public static final INVALID_ID:I = -0x1


# instance fields
.field private mThread:Lcom/airbnb/android/requests/Wrappers$MessageThreadWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thread"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateMessageThreadRequest;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 59
    return-void
.end method

.method public static forMessage(JJJLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
    .registers 15
    .param p0, "threadId"    # J
    .param p2, "listingId"    # J
    .param p4, "recipientId"    # J
    .param p6, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;"
        }
    .end annotation

    .prologue
    .line 36
    .local p7, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateMessageThreadRequest;>;"
    const/4 v5, 0x0

    move-wide v0, p2

    move-wide v2, p4

    move-object v4, p6

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->geMessageParams(JJLjava/lang/String;Lcom/airbnb/android/models/ReservationStatus;)Ljava/util/Properties;

    move-result-object v6

    .line 37
    .local v6, "postParams":Ljava/util/Properties;
    invoke-static {p0, p1, v6, p7}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->getRequestWithPostParams(JLjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    move-result-object v0

    return-object v0
.end method

.method public static forPreApproveOrDecline(JJJZLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
    .registers 15
    .param p0, "threadId"    # J
    .param p2, "listingId"    # J
    .param p4, "recipientId"    # J
    .param p6, "forDecline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZ",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;"
        }
    .end annotation

    .prologue
    .line 30
    .local p7, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateMessageThreadRequest;>;"
    const/4 v4, 0x0

    if-eqz p6, :cond_10

    sget-object v5, Lcom/airbnb/android/models/ReservationStatus;->Denied:Lcom/airbnb/android/models/ReservationStatus;

    :goto_5
    move-wide v0, p2

    move-wide v2, p4

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->geMessageParams(JJLjava/lang/String;Lcom/airbnb/android/models/ReservationStatus;)Ljava/util/Properties;

    move-result-object v6

    .line 31
    .local v6, "postParams":Ljava/util/Properties;
    invoke-static {p0, p1, v6, p7}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->getRequestWithPostParams(JLjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    move-result-object v0

    return-object v0

    .line 30
    .end local v6    # "postParams":Ljava/util/Properties;
    :cond_10
    sget-object v5, Lcom/airbnb/android/models/ReservationStatus;->Preapproved:Lcom/airbnb/android/models/ReservationStatus;

    goto :goto_5
.end method

.method public static forSpecialOffer(Landroid/content/Context;JJLjava/util/Date;Ljava/util/Date;IDLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "listingId"    # J
    .param p5, "checkInDate"    # Ljava/util/Date;
    .param p6, "checkOutDate"    # Ljava/util/Date;
    .param p7, "guestCount"    # I
    .param p8, "offerPrice"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "ID",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;"
        }
    .end annotation

    .prologue
    .line 42
    .local p10, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateMessageThreadRequest;>;"
    move-object v1, p0

    move-wide v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-wide/from16 v7, p8

    invoke-static/range {v1 .. v8}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->getSpecialOfferParameters(Landroid/content/Context;JLjava/util/Date;Ljava/util/Date;ID)Lcom/airbnb/android/utils/Strap;

    move-result-object v10

    .line 43
    .local v10, "postParams":Lcom/airbnb/android/utils/Strap;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "threads/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 44
    .local v9, "endpoint":Ljava/lang/String;
    new-instance v11, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    const/4 v1, 0x0

    move-object/from16 v0, p10

    invoke-direct {v11, v9, v1, v0}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 45
    .local v11, "request":Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
    invoke-virtual {v11, v10}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->setPostParamsAsStrap(Lcom/airbnb/android/utils/Strap;)V

    .line 46
    return-object v11
.end method

.method private static geMessageParams(JJLjava/lang/String;Lcom/airbnb/android/models/ReservationStatus;)Ljava/util/Properties;
    .registers 10
    .param p0, "listingId"    # J
    .param p2, "recipientId"    # J
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "status"    # Lcom/airbnb/android/models/ReservationStatus;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 75
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->createBaseProperties()Ljava/util/Properties;

    move-result-object v0

    .line 76
    .local v0, "props":Ljava/util/Properties;
    cmp-long v1, p0, v2

    if-lez v1, :cond_3a

    .line 77
    const-string/jumbo v1, "listing_id"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_18
    :goto_18
    sget-object v1, Lcom/airbnb/android/models/ReservationStatus;->Preapproved:Lcom/airbnb/android/models/ReservationStatus;

    if-eq p5, v1, :cond_20

    sget-object v1, Lcom/airbnb/android/models/ReservationStatus;->Denied:Lcom/airbnb/android/models/ReservationStatus;

    if-ne p5, v1, :cond_2a

    .line 83
    :cond_20
    const-string/jumbo v1, "status"

    invoke-virtual {p5}, Lcom/airbnb/android/models/ReservationStatus;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2a
    const-string/jumbo v1, "message"

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo p4, ""

    .end local p4    # "message":Ljava/lang/String;
    :cond_36
    invoke-virtual {v0, v1, p4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object v0

    .line 78
    .restart local p4    # "message":Ljava/lang/String;
    :cond_3a
    cmp-long v1, p2, v2

    if-lez v1, :cond_18

    .line 79
    const-string/jumbo v1, "user_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method

.method private static getRequestWithPostParams(JLjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
    .registers 8
    .param p0, "threadId"    # J
    .param p2, "postParams"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateMessageThreadRequest;>;"
    const-wide/16 v2, -0x1

    cmp-long v2, p0, v2

    if-lez v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "threads/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "endpoint":Ljava/lang/String;
    :goto_25
    new-instance v1, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p3}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 53
    .local v1, "request":Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
    invoke-virtual {v1, p2}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->setPostParams(Ljava/util/Properties;)V

    .line 54
    return-object v1

    .line 51
    .end local v0    # "endpoint":Ljava/lang/String;
    .end local v1    # "request":Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
    :cond_2f
    const-string/jumbo v0, "threads/create"

    goto :goto_25
.end method

.method private static getSpecialOfferParameters(Landroid/content/Context;JLjava/util/Date;Ljava/util/Date;ID)Lcom/airbnb/android/utils/Strap;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # J
    .param p3, "checkInDate"    # Ljava/util/Date;
    .param p4, "checkOutDate"    # Ljava/util/Date;
    .param p5, "guestCount"    # I
    .param p6, "offerPrice"    # D
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p3, p4}, Lcom/airbnb/android/utils/DateHelper;->dayCount(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    .line 94
    .local v1, "nights":I
    invoke-static {p0}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v0

    .line 95
    .local v0, "currencyHelper":Lcom/airbnb/android/utils/CurrencyHelper;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->createBasePropertiesAsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "special_offer[listing_id]"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "special_offer[start_date]"

    invoke-virtual {v2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "special_offer[nights]"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "special_offer[number_of_guests]"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "special_offer[native_currency]"

    invoke-virtual {v0}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencyString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "special_offer[price_native_nightly]"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getMessageThread()Lcom/airbnb/android/models/MessageThread;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->mThread:Lcom/airbnb/android/requests/Wrappers$MessageThreadWrapper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->mThread:Lcom/airbnb/android/requests/Wrappers$MessageThreadWrapper;

    iget-object v0, v0, Lcom/airbnb/android/requests/Wrappers$MessageThreadWrapper;->thread:Lcom/airbnb/android/models/MessageThread;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
