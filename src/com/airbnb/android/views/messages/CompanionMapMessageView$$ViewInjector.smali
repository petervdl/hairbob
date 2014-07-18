.class public Lcom/airbnb/android/views/messages/CompanionMapMessageView$$ViewInjector;
.super Ljava/lang/Object;
.source "CompanionMapMessageView$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/views/messages/CompanionMapMessageView;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/views/messages/CompanionMapMessageView;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080093

    const-string/jumbo v2, "field \'mMessageText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessageText:Lcom/airbnb/android/views/AirTextView;

    .line 12
    const v1, 0x7f080094

    const-string/jumbo v2, "field \'mMessageStatus\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessageStatus:Lcom/airbnb/android/views/AirTextView;

    .line 14
    const v1, 0x7f080098

    const-string/jumbo v2, "field \'mAvatarThumbnail\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

    .line 16
    const v1, 0x7f080097

    const-string/jumbo v2, "field \'mAvatarGap\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarGap:Landroid/view/View;

    .line 18
    const v1, 0x7f080095

    const-string/jumbo v2, "field \'mMap\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Lcom/airbnb/android/views/StaticMapView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMap:Lcom/airbnb/android/views/StaticMapView;

    .line 20
    const v1, 0x7f080096

    const-string/jumbo v2, "field \'mRecommendationsContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mRecommendationsContainer:Landroid/widget/LinearLayout;

    .line 22
    return-void
.end method

.method public static reset(Lcom/airbnb/android/views/messages/CompanionMapMessageView;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/views/messages/CompanionMapMessageView;

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessageText:Lcom/airbnb/android/views/AirTextView;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessageStatus:Lcom/airbnb/android/views/AirTextView;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

    .line 28
    iput-object v0, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarGap:Landroid/view/View;

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMap:Lcom/airbnb/android/views/StaticMapView;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mRecommendationsContainer:Landroid/widget/LinearLayout;

    .line 31
    return-void
.end method
