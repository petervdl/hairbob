.class Lcom/airbnb/android/fragments/BookingDetailsFragment$5;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->createReservation(Z)V
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
        "Lcom/airbnb/android/requests/CreateReservationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 2

    .prologue
    .line 566
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v4, 0x0

    .line 580
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # setter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCreateReservationRequest:Lcom/airbnb/android/requests/CreateReservationRequest;
    invoke-static {v1, v4}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$802(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/requests/CreateReservationRequest;)Lcom/airbnb/android/requests/CreateReservationRequest;

    .line 581
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1200(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 582
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 584
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e01ac

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const v3, 0x7f0e01b0

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_35
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0563

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "error_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 591
    :cond_51
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CreateReservationRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/CreateReservationRequest;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCreateReservationRequest:Lcom/airbnb/android/requests/CreateReservationRequest;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$802(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/requests/CreateReservationRequest;)Lcom/airbnb/android/requests/CreateReservationRequest;

    .line 571
    iget-object v0, p1, Lcom/airbnb/android/requests/CreateReservationRequest;->reservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_1b

    .line 572
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/CreateReservationRequest;->reservation:Lcom/airbnb/android/models/Reservation;

    # setter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$902(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/models/Reservation;

    .line 573
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->showReservationDetails()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1000(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 574
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->requestFXCopy()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1100(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 576
    :cond_1b
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 566
    check-cast p1, Lcom/airbnb/android/requests/CreateReservationRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;->onResponse(Lcom/airbnb/android/requests/CreateReservationRequest;)V

    return-void
.end method
