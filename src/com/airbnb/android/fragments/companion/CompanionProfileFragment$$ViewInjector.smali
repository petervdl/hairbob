.class public Lcom/airbnb/android/fragments/companion/CompanionProfileFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "CompanionProfileFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08017d

    const-string/jumbo v2, "field \'mCompanionProfilePicture\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->mCompanionProfilePicture:Lcom/airbnb/android/views/AirImageView;

    .line 12
    const v1, 0x7f08017e

    const-string/jumbo v2, "field \'mCompanionName\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->mCompanionName:Lcom/airbnb/android/views/AirTextView;

    .line 14
    const v1, 0x7f08017f

    const-string/jumbo v2, "field \'mAboutMeTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->mAboutMeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 16
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->mCompanionProfilePicture:Lcom/airbnb/android/views/AirImageView;

    .line 20
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->mCompanionName:Lcom/airbnb/android/views/AirTextView;

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->mAboutMeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 22
    return-void
.end method
