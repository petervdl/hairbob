.class public Lcom/airbnb/android/views/groups/ExpandableTextView;
.super Landroid/widget/LinearLayout;
.source "ExpandableTextView.java"


# static fields
.field private static final MAX_LINES:I = 0x14


# instance fields
.field private mContinueReading:Landroid/widget/TextView;

.field private mFakeText:Landroid/widget/TextView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030118

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ExpandableTextView;->setupViews()V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/groups/ExpandableTextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/groups/ExpandableTextView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView;->mFakeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/groups/ExpandableTextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/groups/ExpandableTextView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView;->mContinueReading:Landroid/widget/TextView;

    return-object v0
.end method

.method private setupViews()V
    .registers 2

    .prologue
    .line 27
    const v0, 0x7f080303

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/ExpandableTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView;->mText:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f080305

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/ExpandableTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView;->mFakeText:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f080304

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/ExpandableTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView;->mContinueReading:Landroid/widget/TextView;

    .line 30
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView;->mContinueReading:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView;->mFakeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView;->mFakeText:Landroid/widget/TextView;

    new-instance v1, Lcom/airbnb/android/views/groups/ExpandableTextView$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/groups/ExpandableTextView$1;-><init>(Lcom/airbnb/android/views/groups/ExpandableTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method
