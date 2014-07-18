.class Lcom/airbnb/android/fragments/BookingDetailsFragment$8;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->handlePaymentError(Lcom/android/volley/VolleyError;)V
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
    .line 760
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->handleBookingFailed()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1600(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 764
    return-void
.end method
