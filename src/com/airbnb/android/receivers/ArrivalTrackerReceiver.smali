.class public Lcom/airbnb/android/receivers/ArrivalTrackerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ArrivalTrackerReceiver.java"


# static fields
.field public static final ACTION_ARRIVAL_TRACKER:Ljava/lang/String; = "action_arrival_tracker"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string/jumbo v3, "reservation_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 20
    .local v1, "reservationId":J
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackNotificationClick(JLcom/airbnb/android/utils/Strap;)V

    .line 22
    invoke-static {p1, v1, v2}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->intentForReservationId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 23
    .local v0, "arrivalTrackerIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method
