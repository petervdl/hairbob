.class public Lcom/airbnb/android/services/ArrivalTrackerService;
.super Landroid/app/Service;
.source "ArrivalTrackerService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/services/ArrivalTrackerService$State;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL_ARRIVAL_TRACKER:Ljava/lang/String; = "cancel_arrival_tracker"

.field public static final ACTION_GEOFENCE_ARRIVAL_TRACKER:Ljava/lang/String; = "geofence_arrival_tracker"

.field public static final ACTION_PAUSE_ARRIVAL_TRACKER:Ljava/lang/String; = "pause_arrival_tracker"

.field public static final ACTION_START_ARRIVAL_TRACKER:Ljava/lang/String; = "start_arrival_tracker"

.field private static final ARRIVAL_TRACKER_NOTIFICATION_ID:I = 0x3039

.field public static final ARRIVAL_TRACKER_UPDATE_BROADCAST:Ljava/lang/String; = "arrival_tracker_update"

.field private static final KEY_CONFIRMATION_CODE:Ljava/lang/String; = "confirmation_code"

.field public static final KEY_RESERVATION_ID:Ljava/lang/String; = "reservation_id"

.field private static final MIN_DISTANCE_METERS:I = 0x32

.field private static final UPDATE_INTERVAL_MILLIS:I = 0x1d4c0


# instance fields
.field private mConfirmationCode:Ljava/lang/String;

.field mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mRequest:Lcom/airbnb/android/requests/UpdateGuestLocationRequest;

.field private mReservationId:Ljava/lang/Long;

.field private mState:Lcom/airbnb/android/services/ArrivalTrackerService$State;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    return-void
.end method

.method private cancelTracker()V
    .registers 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/airbnb/android/services/ArrivalTrackerService;->stopSelf()V

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "cancel_arrival_tracker"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 208
    return-void
.end method

