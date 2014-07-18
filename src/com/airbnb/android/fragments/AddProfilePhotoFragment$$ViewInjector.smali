.class public Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "AddProfilePhotoFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/AddProfilePhotoFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/AddProfilePhotoFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08012f

    const-string/jumbo v2, "field \'mWelcome\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AutoScaleTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mWelcome:Lcom/airbnb/android/views/AutoScaleTextView;

    .line 12
    const v1, 0x7f08013b

    const-string/jumbo v2, "field \'mMyImage\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mMyImage:Lcom/airbnb/android/views/HaloImageView;

    .line 14
    const v1, 0x7f080132

    const-string/jumbo v2, "field \'mConfirmExistingPhotoLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mConfirmExistingPhotoLayout:Landroid/widget/LinearLayout;

    .line 16
    const v1, 0x7f080135

    const-string/jumbo v2, "field \'mTakeOrSelectPhotoLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mTakeOrSelectPhotoLayout:Landroid/widget/LinearLayout;

    .line 18
    const v1, 0x7f080131

    const-string/jumbo v2, "field \'mDescription\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mDescription:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f080138

    const-string/jumbo v2, "field \'mHostImageLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostImageLayout:Landroid/view/View;

    .line 22
    const v1, 0x7f08013c

    const-string/jumbo v2, "field \'mMyName\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mMyName:Landroid/widget/TextView;

    .line 24
    const v1, 0x7f080139

    const-string/jumbo v2, "field \'mHostImage\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostImage:Lcom/airbnb/android/views/HaloImageView;

    .line 26
    const v1, 0x7f08013a

    const-string/jumbo v2, "field \'mHostName\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostName:Landroid/widget/TextView;

    .line 28
    const v1, 0x7f08012e

    const-string/jumbo v2, "field \'mTopImage\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mTopImage:Landroid/widget/ImageView;

    .line 30
    const v1, 0x7f080136

    const-string/jumbo v2, "method \'onTakePhotoClick\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector$1;-><init>(Lcom/airbnb/android/fragments/AddProfilePhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f080137

    const-string/jumbo v2, "method \'onSelectPhotoClick\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector$2;

    invoke-direct {v1, p1}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector$2;-><init>(Lcom/airbnb/android/fragments/AddProfilePhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f080134

    const-string/jumbo v2, "method \'onConfirmPhotoClick\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector$3;

    invoke-direct {v1, p1}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector$3;-><init>(Lcom/airbnb/android/fragments/AddProfilePhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f080133

    const-string/jumbo v2, "method \'onChangePhotoClick\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector$4;

    invoke-direct {v1, p1}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector$4;-><init>(Lcom/airbnb/android/fragments/AddProfilePhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/AddProfilePhotoFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/AddProfilePhotoFragment;

    .prologue
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mWelcome:Lcom/airbnb/android/views/AutoScaleTextView;

    .line 70
    iput-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mMyImage:Lcom/airbnb/android/views/HaloImageView;

    .line 71
    iput-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mConfirmExistingPhotoLayout:Landroid/widget/LinearLayout;

    .line 72
    iput-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mTakeOrSelectPhotoLayout:Landroid/widget/LinearLayout;

    .line 73
    iput-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mDescription:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostImageLayout:Landroid/view/View;

    .line 75
    iput-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mMyName:Landroid/widget/TextView;

    .line 76
    iput-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostImage:Lcom/airbnb/android/views/HaloImageView;

    .line 77
    iput-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostName:Landroid/widget/TextView;

    .line 78
    iput-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mTopImage:Landroid/widget/ImageView;

    .line 79
    return-void
.end method
