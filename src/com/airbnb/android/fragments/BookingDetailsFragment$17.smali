.class Lcom/airbnb/android/fragments/BookingDetailsFragment$17;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->updatePriceState()V
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
    .line 977
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$17;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 980
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$17;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$17;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$17;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$900(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/TaxesActivity;->intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 981
    return-void
.end method
