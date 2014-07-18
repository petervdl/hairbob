.class public Lcom/airbnb/android/activities/ArrivalTrackerActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ArrivalTrackerActivity.java"


# static fields
.field public static final EXTRA_ARRIVAL_PLAN:Ljava/lang/String; = "arrival_plan"

.field private static final EXTRA_RESERVATION:Ljava/lang/String; = "reservation"

.field private static final EXTRA_RESERVATION_ID:Ljava/lang/String; = "reservation_id"


# instance fields
.field private mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

.field private mArrivalPlanRequest:Lcom/airbnb/android/requests/GetArrivalPlanRequest;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mReservationRequest:Lcom/airbnb/android/requests/ReservationObjectRequest;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/activities/ArrivalTrackerActivity;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ArrivalTrackerActivity;
    .param p1, "x1"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/activities/ArrivalTrackerActivity;Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ArrivalTrackerActivity;
    .param p1, "x1"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)Lcom/airbnb/android/requests/GetArrivalPlanRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlanRequest:Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    return-object v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/activities/ArrivalTrackerActivity;Lcom/airbnb/android/requests/GetArrivalPlanRequest;)Lcom/airbnb/android/requests/GetArrivalPlanRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ArrivalTrackerActivity;
    .param p1, "x1"    # Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlanRequest:Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    return-object p1
.end method

.method private fetchAndShowArrivalPlan(J)V
    .registers 4
    .param p1, "reservationId"    # J

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->showLoader(Z)V

    .line 181
    new-instance v0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;-><init>(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)V

    invoke-static {p1, p2, v0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->forReservationId(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservationRequest:Lcom/airbnb/android/requests/ReservationObjectRequest;

    .line 214
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservationRequest:Lcom/airbnb/android/requests/ReservationObjectRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->execute()V

    .line 215
    return-void
.end method

.method public static intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p2, "arrivalPlan"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    const-string/jumbo v1, "arrival_plan"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    return-object v0
.end method

.method public static intentForReservationId(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservationId"    # J

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reservation_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 51
    return-object v0
.end method

.method private setupBroadcastReceivers()V
    .registers 4

    .prologue
    .line 140
    new-instance v2, Lcom/airbnb/android/activities/ArrivalTrackerActivity$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity$1;-><init>(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)V

    iput-object v2, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 163
    .local v1, "manager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "arrival_tracker_update"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v2, "start_arrival_tracker"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v2, "pause_arrival_tracker"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v2, "cancel_arrival_tracker"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 169
    return-void
.end method


# virtual methods
.method public arrivalPlanUpdated(Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getId()J

    move-result-wide v0

    iget-object v2, p1, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 174
    iget-object v0, p1, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    iput-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 176
    :cond_18
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 102
    const/16 v0, 0x1389

    if-ne p1, v0, :cond_c

    const/16 v0, 0x1771

    if-ne p2, v0, :cond_c

    .line 104
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->finish()V

    .line 108
    :goto_b
    return-void

    .line 106
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/SolitAirActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v5, -0x1

    .line 56
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v3, 0x7f0e0006

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 60
    if-nez p1, :cond_56

    .line 61
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "reservation_id"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 62
    .local v1, "reservationId":J
    cmp-long v3, v1, v5

    if-eqz v3, :cond_2b

    .line 63
    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->fetchAndShowArrivalPlan(J)V

    .line 75
    .end local v1    # "reservationId":J
    :goto_22
    invoke-direct {p0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->setupBroadcastReceivers()V

    .line 76
    sget-object v3, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v3, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 77
    return-void

    .line 65
    .restart local v1    # "reservationId":J
    :cond_2b
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "reservation"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Reservation;

    iput-object v3, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 66
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "arrival_plan"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    iput-object v3, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 67
    iget-object v3, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    iget-object v4, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->newInstance(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    move-result-object v0

    .line 68
    .local v0, "fragment":Lcom/airbnb/android/fragments/ArrivalTrackerFragment;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_22

    .line 71
    .end local v0    # "fragment":Lcom/airbnb/android/fragments/ArrivalTrackerFragment;
    .end local v1    # "reservationId":J
    :cond_56
    const-string/jumbo v3, "reservation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Reservation;

    iput-object v3, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 72
    const-string/jumbo v3, "arrival_plan"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    iput-object v3, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    goto :goto_22
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onDestroy()V

    .line 96
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 118
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 114
    :pswitch_c
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackArrivalTrackerPresentTravelDetailsView(JLcom/airbnb/android/utils/Strap;)V

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    iget-object v1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-static {p0, v0, v1}, Lcom/airbnb/android/activities/ArrivalDetailsActivity;->intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1389

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    const/4 v0, 0x1

    goto :goto_b

    .line 112
    nop

    :pswitch_data_26
    .packed-switch 0x7f080533
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onPause()V

    .line 90
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_17

    .line 133
    const v0, 0x7f080533

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->currUserIsHost()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_14
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    :cond_17
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 133
    :cond_1c
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    const-string/jumbo v0, "reservation"

    iget-object v1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    const-string/jumbo v0, "arrival_plan"

    iget-object v1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    return-void
.end method
