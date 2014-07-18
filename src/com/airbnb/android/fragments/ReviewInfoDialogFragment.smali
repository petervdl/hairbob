.class public Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "ReviewInfoDialogFragment.java"


# static fields
.field private static final BODY_ID:Ljava/lang/String; = "body_id"

.field private static final HEADING_ID:Ljava/lang/String; = "heading_id"

.field public static final REQUEST_CODE_REVIEW_INFO_CANCEL:I = 0x3f4

.field public static final REQUEST_CODE_REVIEW_INFO_CLOSED:I = 0x3f3

.field public static final REQUEST_CODE_SEE_REVIEW:I = 0x3f2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    return-void
.end method

.method public static newInstance(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;
    .registers 8
    .param p0, "headingId"    # I
    .param p1, "bodyId"    # I
    .param p2, "buttonId"    # I
    .param p3, "buttonReturnCode"    # I
    .param p4, "targetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 28
    new-instance v1, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v2, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;

    invoke-direct {v2}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withCustomLayout()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;

    .line 31
    .local v0, "dialog":Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "heading_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "body_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    return-object v0
.end method

.method public static newInstanceForPostReview(Lcom/airbnb/android/models/Review;Landroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;
    .registers 6
    .param p0, "review"    # Lcom/airbnb/android/models/Review;
    .param p1, "targetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const v3, 0x7f0e0660

    .line 37
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->isTwinCompleted()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 38
    invoke-static {p0}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackPostDoubleBlindVisibleDialog(Lcom/airbnb/android/models/Review;)V

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->isHostReviewingGuest()Z

    move-result v1

    if-eqz v1, :cond_1f

    const v0, 0x7f0e0648

    .line 40
    .local v0, "bodyId":I
    :goto_15
    const v1, 0x7f0e065c

    const/16 v2, 0x3f2

    invoke-static {v3, v0, v1, v2, p1}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->newInstance(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;

    move-result-object v1

    .line 44
    :goto_1e
    return-object v1

    .line 39
    .end local v0    # "bodyId":I
    :cond_1f
    const v0, 0x7f0e0647

    goto :goto_15

    .line 42
    :cond_23
    invoke-static {p0}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackPostDoubleBlindHiddenDialog(Lcom/airbnb/android/models/Review;)V

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->isHostReviewingGuest()Z

    move-result v1

    if-eqz v1, :cond_39

    const v0, 0x7f0e064a

    .line 44
    .restart local v0    # "bodyId":I
    :goto_2f
    const v1, 0x7f0e063e

    const/16 v2, 0x3f3

    invoke-static {v3, v0, v1, v2, p1}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->newInstance(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;

    move-result-object v1

    goto :goto_1e

    .line 43
    .end local v0    # "bodyId":I
    :cond_39
    const v0, 0x7f0e0649

    goto :goto_2f
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/ZenDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 70
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->getTargetRequestCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 73
    :cond_16
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    .line 52
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0300dd

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 54
    .local v2, "frame":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "heading_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 55
    .local v4, "headingId":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "body_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, "bodyId":I
    const v6, 0x7f080274

    invoke-static {v2, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    .local v3, "heading":Landroid/widget/TextView;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 60
    const v6, 0x7f080275

    invoke-static {v2, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "body":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->setCustomView(Landroid/view/View;)V

    .line 64
    return-object v5
.end method
