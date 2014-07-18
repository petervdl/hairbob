.class Lcom/airbnb/android/fragments/BookingDetailsFragment$7;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->createLoaderCallbacks(Lorg/json/JSONObject;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

.field final synthetic val$ccInfo:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 713
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$7;->val$ccInfo:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 716
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$7;->val$ccInfo:Lorg/json/JSONObject;

    if-eqz v0, :cond_22

    .line 718
    new-instance v0, Lcom/airbnb/android/requests/AirbnbRequestLoader;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;

    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v4}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$900(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$7;->val$ccInfo:Lorg/json/JSONObject;

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;-><init>(JLorg/json/JSONObject;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-direct {v0, v2, v3}, Lcom/airbnb/android/requests/AirbnbRequestLoader;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/AirbnbRequest;)V

    .line 721
    :goto_21
    return-object v0

    :cond_22
    move-object v0, v1

    goto :goto_21
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;)V
    .registers 5
    .param p2, "response"    # Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;",
            ">;",
            "Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 729
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;>;"
    if-eqz p2, :cond_8

    .line 730
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->handleSuccessfulPaymentResponse(Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;)V
    invoke-static {v0, p2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1400(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;)V

    .line 734
    .end local p1    # "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;>;"
    :cond_7
    :goto_7
    return-void

    .line 731
    .restart local p1    # "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;>;"
    :cond_8
    instance-of v0, p1, Lcom/airbnb/android/requests/AirbnbRequestLoader;

    if-eqz v0, :cond_7

    .line 732
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    check-cast p1, Lcom/airbnb/android/requests/AirbnbRequestLoader;

    .end local p1    # "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;>;"
    iget-object v1, p1, Lcom/airbnb/android/requests/AirbnbRequestLoader;->error:Lcom/android/volley/VolleyError;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->handlePaymentError(Lcom/android/volley/VolleyError;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1500(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/android/volley/VolleyError;)V

    goto :goto_7
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 713
    check-cast p2, Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/BookingDetailsFragment$7;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 739
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;>;"
    return-void
.end method
