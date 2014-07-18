.class Lcom/airbnb/android/fragments/ROItineraryFragment$17;
.super Ljava/lang/Object;
.source "ROItineraryFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROItineraryFragment;->onActivityResult(IILandroid/content/Intent;)V
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
        "Lcom/airbnb/android/requests/UpdateReservationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V
    .registers 2

    .prologue
    .line 531
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$17;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$17;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 547
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateReservationRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateReservationRequest;

    .prologue
    .line 534
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$17;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 535
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_11

    .line 536
    invoke-virtual {p1}, Lcom/airbnb/android/requests/UpdateReservationRequest;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 537
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 542
    :cond_11
    :goto_11
    return-void

    .line 539
    :cond_12
    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    goto :goto_11
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 531
    check-cast p1, Lcom/airbnb/android/requests/UpdateReservationRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ROItineraryFragment$17;->onResponse(Lcom/airbnb/android/requests/UpdateReservationRequest;)V

    return-void
.end method
