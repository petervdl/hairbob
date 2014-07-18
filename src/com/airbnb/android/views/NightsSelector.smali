.class public Lcom/airbnb/android/views/NightsSelector;
.super Landroid/widget/FrameLayout;
.source "NightsSelector.java"


# static fields
.field private static final CLICK_MOVEMENT_THRESHOLD:I = 0xa

.field private static final CLICK_TIME_THRESHOLD:I = 0x96

.field private static final MAX_NIGHTS:I = 0xe

.field private static final MIN_NIGHTS:I = 0x1

.field private static final SNAP_DELAY:J = 0x32L


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNightDeselectedTextColor:I

.field private mNightSelectedTextColor:I

.field private mNights:I

.field mNightsLinearLayout:Landroid/widget/LinearLayout;

.field mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

.field private mSnapRunnable:Ljava/lang/Runnable;

.field private mStartX:F

.field private mTopBottomPadding:I

.field private mTouching:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/NightsSelector;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/NightsSelector;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/NightsSelector;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/NightsSelector;I)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/NightsSelector;->snapToPoint(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/NightsSelector;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/airbnb/android/views/NightsSelector;->mTouching:Z

    return v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/views/NightsSelector;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/airbnb/android/views/NightsSelector;->mTouching:Z

    return p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/NightsSelector;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;

    .prologue
    .line 22
    iget v0, p0, Lcom/airbnb/android/views/NightsSelector;->mStartX:F

    return v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/views/NightsSelector;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/airbnb/android/views/NightsSelector;->mStartX:F

    return p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/views/NightsSelector;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSelector;->mSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/views/NightsSelector;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSelector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/views/NightsSelector;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/views/NightsSelector;->updateTextColors()V

    return-void
.end method

.method static synthetic access$602(Lcom/airbnb/android/views/NightsSelector;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/airbnb/android/views/NightsSelector;->mTopBottomPadding:I

    return p1
.end method

.method static synthetic access$700(Lcom/airbnb/android/views/NightsSelector;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/NightsSelector;->populateScrollViewWithViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$802(Lcom/airbnb/android/views/NightsSelector;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/airbnb/android/views/NightsSelector;->mNights:I

    return p1
.end method

.method static synthetic access$900(Lcom/airbnb/android/views/NightsSelector;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/views/NightsSelector;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/views/NightsSelector;->focusToNights()V

    return-void
.end method

.method private createNightsView(ILandroid/content/Context;)Landroid/view/View;
    .registers 11
    .param p1, "nights"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 231
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030122

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 232
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f08031a

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 233
    .local v1, "textView":Landroid/widget/TextView;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2f

    .line 237
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcom/airbnb/android/views/NightsSelector;->mTopBottomPadding:I

    invoke-virtual {v0, v3, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 239
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2e
    :goto_2e
    return-object v2

    .line 242
    :cond_2f
    const/16 v3, 0xe

    if-ne p1, v3, :cond_2e

    .line 243
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    .restart local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcom/airbnb/android/views/NightsSelector;->mTopBottomPadding:I

    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 245
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e
.end method

.method private focusToNights()V
    .registers 8

    .prologue
    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_51

    .line 196
    iget-object v5, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_52

    const v5, 0x7f08031a

    invoke-static {v2, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lcom/airbnb/android/views/NightsSelector;->mNights:I

    if-ne v5, v6, :cond_52

    .line 199
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 200
    .local v4, "xy":[I
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 202
    const/4 v5, 0x0

    aget v5, v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 203
    .local v3, "viewMid":I
    iget-object v5, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    invoke-static {v5}, Lcom/airbnb/android/utils/MiscUtils;->getScreenLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int v1, v3, v5

    .line 205
    .local v1, "scrollBy":I
    iget-object v5, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    new-instance v6, Lcom/airbnb/android/views/NightsSelector$6;

    invoke-direct {v6, p0, v1}, Lcom/airbnb/android/views/NightsSelector$6;-><init>(Lcom/airbnb/android/views/NightsSelector;I)V

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 215
    .end local v1    # "scrollBy":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewMid":I
    .end local v4    # "xy":[I
    :cond_51
    return-void

    .line 195
    .restart local v2    # "view":Landroid/view/View;
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030123

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "content":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/airbnb/android/views/NightsSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/views/NightsSelector;->mNightSelectedTextColor:I

    .line 63
    const v2, 0x7f0a0067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/views/NightsSelector;->mNightDeselectedTextColor:I

    .line 65
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getNights()I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/views/NightsSelector;->mNights:I

    .line 66
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/views/NightsSelector;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v2, Lcom/airbnb/android/views/NightsSelector$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/views/NightsSelector$1;-><init>(Lcom/airbnb/android/views/NightsSelector;)V

    iput-object v2, p0, Lcom/airbnb/android/views/NightsSelector;->mSnapRunnable:Ljava/lang/Runnable;

    .line 74
    iget-object v2, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    new-instance v3, Lcom/airbnb/android/views/NightsSelector$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/views/NightsSelector$2;-><init>(Lcom/airbnb/android/views/NightsSelector;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    iget-object v2, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    new-instance v3, Lcom/airbnb/android/views/NightsSelector$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/views/NightsSelector$3;-><init>(Lcom/airbnb/android/views/NightsSelector;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->setOnScrollListener(Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;)V

    .line 118
    iget-object v2, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    new-instance v3, Lcom/airbnb/android/views/NightsSelector$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/views/NightsSelector$4;-><init>(Lcom/airbnb/android/views/NightsSelector;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method private populateScrollViewWithViews(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xe

    if-gt v0, v1, :cond_13

    .line 219
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/views/NightsSelector;->createNightsView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_13
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/airbnb/android/views/NightsSelector$7;

    invoke-direct {v2, p0}, Lcom/airbnb/android/views/NightsSelector$7;-><init>(Lcom/airbnb/android/views/NightsSelector;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void
.end method

.method private snapToPoint(I)V
    .registers 12
    .param p1, "pointToCenter"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v0, v8, :cond_4e

    .line 129
    iget-object v8, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_4f

    .line 132
    const/4 v8, 0x2

    new-array v7, v8, [I

    .line 133
    .local v7, "xy":[I
    invoke-virtual {v2, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 135
    const/4 v8, 0x0

    aget v5, v7, v8

    .line 136
    .local v5, "viewStart":I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 137
    .local v6, "viewWidth":I
    add-int v3, v5, v6

    .line 143
    .local v3, "viewEnd":I
    if-ge v5, p1, :cond_24

    if-gt v3, p1, :cond_34

    :cond_24
    if-nez v0, :cond_28

    if-ge v5, p1, :cond_34

    :cond_28
    iget-object v8, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_4f

    if-gt v3, p1, :cond_4f

    .line 146
    :cond_34
    div-int/lit8 v8, v6, 0x2

    add-int v4, v5, v8

    .line 147
    .local v4, "viewMid":I
    iget-object v8, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    invoke-static {v8}, Lcom/airbnb/android/utils/MiscUtils;->getScreenLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    sub-int v1, v4, v8

    .line 148
    .local v1, "scrollBy":I
    iget-object v8, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    new-instance v9, Lcom/airbnb/android/views/NightsSelector$5;

    invoke-direct {v9, p0, v1, v2}, Lcom/airbnb/android/views/NightsSelector$5;-><init>(Lcom/airbnb/android/views/NightsSelector;ILandroid/view/View;)V

    invoke-virtual {v8, v9}, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 162
    .end local v1    # "scrollBy":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewEnd":I
    .end local v4    # "viewMid":I
    .end local v5    # "viewStart":I
    .end local v6    # "viewWidth":I
    .end local v7    # "xy":[I
    :cond_4e
    return-void

    .line 128
    .restart local v2    # "view":Landroid/view/View;
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateTextColors()V
    .registers 10

    .prologue
    .line 165
    iget-object v8, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    invoke-static {v8}, Lcom/airbnb/android/utils/MiscUtils;->getScreenLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 166
    .local v1, "midPoint":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v8, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v0, v8, :cond_55

    .line 167
    iget-object v8, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 169
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_4c

    .line 170
    const/4 v8, 0x2

    new-array v7, v8, [I

    .line 171
    .local v7, "xy":[I
    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 173
    const/4 v8, 0x0

    aget v5, v7, v8

    .line 174
    .local v5, "viewStart":I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 175
    .local v6, "viewWidth":I
    add-int v4, v5, v6

    .line 178
    .local v4, "viewEnd":I
    const v8, 0x7f08031a

    invoke-static {v3, v8}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 182
    .local v2, "textView":Landroid/widget/TextView;
    if-ge v5, v1, :cond_37

    if-gt v4, v1, :cond_47

    :cond_37
    if-nez v0, :cond_3b

    if-ge v5, v1, :cond_47

    :cond_3b
    iget-object v8, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_4f

    if-gt v4, v1, :cond_4f

    .line 185
    :cond_47
    iget v8, p0, Lcom/airbnb/android/views/NightsSelector;->mNightSelectedTextColor:I

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v4    # "viewEnd":I
    .end local v5    # "viewStart":I
    .end local v6    # "viewWidth":I
    .end local v7    # "xy":[I
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 188
    .restart local v2    # "textView":Landroid/widget/TextView;
    .restart local v4    # "viewEnd":I
    .restart local v5    # "viewStart":I
    .restart local v6    # "viewWidth":I
    .restart local v7    # "xy":[I
    :cond_4f
    iget v8, p0, Lcom/airbnb/android/views/NightsSelector;->mNightDeselectedTextColor:I

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4c

    .line 192
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "viewEnd":I
    .end local v5    # "viewStart":I
    .end local v6    # "viewWidth":I
    .end local v7    # "xy":[I
    :cond_55
    return-void
.end method


# virtual methods
.method public getNights()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Lcom/airbnb/android/views/NightsSelector;->mNights:I

    return v0
.end method
