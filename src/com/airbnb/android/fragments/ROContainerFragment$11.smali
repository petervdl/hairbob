.class Lcom/airbnb/android/fragments/ROContainerFragment$11;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->showRespondButtonForCheckpoint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V
    .registers 2

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$11;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$11;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$11;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$11;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1900(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/VerifiedIdActivity;->intentForVerifiedId(Landroid/content/Context;Lcom/airbnb/android/models/CheckpointVerifications;Lcom/airbnb/android/models/Reservation;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x2be

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1158
    return-void
.end method
