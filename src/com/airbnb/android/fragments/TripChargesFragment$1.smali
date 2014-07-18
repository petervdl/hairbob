.class Lcom/airbnb/android/fragments/TripChargesFragment$1;
.super Ljava/lang/Object;
.source "TripChargesFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TripChargesFragment;->setupInvoice()V
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
        "Lcom/airbnb/android/requests/TripInvoiceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TripChargesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TripChargesFragment;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripChargesFragment$1;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 124
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/TripInvoiceRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/TripInvoiceRequest;

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$1;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/TripChargesActivity;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/TripChargesActivity;->showLoader(Z)V

    .line 113
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$1;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripChargesContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$1;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/TripInvoiceRequest;->tripInvoice:Lcom/airbnb/android/models/TripInvoice;

    # setter for: Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/TripChargesFragment;->access$002(Lcom/airbnb/android/fragments/TripChargesFragment;Lcom/airbnb/android/models/TripInvoice;)Lcom/airbnb/android/models/TripInvoice;

    .line 116
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$1;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    # invokes: Lcom/airbnb/android/fragments/TripChargesFragment;->selectInvoicePaymentInstrument()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->access$100(Lcom/airbnb/android/fragments/TripChargesFragment;)V

    .line 117
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$1;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    # invokes: Lcom/airbnb/android/fragments/TripChargesFragment;->setupTripInvoiceItemsListViews()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->access$200(Lcom/airbnb/android/fragments/TripChargesFragment;)V

    .line 119
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$1;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    # invokes: Lcom/airbnb/android/fragments/TripChargesFragment;->setFXCopy()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->access$300(Lcom/airbnb/android/fragments/TripChargesFragment;)V

    .line 120
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 108
    check-cast p1, Lcom/airbnb/android/requests/TripInvoiceRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/TripChargesFragment$1;->onResponse(Lcom/airbnb/android/requests/TripInvoiceRequest;)V

    return-void
.end method
