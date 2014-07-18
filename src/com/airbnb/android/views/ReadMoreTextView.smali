.class public Lcom/airbnb/android/views/ReadMoreTextView;
.super Lcom/airbnb/android/views/AirTextView;
.source "ReadMoreTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;
    }
.end annotation


# static fields
.field private static final ALWAYS_SHOW_READ_MORE:Z = true

.field private static mEllipsisReadMore:Landroid/text/SpannableString;


# instance fields
.field private mFullText:Ljava/lang/CharSequence;

.field private mMaxLines:I

.field private mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/AirTextView;-><init>(Landroid/content/Context;)V

    .line 44
    sget-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->ELLIPSIZING_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    iput-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/AirTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    sget-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->ELLIPSIZING_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    iput-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 70
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/ReadMoreTextView;->getMaxLinesFromAttrs(Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/AirTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->ELLIPSIZING_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    iput-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 75
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/ReadMoreTextView;->getMaxLinesFromAttrs(Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/ReadMoreTextView;)Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/ReadMoreTextView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/views/ReadMoreTextView;Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;)Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/ReadMoreTextView;
    .param p1, "x1"    # Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/CharSequence;
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/airbnb/android/views/ReadMoreTextView;->getReadMore()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private doFirstPass()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/airbnb/android/views/ReadMoreTextView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/views/ReadMoreTextView$1;-><init>(Lcom/airbnb/android/views/ReadMoreTextView;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/ReadMoreTextView;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method private doSecondPass()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/airbnb/android/views/ReadMoreTextView$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/views/ReadMoreTextView$2;-><init>(Lcom/airbnb/android/views/ReadMoreTextView;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/ReadMoreTextView;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method private getMaxLinesFromAttrs(Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/airbnb/android/views/ReadMoreTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/R$styleable;->ReadMoreTextView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 81
    .local v1, "maxLines":I
    if-lez v1, :cond_14

    .line 82
    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/ReadMoreTextView;->setMaxLines(I)V

    .line 84
    :cond_14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method

.method private static getReadMore()Ljava/lang/CharSequence;
    .registers 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x0

    .line 49
    sget-object v4, Lcom/airbnb/android/views/ReadMoreTextView;->mEllipsisReadMore:Landroid/text/SpannableString;

    if-nez v4, :cond_4a

    .line 50
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    .line 51
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f0e01a5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "readMore":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 54
    .local v3, "readMoreColor":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 56
    .local v1, "length":I
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v4, Lcom/airbnb/android/views/ReadMoreTextView;->mEllipsisReadMore:Landroid/text/SpannableString;

    .line 57
    sget-object v4, Lcom/airbnb/android/views/ReadMoreTextView;->mEllipsisReadMore:Landroid/text/SpannableString;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v5, v7, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 58
    sget-object v4, Lcom/airbnb/android/views/ReadMoreTextView;->mEllipsisReadMore:Landroid/text/SpannableString;

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v5, v7, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 59
    sget-object v4, Lcom/airbnb/android/views/ReadMoreTextView;->mEllipsisReadMore:Landroid/text/SpannableString;

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f4ccccd

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4, v5, v7, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 61
    :cond_4a
    sget-object v4, Lcom/airbnb/android/views/ReadMoreTextView;->mEllipsisReadMore:Landroid/text/SpannableString;

    return-object v4
.end method


# virtual methods
.method public getMaxLines()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mMaxLines:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mFullText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    sget-object v1, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->NEED_FIRST_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    if-ne v0, v1, :cond_16

    .line 128
    sget-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->FIRST_PASS_SCHEDULED:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    iput-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 129
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-super {p0, v0}, Lcom/airbnb/android/views/AirTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 130
    invoke-direct {p0}, Lcom/airbnb/android/views/ReadMoreTextView;->doFirstPass()V

    .line 135
    :cond_12
    :goto_12
    invoke-super {p0, p1}, Lcom/airbnb/android/views/AirTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    return-void

    .line 131
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    sget-object v1, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->NEED_SECOND_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    if-ne v0, v1, :cond_12

    .line 132
    sget-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->SECOND_PASS_SCHEDULED:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    iput-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 133
    invoke-direct {p0}, Lcom/airbnb/android/views/ReadMoreTextView;->doSecondPass()V

    goto :goto_12
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Lcom/airbnb/android/views/AirTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 106
    if-eqz p2, :cond_6

    .line 121
    :cond_5
    :goto_5
    return-void

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    sget-object v1, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->SECOND_PASS_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    if-ne v0, v1, :cond_11

    .line 111
    sget-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->ELLIPSIZING_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    iput-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    goto :goto_5

    .line 112
    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    sget-object v1, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->NEED_SECOND_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    if-eq v0, v1, :cond_5

    .line 117
    iput-object p1, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mFullText:Ljava/lang/CharSequence;

    .line 118
    sget-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->NEED_FIRST_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    iput-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    goto :goto_5
.end method

.method public setMaxLines(I)V
    .registers 3
    .param p1, "maxLines"    # I

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/airbnb/android/views/AirTextView;->setMaxLines(I)V

    .line 90
    iput p1, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mMaxLines:I

    .line 91
    if-lez p1, :cond_15

    invoke-virtual {p0}, Lcom/airbnb/android/views/ReadMoreTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 92
    sget-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->NEED_FIRST_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    iput-object v0, p0, Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 94
    :cond_15
    return-void
.end method
