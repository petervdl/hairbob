.class public Lcom/airbnb/android/views/TimelineView;
.super Landroid/widget/FrameLayout;
.source "TimelineView.java"


# instance fields
.field mContainer:Landroid/view/View;

.field mTimelineGuestAvatar:Lcom/airbnb/android/views/HaloImageView;

.field mTimelineImageView:Landroid/widget/ImageView;

.field mTimelineSubtitleTextView:Lcom/airbnb/android/views/AirTextView;

.field mTimelineTimeTextView:Lcom/airbnb/android/views/AirTextView;

.field mTimelineTitleTextView:Lcom/airbnb/android/views/AirTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301df

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 32
    return-void
.end method


# virtual methods
.method public setActive(Z)V
    .registers 5
    .param p1, "active"    # Z

    .prologue
    .line 64
    if-eqz p1, :cond_17

    .line 65
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/airbnb/android/views/TimelineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    :goto_16
    return-void

    .line 67
    :cond_17
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/airbnb/android/views/TimelineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_16
.end method

.method public setIcon(I)V
    .registers 4
    .param p1, "iconResourceId"    # I

    .prologue
    .line 35
    const v1, 0x7f0a00b4

    invoke-static {p1, v1}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdStateList(II)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v0

    .line 36
    .local v0, "drawable":Lcom/airbnb/android/utils/ColorizedDrawable;
    iget-object v1, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method

.method public setSubtitle(I)V
    .registers 4
    .param p1, "subtitleResourceId"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineSubtitleTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/TimelineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineSubtitleTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public setTime(I)V
    .registers 4
    .param p1, "timeResourceId"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineTimeTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/TimelineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 3
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineTimeTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setTitle(I)V
    .registers 4
    .param p1, "titleResourceId"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineTitleTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/TimelineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineTitleTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public showGuestAvatar(Lcom/airbnb/android/models/User;)V
    .registers 4
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineGuestAvatar:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 89
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineGuestAvatar:Lcom/airbnb/android/views/HaloImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/HaloImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public showSubtitle(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_9

    .line 73
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineSubtitleTextView:Lcom/airbnb/android/views/AirTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    .line 77
    :goto_8
    return-void

    .line 75
    :cond_9
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineSubtitleTextView:Lcom/airbnb/android/views/AirTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    goto :goto_8
.end method

.method public showTime(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 80
    if-eqz p1, :cond_9

    .line 81
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineTimeTextView:Lcom/airbnb/android/views/AirTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    .line 85
    :goto_8
    return-void

    .line 83
    :cond_9
    iget-object v0, p0, Lcom/airbnb/android/views/TimelineView;->mTimelineTimeTextView:Lcom/airbnb/android/views/AirTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    goto :goto_8
.end method