.method private displayTrackerNotification(Z)V
    .registers 14
    .param p1, "displayPause"    # Z

    .prologue
    const v8, 0x7f0e0015

    const/high16 v11, 0x8000000

    const/4 v10, 0x0

    .line 155
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0200f5

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f0e0006

    invoke-virtual {p0, v7}, Lcom/airbnb/android/services/ArrivalTrackerService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {p0, v8}, Lcom/airbnb/android/services/ArrivalTrackerService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p0, v8}, Lcom/airbnb/android/services/ArrivalTrackerService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 162
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "action_arrival_tracker"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v5, "trackerIntent":Landroid/content/Intent;
    const-string/jumbo v6, "reservation_id"

    iget-object v7, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mReservationId:Ljava/lang/Long;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 164
    invoke-static {p0, v10, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 166
    if-eqz p1, :cond_a8

    const-string/jumbo v6, "pause_arrival_tracker"

    :goto_52
    iget-object v7, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mConfirmationCode:Ljava/lang/String;

    iget-object v8, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mReservationId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v6, v7, v8, v9}, Lcom/airbnb/android/services/ArrivalTrackerService;->intentForControl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    .line 167
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {p0, v10, v3, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 169
    .local v2, "controlIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_ac

    const v6, 0x1080023

    move v7, v6

    :goto_68
    if-eqz p1, :cond_b1

    const v6, 0x7f0e0019

    invoke-virtual {p0, v6}, Lcom/airbnb/android/services/ArrivalTrackerService;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_71
    invoke-virtual {v0, v7, v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 173
    const-string/jumbo v6, "cancel_arrival_tracker"

    iget-object v7, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mConfirmationCode:Ljava/lang/String;

    iget-object v8, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mReservationId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v6, v7, v8, v9}, Lcom/airbnb/android/services/ArrivalTrackerService;->intentForControl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 174
    .local v1, "cancelIntent":Landroid/content/Intent;
    invoke-static {p0, v10, v1, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 175
    .local v4, "pendingCancelIntent":Landroid/app/PendingIntent;
    const v6, 0x7f020168

    const v7, 0x7f0e00b0

    invoke-virtual {p0, v7}, Lcom/airbnb/android/services/ArrivalTrackerService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 177
    iget-object v6, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mReservationId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackNotificationImpression(JLcom/airbnb/android/utils/Strap;)V

    .line 178
    const/16 v6, 0x3039

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/airbnb/android/services/ArrivalTrackerService;->startForeground(ILandroid/app/Notification;)V

    .line 179
    return-void

    .line 166
    .end local v1    # "cancelIntent":Landroid/content/Intent;
    .end local v2    # "controlIntent":Landroid/app/PendingIntent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pendingCancelIntent":Landroid/app/PendingIntent;
    :cond_a8
    const-string/jumbo v6, "start_arrival_tracker"

    goto :goto_52

    .line 169
    .restart local v2    # "controlIntent":Landroid/app/PendingIntent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_ac
    const v6, 0x1080024

    move v7, v6

    goto :goto_68

    :cond_b1
    const v6, 0x7f0e071e

    invoke-virtual {p0, v6}, Lcom/airbnb/android/services/ArrivalTrackerService;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_71
.end method

.method private handleGeofenceTransition(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 231
    invoke-static {p1}, Lcom/google/android/gms/location/LocationClient;->getGeofenceTransition(Landroid/content/Intent;)I

    move-result v0

    .line 233
    .local v0, "transitionType":I
    iget-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mState:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    sget-object v2, Lcom/airbnb/android/services/ArrivalTrackerService$State;->RUNNING:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    if-eq v1, v2, :cond_11

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 235
    invoke-direct {p0}, Lcom/airbnb/android/services/ArrivalTrackerService;->startTracker()V

    .line 240
    :cond_10
    :goto_10
    return-void

    .line 236
    :cond_11
    iget-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mState:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    sget-object v2, Lcom/airbnb/android/services/ArrivalTrackerService$State;->RUNNING:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 238
    invoke-direct {p0}, Lcom/airbnb/android/services/ArrivalTrackerService;->markGuestArrival()V

    goto :goto_10
.end method

.method public static intentForConfirmationCode(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirmationCode"    # Ljava/lang/String;
    .param p2, "reservationId"    # J

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/services/ArrivalTrackerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "confirmation_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v1, "reservation_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 59
    return-object v0
.end method

.method public static intentForControl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controlAction"    # Ljava/lang/String;
    .param p2, "confirmationCode"    # Ljava/lang/String;
    .param p3, "reservationId"    # J

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/services/ArrivalTrackerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string/jumbo v1, "confirmation_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string/jumbo v1, "reservation_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    return-object v0
.end method

.method private markGuestArrival()V
    .registers 6

    .prologue
    .line 243
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "confirmation_code"

    iget-object v4, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mConfirmationCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "arrived"

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 245
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    new-instance v1, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    new-instance v2, Lcom/airbnb/android/services/ArrivalTrackerService$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/services/ArrivalTrackerService$2;-><init>(Lcom/airbnb/android/services/ArrivalTrackerService;)V

    invoke-direct {v1, v0, v2}, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 261
    .local v1, "request":Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;->execute()V

    .line 262
    return-void
.end method

.method private pauseTracker()V
    .registers 3

    .prologue
    .line 193
    sget-object v1, Lcom/airbnb/android/services/ArrivalTrackerService$State;->PAUSED:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    iput-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mState:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    .line 195
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/airbnb/android/services/ArrivalTrackerService;->displayTrackerNotification(Z)V

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "pause_arrival_tracker"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 200
    invoke-direct {p0}, Lcom/airbnb/android/services/ArrivalTrackerService;->unregisterForLocationUpdates()V

    .line 201
    return-void
.end method

.method private registerForLocationUpdates()V
    .registers 8

    .prologue
    .line 219
    const-string/jumbo v2, "location"

    invoke-virtual {p0, v2}, Lcom/airbnb/android/services/ArrivalTrackerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 220
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    .local v1, "provider":Ljava/lang/String;
    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x42480000

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_11

    .line 223
    .end local v1    # "provider":Ljava/lang/String;
    :cond_27
    return-void
.end method

.method private resumeTracker()V
    .registers 3

    .prologue
    .line 182
    sget-object v1, Lcom/airbnb/android/services/ArrivalTrackerService$State;->RUNNING:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    iput-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mState:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    .line 184
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/airbnb/android/services/ArrivalTrackerService;->displayTrackerNotification(Z)V

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "start_arrival_tracker"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 189
    invoke-direct {p0}, Lcom/airbnb/android/services/ArrivalTrackerService;->registerForLocationUpdates()V

    .line 190
    return-void
.end method

.method private startTracker()V
    .registers 3

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "start_arrival_tracker"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 214
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/airbnb/android/services/ArrivalTrackerService;->displayTrackerNotification(Z)V

    .line 215
    sget-object v1, Lcom/airbnb/android/services/ArrivalTrackerService$State;->RUNNING:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    iput-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mState:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    .line 216
    return-void
.end method

.method private unregisterForLocationUpdates()V
    .registers 3

    .prologue
    .line 226
    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1}, Lcom/airbnb/android/services/ArrivalTrackerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 227
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 228
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 74
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 75
    invoke-direct {p0}, Lcom/airbnb/android/services/ArrivalTrackerService;->registerForLocationUpdates()V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 108
    invoke-direct {p0}, Lcom/airbnb/android/services/ArrivalTrackerService;->unregisterForLocationUpdates()V

    .line 109
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 113
    if-nez p1, :cond_3

    .line 135
    :goto_2
    return-void

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mRequest:Lcom/airbnb/android/requests/UpdateGuestLocationRequest;

    if-eqz v0, :cond_c

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mRequest:Lcom/airbnb/android/requests/UpdateGuestLocationRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/UpdateGuestLocationRequest;->cancelIfRunning()V

    .line 121
    :cond_c
    new-instance v0, Lcom/airbnb/android/requests/UpdateGuestLocationRequest;

    iget-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mConfirmationCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    new-instance v6, Lcom/airbnb/android/services/ArrivalTrackerService$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/services/ArrivalTrackerService$1;-><init>(Lcom/airbnb/android/services/ArrivalTrackerService;)V

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/requests/UpdateGuestLocationRequest;-><init>(Ljava/lang/String;DDLcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mRequest:Lcom/airbnb/android/requests/UpdateGuestLocationRequest;

    .line 134
    iget-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mRequest:Lcom/airbnb/android/requests/UpdateGuestLocationRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/UpdateGuestLocationRequest;->execute()V

    goto :goto_2
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 147
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 143
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 80
    const-string/jumbo v0, "confirmation_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mConfirmationCode:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "reservation_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mReservationId:Ljava/lang/Long;

    .line 83
    const-string/jumbo v0, "geofence_arrival_tracker"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 84
    iget-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mReservationId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackNotificationGeofenceImpression(JLcom/airbnb/android/utils/Strap;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/airbnb/android/services/ArrivalTrackerService;->handleGeofenceTransition(Landroid/content/Intent;)V

    .line 101
    :goto_32
    const/4 v0, 0x3

    return v0

    .line 86
    :cond_34
    iget-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mState:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    sget-object v1, Lcom/airbnb/android/services/ArrivalTrackerService$State;->PAUSED:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    if-ne v0, v1, :cond_62

    const-string/jumbo v0, "start_arrival_tracker"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 87
    iget-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mReservationId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "control"

    const-string/jumbo v4, "start"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackNotificationControlButtonClick(JLcom/airbnb/android/utils/Strap;)V

    .line 88
    invoke-direct {p0}, Lcom/airbnb/android/services/ArrivalTrackerService;->resumeTracker()V

    goto :goto_32

    .line 89
    :cond_62
    iget-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mState:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    sget-object v1, Lcom/airbnb/android/services/ArrivalTrackerService$State;->RUNNING:Lcom/airbnb/android/services/ArrivalTrackerService$State;

    if-ne v0, v1, :cond_90

    const-string/jumbo v0, "pause_arrival_tracker"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 90
    iget-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mReservationId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "control"

    const-string/jumbo v4, "pause"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackNotificationControlButtonClick(JLcom/airbnb/android/utils/Strap;)V

    .line 91
    invoke-direct {p0}, Lcom/airbnb/android/services/ArrivalTrackerService;->pauseTracker()V

    goto :goto_32

    .line 92
    :cond_90
    const-string/jumbo v0, "cancel_arrival_tracker"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 93
    iget-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService;->mReservationId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "control"

    const-string/jumbo v4, "cancel"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackNotificationControlButtonClick(JLcom/airbnb/android/utils/Strap;)V

    .line 94
    invoke-direct {p0}, Lcom/airbnb/android/services/ArrivalTrackerService;->cancelTracker()V

    goto/16 :goto_32

    .line 97
    :cond_b9
    invoke-direct {p0}, Lcom/airbnb/android/services/ArrivalTrackerService;->startTracker()V

    goto/16 :goto_32
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 139
    return-void
.end method
