.class public Lcom/airbnb/android/requests/PushNotificationConversionRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "PushNotificationConversionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/PushNotificationConversionRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final PUSH_NOTIFICATION_ID_KEY:Ljava/lang/String; = "push_notification_id"

.field public static final PUSH_TYPE:Ljava/lang/String; = "push_type"

.field public static final SECRET_KEY:Ljava/lang/String; = "secret"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "pushNotificationId"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/PushNotificationConversionRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/PushNotificationConversionRequest;>;"
    const-string/jumbo v0, "notification_devices/push_notification_callback"

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    invoke-static {p1, p2}, Lcom/airbnb/android/requests/PushNotificationConversionRequest;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/PushNotificationConversionRequest;->setPostParams(Ljava/util/Properties;)V

    .line 21
    return-void
.end method

.method private static getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;
    .registers 4
    .param p0, "pushNotificationId"    # Ljava/lang/String;
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 26
    .local v0, "p":Ljava/util/Properties;
    const-string/jumbo v1, "push_notification_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string/jumbo v1, "secret"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object v0
.end method

.method public static sendPushNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "pushNotificationId"    # Ljava/lang/String;
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "pushType"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lcom/airbnb/android/requests/PushNotificationConversionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/airbnb/android/requests/PushNotificationConversionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 34
    .local v0, "request":Lcom/airbnb/android/requests/PushNotificationConversionRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/PushNotificationConversionRequest;->execute()V

    .line 35
    const-string/jumbo v1, "push_notification"

    const/4 v2, 0x1

    new-instance v3, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v3}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v4, "push_type"

    invoke-virtual {v3, v4, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "status"

    const-string/jumbo v5, "push_opened"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getTTL()J
    .registers 3

    .prologue
    .line 46
    const-wide/32 v0, 0xea60

    return-wide v0
.end method
