.class public Lcom/airbnb/android/views/TimelineView$$ViewInjector;
.super Ljava/lang/Object;
.source "TimelineView$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/views/TimelineView;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/views/TimelineView;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08050d

    const-string/jumbo v2, "field \'mTimelineGuestAvatar\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/TimelineView;->mTimelineGuestAvatar:Lcom/airbnb/android/views/HaloImageView;

    .line 12
    const v1, 0x7f08050e

    const-string/jumbo v2, "field \'mTimelineImageView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/TimelineView;->mTimelineImageView:Landroid/widget/ImageView;

    .line 14
    const v1, 0x7f08050f

    const-string/jumbo v2, "field \'mTimelineTitleTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/TimelineView;->mTimelineTitleTextView:Lcom/airbnb/android/views/AirTextView;

    .line 16
    const v1, 0x7f080510

    const-string/jumbo v2, "field \'mTimelineSubtitleTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/TimelineView;->mTimelineSubtitleTextView:Lcom/airbnb/android/views/AirTextView;

    .line 18
    const v1, 0x7f080511

    const-string/jumbo v2, "field \'mTimelineTimeTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/TimelineView;->mTimelineTimeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 20
    const v1, 0x7f08050c

    const-string/jumbo v2, "field \'mContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/TimelineView;->mContainer:Landroid/view/View;

    .line 22
    return-void
.end method

.method public static reset(Lcom/airbnb/android/views/TimelineView;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/views/TimelineView;

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineGuestAvatar:Lcom/airbnb/android/views/HaloImageView;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineImageView:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineTitleTextView:Lcom/airbnb/android/views/AirTextView;

    .line 28
    iput-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineSubtitleTextView:Lcom/airbnb/android/views/AirTextView;

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineTimeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mContainer:Landroid/view/View;

    .line 31
    return-void
.end method
