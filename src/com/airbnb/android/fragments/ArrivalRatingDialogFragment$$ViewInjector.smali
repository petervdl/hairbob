.class public Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ArrivalRatingDialogFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0800b4

    const-string/jumbo v2, "field \'mRatingStars\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/RatingBar;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mRatingStars:Landroid/widget/RatingBar;

    .line 12
    const v1, 0x7f0800b5

    const-string/jumbo v2, "field \'mFeedbackEditText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mFeedbackEditText:Landroid/widget/EditText;

    .line 14
    const v1, 0x7f0800b6

    const-string/jumbo v2, "field \'mSubmitButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mSubmitButton:Landroid/widget/Button;

    .line 16
    const v1, 0x7f080026

    const-string/jumbo v2, "field \'mLoaderFrame\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LoaderFrame;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 18
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mRatingStars:Landroid/widget/RatingBar;

    .line 22
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mFeedbackEditText:Landroid/widget/EditText;

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mSubmitButton:Landroid/widget/Button;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 25
    return-void
.end method
