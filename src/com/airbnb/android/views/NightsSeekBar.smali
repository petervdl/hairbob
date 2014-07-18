.class public Lcom/airbnb/android/views/NightsSeekBar;
.super Landroid/widget/FrameLayout;
.source "NightsSeekBar.java"


# instance fields
.field private mCurrentBadgeCount:I

.field private mNightsChangedListener:Lcom/airbnb/android/interfaces/NightsChangedListener;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/NightsSeekBar;->mCurrentBadgeCount:I

    .line 23
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/NightsSeekBar;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/NightsSeekBar;->mCurrentBadgeCount:I

    .line 28
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/NightsSeekBar;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/NightsSeekBar;->mCurrentBadgeCount:I

    .line 33
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/NightsSeekBar;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/NightsSeekBar;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSeekBar;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/airbnb/android/views/NightsSeekBar;->updateBadgeForProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/NightsSeekBar;)Lcom/airbnb/android/interfaces/NightsChangedListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSeekBar;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSeekBar;->mNightsChangedListener:Lcom/airbnb/android/interfaces/NightsChangedListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030120

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "content":Landroid/view/View;
    const v1, 0x7f080318

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/airbnb/android/views/NightsSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 45
    invoke-direct {p0}, Lcom/airbnb/android/views/NightsSeekBar;->updateBadgeForProgress()V

    .line 47
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/airbnb/android/views/NightsSeekBar$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/views/NightsSeekBar$1;-><init>(Lcom/airbnb/android/views/NightsSeekBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    return-void
.end method

.method private updateBadgeForProgress()V
    .registers 5

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/airbnb/android/views/NightsSeekBar;->getNights()I

    move-result v0

    .line 118
    .local v0, "nights":I
    iget v2, p0, Lcom/airbnb/android/views/NightsSeekBar;->mCurrentBadgeCount:I

    if-ne v0, v2, :cond_9

    .line 143
    :goto_8
    return-void

    .line 123
    :cond_9
    packed-switch v0, :pswitch_data_2e

    .line 138
    const v1, 0x7f020188

    .line 142
    .local v1, "resId":I
    :goto_f
    iget-object v2, p0, Lcom/airbnb/android/views/NightsSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/airbnb/android/views/NightsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 125
    .end local v1    # "resId":I
    :pswitch_1d
    const v1, 0x7f020184

    .line 126
    .restart local v1    # "resId":I
    goto :goto_f

    .line 128
    .end local v1    # "resId":I
    :pswitch_21
    const v1, 0x7f020185

    .line 129
    .restart local v1    # "resId":I
    goto :goto_f

    .line 131
    .end local v1    # "resId":I
    :pswitch_25
    const v1, 0x7f020186

    .line 132
    .restart local v1    # "resId":I
    goto :goto_f

    .line 134
    .end local v1    # "resId":I
    :pswitch_29
    const v1, 0x7f020187

    .line 135
    .restart local v1    # "resId":I
    goto :goto_f

    .line 123
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public getNights()I
    .registers 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 101
    .local v0, "progress":I
    const/16 v1, 0xd

    if-ge v0, v1, :cond_c

    .line 102
    const/4 v1, 0x1

    .line 110
    :goto_b
    return v1

    .line 103
    :cond_c
    const/16 v1, 0x26

    if-ge v0, v1, :cond_12

    .line 104
    const/4 v1, 0x2

    goto :goto_b

    .line 105
    :cond_12
    const/16 v1, 0x3f

    if-ge v0, v1, :cond_18

    .line 106
    const/4 v1, 0x3

    goto :goto_b

    .line 107
    :cond_18
    const/16 v1, 0x58

    if-ge v0, v1, :cond_1e

    .line 108
    const/4 v1, 0x4

    goto :goto_b

    .line 110
    :cond_1e
    const/4 v1, 0x5

    goto :goto_b
.end method

.method public setNightsChangedListener(Lcom/airbnb/android/interfaces/NightsChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/interfaces/NightsChangedListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/views/NightsSeekBar;->mNightsChangedListener:Lcom/airbnb/android/interfaces/NightsChangedListener;

    .line 38
    return-void
.end method
