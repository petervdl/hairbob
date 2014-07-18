.class public Lcom/airbnb/android/views/ZenDialogHeader;
.super Landroid/widget/LinearLayout;
.source "ZenDialogHeader.java"


# instance fields
.field private subtitleTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x8

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0301e7

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    sget-object v3, Lcom/airbnb/android/R$styleable;->ZenDialogHeader:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 25
    .local v0, "a":Landroid/content/res/TypedArray;
    const v3, 0x7f08001f

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/ZenDialogHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/views/ZenDialogHeader;->titleTextView:Landroid/widget/TextView;

    .line 26
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "titleText":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 28
    iget-object v3, p0, Lcom/airbnb/android/views/ZenDialogHeader;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    :goto_30
    const v3, 0x7f080020

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/ZenDialogHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/views/ZenDialogHeader;->subtitleTextView:Landroid/widget/TextView;

    .line 34
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "subtitleText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 36
    iget-object v3, p0, Lcom/airbnb/android/views/ZenDialogHeader;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    :goto_4b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void

    .line 30
    .end local v1    # "subtitleText":Ljava/lang/String;
    :cond_4f
    iget-object v3, p0, Lcom/airbnb/android/views/ZenDialogHeader;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 38
    .restart local v1    # "subtitleText":Ljava/lang/String;
    :cond_55
    iget-object v3, p0, Lcom/airbnb/android/views/ZenDialogHeader;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4b
.end method


# virtual methods
.method public getSubtitleTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/views/ZenDialogHeader;->subtitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/views/ZenDialogHeader;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setSubtitle(I)V
    .registers 4
    .param p1, "subtitleRes"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/views/ZenDialogHeader;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v0, p0, Lcom/airbnb/android/views/ZenDialogHeader;->subtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .registers 4
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/views/ZenDialogHeader;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/airbnb/android/views/ZenDialogHeader;->subtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public setTitle(I)V
    .registers 4
    .param p1, "titleRes"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/views/ZenDialogHeader;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    iget-object v0, p0, Lcom/airbnb/android/views/ZenDialogHeader;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/views/ZenDialogHeader;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/airbnb/android/views/ZenDialogHeader;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    return-void
.end method
