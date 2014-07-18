.class public Lcom/airbnb/android/activities/TaxesActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "TaxesActivity.java"


# static fields
.field private static final EXTRA_RESERVATION:Ljava/lang/String; = "reservation"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/TaxesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/airbnb/android/activities/TaxesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "reservation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Reservation;

    .line 27
    .local v0, "reservation":Lcom/airbnb/android/models/Reservation;
    const v1, 0x7f0e075e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/TaxesActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 29
    if-nez p1, :cond_22

    .line 30
    invoke-static {v0}, Lcom/airbnb/android/fragments/TaxesFragment;->newInstance(Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/fragments/TaxesFragment;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/airbnb/android/activities/TaxesActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 32
    :cond_22
    return-void
.end method
