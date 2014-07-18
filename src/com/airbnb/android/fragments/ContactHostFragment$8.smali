.class Lcom/airbnb/android/fragments/ContactHostFragment$8;
.super Ljava/lang/Object;
.source "ContactHostFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactHostFragment;->sendInquiry()V
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
        "Lcom/airbnb/android/requests/CreateInquiryRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

.field final synthetic val$fragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

.field final synthetic val$showRecommendations:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactHostFragment;ZLcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 4

    .prologue
    .line 350
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->val$showRecommendations:Z

    iput-object p3, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->val$fragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$1000(Lcom/airbnb/android/fragments/ContactHostFragment;)Lcom/airbnb/android/views/StickyButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 381
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 382
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->val$fragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 383
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e01ac

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    const v3, 0x7f0e01bb

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/ContactHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_35
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0563

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ContactHostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "error_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 390
    :cond_52
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CreateInquiryRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/CreateInquiryRequest;

    .prologue
    .line 354
    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ContactHostFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 355
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->val$showRecommendations:Z

    if-eqz v2, :cond_3d

    const/4 v0, -0x1

    .line 356
    .local v0, "delay":I
    :goto_d
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->val$showRecommendations:Z

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    const v3, 0x7f0e05f8

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/ContactHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "subtitle":Ljava/lang/String;
    :goto_1a
    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->val$fragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    const v4, 0x7f0e04a1

    invoke-virtual {v3, v4}, Lcom/airbnb/android/fragments/ContactHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020129

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->onProgressComplete(Ljava/lang/String;Ljava/lang/String;II)V

    .line 359
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->val$showRecommendations:Z

    if-eqz v2, :cond_44

    .line 360
    const-string/jumbo v2, "show_recommendations_btn"

    const-string/jumbo v3, "impression"

    const-string/jumbo v4, "recommendations_btn"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/airbnb/android/analytics/RecommendationAnalytics;->trackContactHostAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 376
    .end local v0    # "delay":I
    .end local v1    # "subtitle":Ljava/lang/String;
    :goto_3c
    return-void

    .line 355
    :cond_3d
    const/16 v0, 0x1f4

    goto :goto_d

    .line 356
    .restart local v0    # "delay":I
    :cond_40
    const-string/jumbo v1, ""

    goto :goto_1a

    .line 363
    .restart local v1    # "subtitle":Ljava/lang/String;
    :cond_44
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/airbnb/android/fragments/ContactHostFragment$8$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ContactHostFragment$8$1;-><init>(Lcom/airbnb/android/fragments/ContactHostFragment$8;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3c

    .line 374
    .end local v0    # "delay":I
    .end local v1    # "subtitle":Ljava/lang/String;
    :cond_54
    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    const/4 v3, 0x1

    # setter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mSubmittedInquiry:Z
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$902(Lcom/airbnb/android/fragments/ContactHostFragment;Z)Z

    goto :goto_3c
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 350
    check-cast p1, Lcom/airbnb/android/requests/CreateInquiryRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ContactHostFragment$8;->onResponse(Lcom/airbnb/android/requests/CreateInquiryRequest;)V

    return-void
.end method
