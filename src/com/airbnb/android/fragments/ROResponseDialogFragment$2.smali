.class Lcom/airbnb/android/fragments/ROResponseDialogFragment$2;
.super Ljava/lang/Object;
.source "ROResponseDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROResponseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$300(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 178
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mForReservationRequest:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$400(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 179
    const-string/jumbo v0, "click_cancel"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getReservationId()J
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$500(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getThreadId()J
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$600(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/airbnb/android/analytics/ROAnalytics;->trackRespondNowSelectOptionForReservation(Ljava/lang/String;JJ)V

    .line 184
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 185
    return-void

    .line 181
    :cond_2c
    const-string/jumbo v0, "click_cancel"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getReservationId()J
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$500(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getThreadId()J
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$600(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/airbnb/android/analytics/ROAnalytics;->trackRespondNowSelectOptionForInquiry(Ljava/lang/String;JJ)V

    goto :goto_22
.end method
