.class Lcom/airbnb/android/fragments/BookingDetailsFragment$21;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupPaymentChooser(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 2

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddedPaymentMethod()V
    .registers 2

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$900(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1249
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->showConfirmAndPay()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$2500(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 1250
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->requestFXCopy()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1100(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 1252
    :cond_12
    return-void
.end method

.method public onReceivedPayments()V
    .registers 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1235
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->handlePaymentInstruments()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$2300(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 1237
    :cond_d
    return-void
.end method

.method public onReceivedPaymentsError()V
    .registers 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1242
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupStickyButtonAddPaymentMethod()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$2400(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 1244
    :cond_d
    return-void
.end method

.method public onSelectPayment()V
    .registers 2

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->requestFXCopy()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1100(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 1230
    return-void
.end method
