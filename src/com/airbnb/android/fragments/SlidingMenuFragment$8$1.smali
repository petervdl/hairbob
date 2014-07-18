.class Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;
.super Ljava/lang/Object;
.source "SlidingMenuFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->onClick(Landroid/view/View;)V
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
        "Lcom/airbnb/android/requests/VerificationsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/SlidingMenuFragment$8;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlidingMenuFragment$8;)V
    .registers 2

    .prologue
    .line 374
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;->this$1:Lcom/airbnb/android/fragments/SlidingMenuFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;->this$1:Lcom/airbnb/android/fragments/SlidingMenuFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 390
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;->this$1:Lcom/airbnb/android/fragments/SlidingMenuFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mVerifyMyIdButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;->this$1:Lcom/airbnb/android/fragments/SlidingMenuFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 392
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;->this$1:Lcom/airbnb/android/fragments/SlidingMenuFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 394
    :cond_2b
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/VerificationsRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/VerificationsRequest;

    .prologue
    .line 378
    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;->this$1:Lcom/airbnb/android/fragments/SlidingMenuFragment$8;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 379
    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;->this$1:Lcom/airbnb/android/fragments/SlidingMenuFragment$8;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mVerifyMyIdButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 380
    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;->this$1:Lcom/airbnb/android/fragments/SlidingMenuFragment$8;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 381
    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;->this$1:Lcom/airbnb/android/fragments/SlidingMenuFragment$8;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p1, Lcom/airbnb/android/requests/VerificationsRequest;->verifications:Lcom/airbnb/android/models/CheckpointVerifications;

    iget-object v3, p1, Lcom/airbnb/android/requests/VerificationsRequest;->reservation:Lcom/airbnb/android/models/Reservation;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/VerifiedIdActivity;->intentForVerifiedId(Landroid/content/Context;Lcom/airbnb/android/models/CheckpointVerifications;Lcom/airbnb/android/models/Reservation;)Landroid/content/Intent;

    move-result-object v0

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;->this$1:Lcom/airbnb/android/fragments/SlidingMenuFragment$8;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 385
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_37
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 374
    check-cast p1, Lcom/airbnb/android/requests/VerificationsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;->onResponse(Lcom/airbnb/android/requests/VerificationsRequest;)V

    return-void
.end method
