.class public Lcom/airbnb/android/views/groups/MultilineBadgedTextView;
.super Landroid/widget/LinearLayout;
.source "MultilineBadgedTextView.java"


# instance fields
.field private mFirstBadge:Landroid/widget/TextView;

.field private mFirstLine:Landroid/widget/TextView;

.field private mFullText:Landroid/widget/TextView;

.field private mSecondBadge:Landroid/widget/TextView;

.field private mSecondLine:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030117

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->setupViews()V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFirstLine:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondLine:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFirstBadge:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondBadge:Landroid/widget/TextView;

    return-object v0
.end method

.method private setupViews()V
    .registers 2

    .prologue
    .line 29
    const v0, 0x7f0802fe

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0802ff

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFirstLine:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f080301

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondLine:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f080300

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFirstBadge:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f080302

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondBadge:Landroid/widget/TextView;

    .line 34
    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;I)V
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "notificationCount"    # I

    .prologue
    const/16 v4, 0x8

    .line 37
    iget-object v2, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object v2, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v2, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v2, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFirstBadge:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v2, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondBadge:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    invoke-static {p1}, Lcom/airbnb/android/utils/MiscUtils;->stripString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "nameText":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 44
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    if-lez p2, :cond_36

    .line 45
    new-instance v2, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;

    invoke-direct {v2, p0, p2}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;-><init>(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    iget-object v2, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_35
    return-void

    .line 77
    :cond_36
    iget-object v2, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_35
.end method
