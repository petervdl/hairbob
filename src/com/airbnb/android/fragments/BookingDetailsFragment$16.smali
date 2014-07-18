.class Lcom/airbnb/android/fragments/BookingDetailsFragment$16;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;
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
    .line 937
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$16;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 941
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$16;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 942
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$16;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const/4 v1, 0x0

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->applyCoupon(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1900(Lcom/airbnb/android/fragments/BookingDetailsFragment;Z)V

    .line 944
    :cond_e
    return-void
.end method
