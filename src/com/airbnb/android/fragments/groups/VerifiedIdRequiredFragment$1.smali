.class Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment$1;
.super Ljava/lang/Object;
.source "VerifiedIdRequiredFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/airbnb/android/activities/VerifiedIdActivity;->intentForVerifiedId(Landroid/content/Context;Lcom/airbnb/android/models/CheckpointVerifications;Lcom/airbnb/android/models/Reservation;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method
