.class public Lcom/airbnb/android/services/NotificationDeleteIntentService;
.super Landroid/app/IntentService;
.source "NotificationDeleteIntentService.java"


# static fields
.field private static final EXTRA_PUSH_TYPE:Ljava/lang/String; = "push_type"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/airbnb/android/services/NotificationDeleteIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/services/NotificationDeleteIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/airbnb/android/services/NotificationDeleteIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static intentForNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationType"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/services/NotificationDeleteIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "push_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    const-string/jumbo v1, "push_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "notificationType":Ljava/lang/String;
    const-string/jumbo v1, "push_notification"

    const/4 v2, 0x1

    new-instance v3, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v3}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v4, "push_type"

    invoke-virtual {v3, v4, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "status"

    const-string/jumbo v5, "push_dismissed"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 29
    invoke-static {p0}, Lcom/airbnb/android/services/GCMIntentService;->dismissPushNotification(Landroid/content/Context;)V

    .line 30
    return-void
.end method
