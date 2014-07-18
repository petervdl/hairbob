.class Lcom/airbnb/android/activities/TripChargesActivity$1;
.super Ljava/lang/Object;
.source "TripChargesActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/TripChargesActivity;->fetchReservation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/ReservationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/TripChargesActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/TripChargesActivity;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/airbnb/android/activities/TripChargesActivity$1;->this$0:Lcom/airbnb/android/activities/TripChargesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 73
    const v0, 0x7f0e01ac

    const v1, 0x7f0e01b4

    const v2, 0x7f0e0563

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/activities/TripChargesActivity$1;->this$0:Lcom/airbnb/android/activities/TripChargesActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/TripChargesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_error"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ReservationRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/ReservationRequest;

    .prologue
    .line 67
    iget-object v1, p1, Lcom/airbnb/android/requests/ReservationRequest;->reservation:Lcom/airbnb/android/models/ReservationV2;

    invoke-static {v1}, Lcom/airbnb/android/fragments/TripChargesFragment;->newInstance(Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/fragments/TripChargesFragment;

    move-result-object v0

    .line 68
    .local v0, "tripChargesFragment":Lcom/airbnb/android/fragments/TripChargesFragment;
    iget-object v1, p0, Lcom/airbnb/android/activities/TripChargesActivity$1;->this$0:Lcom/airbnb/android/activities/TripChargesActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/activities/TripChargesActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 69
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, Lcom/airbnb/android/requests/ReservationRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/TripChargesActivity$1;->onResponse(Lcom/airbnb/android/requests/ReservationRequest;)V

    return-void
.end method
