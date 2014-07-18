.class public Lcom/airbnb/android/views/PropertySpinnerLoader;
.super Landroid/widget/FrameLayout;
.source "PropertySpinnerLoader.java"


# static fields
.field public static final FRAMERATE:I = 0x18

.field public static final PERIOD:I = 0x4b0


# instance fields
.field private handler:Landroid/os/Handler;

.field private index:I

.field private ivLoader:Landroid/widget/ImageView;

.field private resources:[I

.field runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/16 v0, 0x5a

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->resources:[I

    .line 148
    new-instance v0, Lcom/airbnb/android/views/PropertySpinnerLoader$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/views/PropertySpinnerLoader$1;-><init>(Lcom/airbnb/android/views/PropertySpinnerLoader;)V

    iput-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->runnable:Ljava/lang/Runnable;

    .line 116
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/PropertySpinnerLoader;->init(Landroid/content/Context;)V

    .line 117
    return-void

    .line 23
    nop

    :array_18
    .array-data 4
        0x7f020194
        0x7f020195
        0x7f020196
        0x7f020197
        0x7f020198
        0x7f020199
        0x7f02019a
        0x7f02019b
        0x7f02019c
        0x7f02019d
        0x7f02019e
        0x7f02019f
        0x7f0201a0
        0x7f0201a1
        0x7f0201a2
        0x7f0201a3
        0x7f0201a4
        0x7f0201a5
        0x7f0201a6
        0x7f0201a7
        0x7f0201a8
        0x7f0201a9
        0x7f0201aa
        0x7f0201ab
        0x7f0201ac
        0x7f0201ad
        0x7f0201ae
        0x7f0201af
        0x7f0201b0
        0x7f0201b1
        0x7f0201b2
        0x7f0201b3
        0x7f0201b4
        0x7f0201b5
        0x7f0201b6
        0x7f0201b7
        0x7f0201b8
        0x7f0201b9
        0x7f0201ba
        0x7f0201bb
        0x7f0201bc
        0x7f0201bd
        0x7f0201be
        0x7f0201bf
        0x7f0201c0
        0x7f0201c1
        0x7f0201c2
        0x7f0201c3
        0x7f0201c4
        0x7f0201c5
        0x7f0201c6
        0x7f0201c7
        0x7f0201c8
        0x7f0201c9
        0x7f0201ca
        0x7f0201cb
        0x7f0201cc
        0x7f0201cd
        0x7f0201ce
        0x7f0201cf
        0x7f0201d0
        0x7f0201d1
        0x7f0201d2
        0x7f0201d3
        0x7f0201d4
        0x7f0201d5
        0x7f0201d6
        0x7f0201d7
        0x7f0201d8
        0x7f0201d9
        0x7f0201da
        0x7f0201db
        0x7f0201dc
        0x7f0201dd
        0x7f0201de
        0x7f0201df
        0x7f0201e0
        0x7f0201e1
        0x7f0201e2
        0x7f0201e3
        0x7f0201e4
        0x7f0201e5
        0x7f0201e6
        0x7f0201e7
        0x7f0201e8
        0x7f0201e9
        0x7f0201ea
        0x7f0201eb
        0x7f0201ec
        0x7f0201ed
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/16 v0, 0x5a

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->resources:[I

    .line 148
    new-instance v0, Lcom/airbnb/android/views/PropertySpinnerLoader$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/views/PropertySpinnerLoader$1;-><init>(Lcom/airbnb/android/views/PropertySpinnerLoader;)V

    iput-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->runnable:Ljava/lang/Runnable;

    .line 121
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/PropertySpinnerLoader;->init(Landroid/content/Context;)V

    .line 122
    return-void

    .line 23
    nop

    :array_18
    .array-data 4
        0x7f020194
        0x7f020195
        0x7f020196
        0x7f020197
        0x7f020198
        0x7f020199
        0x7f02019a
        0x7f02019b
        0x7f02019c
        0x7f02019d
        0x7f02019e
        0x7f02019f
        0x7f0201a0
        0x7f0201a1
        0x7f0201a2
        0x7f0201a3
        0x7f0201a4
        0x7f0201a5
        0x7f0201a6
        0x7f0201a7
        0x7f0201a8
        0x7f0201a9
        0x7f0201aa
        0x7f0201ab
        0x7f0201ac
        0x7f0201ad
        0x7f0201ae
        0x7f0201af
        0x7f0201b0
        0x7f0201b1
        0x7f0201b2
        0x7f0201b3
        0x7f0201b4
        0x7f0201b5
        0x7f0201b6
        0x7f0201b7
        0x7f0201b8
        0x7f0201b9
        0x7f0201ba
        0x7f0201bb
        0x7f0201bc
        0x7f0201bd
        0x7f0201be
        0x7f0201bf
        0x7f0201c0
        0x7f0201c1
        0x7f0201c2
        0x7f0201c3
        0x7f0201c4
        0x7f0201c5
        0x7f0201c6
        0x7f0201c7
        0x7f0201c8
        0x7f0201c9
        0x7f0201ca
        0x7f0201cb
        0x7f0201cc
        0x7f0201cd
        0x7f0201ce
        0x7f0201cf
        0x7f0201d0
        0x7f0201d1
        0x7f0201d2
        0x7f0201d3
        0x7f0201d4
        0x7f0201d5
        0x7f0201d6
        0x7f0201d7
        0x7f0201d8
        0x7f0201d9
        0x7f0201da
        0x7f0201db
        0x7f0201dc
        0x7f0201dd
        0x7f0201de
        0x7f0201df
        0x7f0201e0
        0x7f0201e1
        0x7f0201e2
        0x7f0201e3
        0x7f0201e4
        0x7f0201e5
        0x7f0201e6
        0x7f0201e7
        0x7f0201e8
        0x7f0201e9
        0x7f0201ea
        0x7f0201eb
        0x7f0201ec
        0x7f0201ed
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/16 v0, 0x5a

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->resources:[I

    .line 148
    new-instance v0, Lcom/airbnb/android/views/PropertySpinnerLoader$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/views/PropertySpinnerLoader$1;-><init>(Lcom/airbnb/android/views/PropertySpinnerLoader;)V

    iput-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->runnable:Ljava/lang/Runnable;

    .line 126
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/PropertySpinnerLoader;->init(Landroid/content/Context;)V

    .line 127
    return-void

    .line 23
    nop

    :array_18
    .array-data 4
        0x7f020194
        0x7f020195
        0x7f020196
        0x7f020197
        0x7f020198
        0x7f020199
        0x7f02019a
        0x7f02019b
        0x7f02019c
        0x7f02019d
        0x7f02019e
        0x7f02019f
        0x7f0201a0
        0x7f0201a1
        0x7f0201a2
        0x7f0201a3
        0x7f0201a4
        0x7f0201a5
        0x7f0201a6
        0x7f0201a7
        0x7f0201a8
        0x7f0201a9
        0x7f0201aa
        0x7f0201ab
        0x7f0201ac
        0x7f0201ad
        0x7f0201ae
        0x7f0201af
        0x7f0201b0
        0x7f0201b1
        0x7f0201b2
        0x7f0201b3
        0x7f0201b4
        0x7f0201b5
        0x7f0201b6
        0x7f0201b7
        0x7f0201b8
        0x7f0201b9
        0x7f0201ba
        0x7f0201bb
        0x7f0201bc
        0x7f0201bd
        0x7f0201be
        0x7f0201bf
        0x7f0201c0
        0x7f0201c1
        0x7f0201c2
        0x7f0201c3
        0x7f0201c4
        0x7f0201c5
        0x7f0201c6
        0x7f0201c7
        0x7f0201c8
        0x7f0201c9
        0x7f0201ca
        0x7f0201cb
        0x7f0201cc
        0x7f0201cd
        0x7f0201ce
        0x7f0201cf
        0x7f0201d0
        0x7f0201d1
        0x7f0201d2
        0x7f0201d3
        0x7f0201d4
        0x7f0201d5
        0x7f0201d6
        0x7f0201d7
        0x7f0201d8
        0x7f0201d9
        0x7f0201da
        0x7f0201db
        0x7f0201dc
        0x7f0201dd
        0x7f0201de
        0x7f0201df
        0x7f0201e0
        0x7f0201e1
        0x7f0201e2
        0x7f0201e3
        0x7f0201e4
        0x7f0201e5
        0x7f0201e6
        0x7f0201e7
        0x7f0201e8
        0x7f0201e9
        0x7f0201ea
        0x7f0201eb
        0x7f0201ec
        0x7f0201ed
    .end array-data
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/PropertySpinnerLoader;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PropertySpinnerLoader;

    .prologue
    .line 15
    iget v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->index:I

    return v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/views/PropertySpinnerLoader;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PropertySpinnerLoader;
    .param p1, "x1"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->index:I

    return p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/PropertySpinnerLoader;)[I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PropertySpinnerLoader;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->resources:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/PropertySpinnerLoader;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PropertySpinnerLoader;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->ivLoader:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/views/PropertySpinnerLoader;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PropertySpinnerLoader;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 130
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 131
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0301d4

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "content":Landroid/view/View;
    const v3, 0x7f080505

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->ivLoader:Landroid/widget/ImageView;

    .line 134
    const/high16 v3, 0x41700000

    invoke-virtual {p0}, Lcom/airbnb/android/views/PropertySpinnerLoader;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 135
    .local v2, "padding":I
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/airbnb/android/views/PropertySpinnerLoader;->setPadding(IIII)V

    .line 136
    const v3, 0x7f020193

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/PropertySpinnerLoader;->setBackgroundResource(I)V

    .line 137
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->handler:Landroid/os/Handler;

    .line 138
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 163
    invoke-virtual {p0}, Lcom/airbnb/android/views/PropertySpinnerLoader;->stopAnimation()V

    .line 164
    return-void
.end method

.method public startAnimation()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method

.method public stopAnimation()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 146
    return-void
.end method
