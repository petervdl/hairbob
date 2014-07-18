.class public Lcom/airbnb/android/views/EmptyResults;
.super Landroid/widget/LinearLayout;
.source "EmptyResults.java"


# instance fields
.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/EmptyResults;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object v4, Lcom/airbnb/android/R$styleable;->EmptyResults:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "titleText":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "subTitleText":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    invoke-virtual {p0, v5}, Lcom/airbnb/android/views/EmptyResults;->setOrientation(I)V

    .line 28
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/EmptyResults;->setGravity(I)V

    .line 30
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 32
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03005c

    invoke-virtual {v1, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    const v4, 0x7f080108

    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/EmptyResults;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/airbnb/android/views/EmptyResults;->mTitle:Landroid/widget/TextView;

    .line 35
    iget-object v4, p0, Lcom/airbnb/android/views/EmptyResults;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v4, 0x7f080109

    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/EmptyResults;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/airbnb/android/views/EmptyResults;->mSubTitle:Landroid/widget/TextView;

    .line 37
    iget-object v4, p0, Lcom/airbnb/android/views/EmptyResults;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method


# virtual methods
.method public setSubTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/views/EmptyResults;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public setSubtitle(I)V
    .registers 3
    .param p1, "subtitleRes"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/views/EmptyResults;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "titleRes"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/views/EmptyResults;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/views/EmptyResults;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
