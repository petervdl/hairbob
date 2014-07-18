.class Lcom/airbnb/android/fragments/BookingDetailsFragment$15;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 920
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 932
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mApplyCouponRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$2000(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 933
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mApplyCouponRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$2000(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 934
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 928
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 924
    return-void
.end method
