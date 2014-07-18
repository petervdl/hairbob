.class public Lcom/airbnb/android/views/PriceEditText;
.super Landroid/widget/LinearLayout;
.source "PriceEditText.java"


# instance fields
.field private mHideIfZero:Z

.field private mPriceEditText:Landroid/widget/EditText;

.field private mPriceTagLeft:Landroid/widget/TextView;

.field private mPriceTagRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301a5

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/PriceEditText;->setupViews(Landroid/content/res/TypedArray;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301a5

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/views/PriceEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/R$styleable;->PriceEditText:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/airbnb/android/views/PriceEditText;->setupViews(Landroid/content/res/TypedArray;)V

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/PriceEditText;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PriceEditText;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private setupViews(Landroid/content/res/TypedArray;)V
    .registers 8
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const v5, 0x7f0b0095

    .line 50
    const v3, 0x7f08043c

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/PriceEditText;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceTagLeft:Landroid/widget/TextView;

    .line 51
    const v3, 0x7f08043e

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/PriceEditText;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceTagRight:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Lcom/airbnb/android/views/PriceEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 54
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/airbnb/android/views/PriceEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v2, v3, v4

    .line 58
    .local v2, "symbolSize":F
    iget-object v3, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceTagLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    iget-object v3, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceTagRight:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 61
    const v3, 0x7f08043d

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/PriceEditText;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceEditText:Landroid/widget/EditText;

    .line 63
    iget-object v3, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/airbnb/android/views/PriceEditText$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/views/PriceEditText$1;-><init>(Lcom/airbnb/android/views/PriceEditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 74
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/airbnb/android/views/PriceEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, v3, v4

    .line 77
    .local v0, "currencySize":F
    iget-object v3, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 78
    return-void
.end method


# virtual methods
.method public addPriceTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    return-void
.end method

.method public getPrice()I
    .registers 5

    .prologue
    .line 108
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 112
    .local v1, "format":Ljava/text/NumberFormat;
    :try_start_4
    iget-object v3, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_11} :catch_17

    move-result-object v2

    .line 117
    .local v2, "number":Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    .end local v2    # "number":Ljava/lang/Number;
    :goto_16
    return v3

    .line 113
    :catch_17
    move-exception v0

    .line 114
    .local v0, "e":Ljava/text/ParseException;
    const/4 v3, 0x0

    goto :goto_16
.end method

.method public hidePriceIfZero(Z)V
    .registers 2
    .param p1, "hide"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/airbnb/android/views/PriceEditText;->mHideIfZero:Z

    .line 105
    return-void
.end method

.method public isPriceEmpty()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setPrice(ILjava/lang/String;)V
    .registers 12
    .param p1, "priceInt"    # I
    .param p2, "currency"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 82
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 83
    .local v3, "format":Ljava/text/NumberFormat;
    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 84
    .local v0, "c":Ljava/util/Currency;
    invoke-virtual {v3, v0}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 85
    invoke-virtual {v3, v8}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 86
    int-to-long v6, p1

    invoke-virtual {v3, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "priceString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "currencySymbol":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-object v4, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceTagRight:Landroid/widget/TextView;

    .line 91
    .local v4, "priceSign":Landroid/widget/TextView;
    :goto_26
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    if-gtz p1, :cond_3e

    iget-boolean v6, p0, Lcom/airbnb/android/views/PriceEditText;->mHideIfZero:Z

    if-eqz v6, :cond_3e

    const-string/jumbo v2, ""

    .line 96
    .local v2, "display":Ljava/lang/String;
    :goto_35
    iget-object v6, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void

    .line 89
    .end local v2    # "display":Ljava/lang/String;
    .end local v4    # "priceSign":Landroid/widget/TextView;
    :cond_3b
    iget-object v4, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceTagLeft:Landroid/widget/TextView;

    goto :goto_26

    .line 95
    .restart local v4    # "priceSign":Landroid/widget/TextView;
    :cond_3e
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_35
.end method

.method public setPriceTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 122
    return-void
.end method

.method public setPriceTextWidthToMatchParent()V
    .registers 5

    .prologue
    .line 129
    const v2, 0x7f08043b

    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/PriceEditText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 130
    .local v1, "rootView":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    iget-object v2, p0, Lcom/airbnb/android/views/PriceEditText;->mPriceEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 133
    return-void
.end method
