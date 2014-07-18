.class Lcom/airbnb/android/fragments/ROContainerFragment$8;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->setupRespondButtonForHost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

.field final synthetic val$isReservationRequest:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;Z)V
    .registers 3

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$8;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$8;->val$isReservationRequest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$8;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1049
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$8;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$8;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$8;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1900(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$8;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2000(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/MessageThread;

    move-result-object v3

    iget-boolean v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$8;->val$isReservationRequest:Z

    invoke-static {v0, v2, v3, v4}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->intentForDefault(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Z)Landroid/content/Intent;

    move-result-object v2

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$8;->val$isReservationRequest:Z

    if-eqz v0, :cond_2c

    const/16 v0, 0x2c3

    :goto_28
    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1052
    :cond_2b
    return-void

    .line 1049
    :cond_2c
    const/16 v0, 0x2c2

    goto :goto_28
.end method
