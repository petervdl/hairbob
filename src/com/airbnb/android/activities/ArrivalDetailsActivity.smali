.class public Lcom/airbnb/android/activities/ArrivalDetailsActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ArrivalDetailsActivity.java"


# static fields
.field public static final ARRIVAL_DETAILS_REQUEST_CODE:I = 0x1389

.field public static final ARRIVAL_DETAILS_UNSAVED_CHANGES_RESULT_CODE:I = 0x1771

.field public static final EXTRA_ARRIVAL_PLAN:Ljava/lang/String; = "arrival_plan"

.field private static final EXTRA_RESERVATION:Ljava/lang/String; = "reservation"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p2, "arrivalPlan"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ArrivalDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    const-string/jumbo v1, "arrival_plan"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 29
    return-object v0
.end method


# virtual methods
.method public arrivalPlanUpdated(Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ArrivalDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "arrival_plan"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 70
    .local v0, "arrivalPlan":Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getId()J

    move-result-wide v1

    iget-object v3, p1, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v3}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_29

    .line 72
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ArrivalDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "arrival_plan"

    iget-object v3, p1, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    :cond_29
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ArrivalDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .line 62
    .local v0, "detailsFragment":Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    if-eqz v0, :cond_12

    .line 63
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->onExitArrivalDetails()V

    .line 65
    :cond_12
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v3, 0x7f0e0005

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/activities/ArrivalDetailsActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 38
    if-nez p1, :cond_30

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ArrivalDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "reservation"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Reservation;

    .line 40
    .local v2, "reservation":Lcom/airbnb/android/models/Reservation;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ArrivalDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "arrival_plan"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 41
    .local v0, "arrivalPlan":Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v2, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->newInstance(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    move-result-object v1

    .line 42
    .local v1, "fragment":Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/airbnb/android/activities/ArrivalDetailsActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 44
    .end local v0    # "arrivalPlan":Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .end local v1    # "fragment":Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .end local v2    # "reservation":Lcom/airbnb/android/models/Reservation;
    :cond_30
    sget-object v3, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v3, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onDestroy()V

    .line 50
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
