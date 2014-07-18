.class public Lcom/airbnb/android/activities/TripChargesActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "TripChargesActivity.java"


# static fields
.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialog_error"

.field private static final RESERVATION_EXTRA:Ljava/lang/String; = "reservation"

.field private static final RESERVATION_ID_EXTRA:Ljava/lang/String; = "reservation_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method private fetchReservation(J)V
    .registers 5
    .param p1, "id"    # J

    .prologue
    .line 64
    new-instance v0, Lcom/airbnb/android/requests/ReservationRequest;

    new-instance v1, Lcom/airbnb/android/activities/TripChargesActivity$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/TripChargesActivity$1;-><init>(Lcom/airbnb/android/activities/TripChargesActivity;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/airbnb/android/requests/ReservationRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    .line 76
    .local v0, "request":Lcom/airbnb/android/requests/ReservationRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/ReservationRequest;->execute()V

    .line 77
    return-void
.end method

.method public static intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/TripChargesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    return-object v0
.end method

.method public static intentForReservationId(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservationId"    # J

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/TripChargesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reservation_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    .line 37
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v4, 0x7f0e075f

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/airbnb/android/activities/TripChargesActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 41
    if-nez p1, :cond_27

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/android/activities/TripChargesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "reservation"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Reservation;

    .line 44
    .local v1, "reservation":Lcom/airbnb/android/models/Reservation;
    if-eqz v1, :cond_28

    .line 45
    invoke-static {v1}, Lcom/airbnb/android/fragments/TripChargesFragment;->newInstance(Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/fragments/TripChargesFragment;

    move-result-object v3

    .line 46
    .local v3, "tripChargesFragment":Lcom/airbnb/android/fragments/TripChargesFragment;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/activities/TripChargesActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 61
    .end local v1    # "reservation":Lcom/airbnb/android/models/Reservation;
    .end local v3    # "tripChargesFragment":Lcom/airbnb/android/fragments/TripChargesFragment;
    :cond_27
    :goto_27
    return-void

    .line 48
    .restart local v1    # "reservation":Lcom/airbnb/android/models/Reservation;
    :cond_28
    invoke-virtual {p0}, Lcom/airbnb/android/activities/TripChargesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "reservation_id"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 49
    .local v2, "reservationId":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_56

    .line 50
    invoke-virtual {p0}, Lcom/airbnb/android/activities/TripChargesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/DeepLinkDispatch;->newInstance(Landroid/content/Intent;)Lcom/airbnb/android/utils/DeepLinkDispatch;

    move-result-object v0

    .line 51
    .local v0, "dispatch":Lcom/airbnb/android/utils/DeepLinkDispatch;
    const-string/jumbo v4, "id"

    invoke-virtual {v0, v4}, Lcom/airbnb/android/utils/DeepLinkDispatch;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 54
    .end local v0    # "dispatch":Lcom/airbnb/android/utils/DeepLinkDispatch;
    :cond_56
    if-nez v2, :cond_70

    .line 55
    const v4, 0x7f0e01ac

    const v5, 0x7f0e01b4

    const v6, 0x7f0e0563

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v4

    invoke-virtual {p0}, Lcom/airbnb/android/activities/TripChargesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string/jumbo v6, "dialog_error"

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_27

    .line 57
    :cond_70
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/airbnb/android/activities/TripChargesActivity;->fetchReservation(J)V

    goto :goto_27
.end method
