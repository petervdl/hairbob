.class public Lcom/airbnb/android/views/EllipsizingTextView;
.super Lcom/airbnb/android/views/AirTextView;
.source "EllipsizingTextView.java"


# instance fields
.field private dontUpdate:Z

.field private fullText:Ljava/lang/String;

.field private maxLines:I

.field private needToReEllipsize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/AirTextView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/AirTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/EllipsizingTextView;->getMaxLinesFromAttrs(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/AirTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/EllipsizingTextView;->getMaxLinesFromAttrs(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/EllipsizingTextView;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/EllipsizingTextView;

    .prologue
    .line 23
    iget v0, p0, Lcom/airbnb/android/views/EllipsizingTextView;->maxLines:I

    return v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/views/EllipsizingTextView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/EllipsizingTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/airbnb/android/views/EllipsizingTextView;->dontUpdate:Z

    return p1
.end method

.method private ellipsizeText()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/airbnb/android/views/EllipsizingTextView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/views/EllipsizingTextView$1;-><init>(Lcom/airbnb/android/views/EllipsizingTextView;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/EllipsizingTextView;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method private getMaxLinesFromAttrs(Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/airbnb/android/views/EllipsizingTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/R$styleable;->EllipsizingTextView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 47
    .local v1, "maxLines":I
    if-lez v1, :cond_14

    .line 48
    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/EllipsizingTextView;->setMaxLines(I)V

    .line 50
    :cond_14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method


# virtual methods
.method public getMaxLines()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/airbnb/android/views/EllipsizingTextView;->maxLines:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/airbnb/android/views/EllipsizingTextView;->fullText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/airbnb/android/views/EllipsizingTextView;->needToReEllipsize:Z

    if-eqz v0, :cond_f

    .line 83
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-super {p0, v0}, Lcom/airbnb/android/views/AirTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    invoke-direct {p0}, Lcom/airbnb/android/views/EllipsizingTextView;->ellipsizeText()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/EllipsizingTextView;->needToReEllipsize:Z

    .line 87
    :cond_f
    invoke-super {p0, p1}, Lcom/airbnb/android/views/AirTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Lcom/airbnb/android/views/AirTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 70
    iget-boolean v0, p0, Lcom/airbnb/android/views/EllipsizingTextView;->dontUpdate:Z

    if-ne v0, v1, :cond_c

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/EllipsizingTextView;->dontUpdate:Z

    .line 77
    :goto_b
    return-void

    .line 74
    :cond_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/EllipsizingTextView;->fullText:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/airbnb/android/views/EllipsizingTextView;->needToReEllipsize:Z

    goto :goto_b
.end method

.method public setMaxLines(I)V
    .registers 3
    .param p1, "maxLines"    # I

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/airbnb/android/views/AirTextView;->setMaxLines(I)V

    .line 56
    iput p1, p0, Lcom/airbnb/android/views/EllipsizingTextView;->maxLines:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/EllipsizingTextView;->needToReEllipsize:Z

    .line 58
    return-void
.end method
