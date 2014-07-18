.class Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;
.super Ljava/lang/Object;
.source "ROResponseDialogFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROResponseDialogFragment;->handlePreApproveOrDeclineInquiry(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

.field final synthetic val$forDecline:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Z)V
    .registers 3

    .prologue
    .line 257
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;->val$forDecline:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickNegative()V
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 273
    return-void
.end method

.method public onClickPositive()V
    .registers 5

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 262
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v1, "for_decline"

    iget-boolean v2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;->val$forDecline:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const-string/jumbo v1, "guest_name"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getOtherUserFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string/jumbo v1, "thread_id"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$800(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Lcom/airbnb/android/models/MessageThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 265
    const-string/jumbo v1, "listing_id"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$800(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Lcom/airbnb/android/models/MessageThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 267
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 268
    return-void
.end method
