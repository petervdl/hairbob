.class public Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetPushNotificationSettingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest$Settings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private group:Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest$Settings;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "settings"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;>;"
    const-string/jumbo v0, "groups/user/push_notifications"

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 13
    return-void
.end method


# virtual methods
.method public isGroupsEnabled()Z
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;->group:Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest$Settings;

    iget-boolean v0, v0, Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest$Settings;->groupsEnabled:Z

    return v0
.end method
