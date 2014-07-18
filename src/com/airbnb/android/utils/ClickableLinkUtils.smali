.class public Lcom/airbnb/android/utils/ClickableLinkUtils;
.super Ljava/lang/Object;
.source "ClickableLinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;,
        Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static setupClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V
    .registers 15
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "htmlText"    # Ljava/lang/String;
    .param p2, "linkOnClickListener"    # Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;

    .prologue
    .line 25
    invoke-static {p1}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 26
    .local v5, "sequence":Ljava/lang/CharSequence;
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 27
    .local v8, "strBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v9, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const-class v11, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 29
    .local v0, "colorSpans":[Landroid/text/style/ForegroundColorSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v9, v0

    if-ge v3, v9, :cond_39

    .line 30
    aget-object v6, v0, v3

    .line 31
    .local v6, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 32
    .local v7, "start":I
    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 33
    .local v1, "end":I
    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 34
    .local v2, "flags":I
    new-instance v4, Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;

    invoke-direct {v4, v3}, Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;-><init>(I)V

    .line 35
    .local v4, "linkSpan":Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;
    invoke-virtual {v4, p2}, Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;->setOnClickListener(Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V

    .line 36
    invoke-virtual {v8, v4, v7, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 37
    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 39
    .end local v1    # "end":I
    .end local v2    # "flags":I
    .end local v4    # "linkSpan":Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;
    .end local v6    # "span":Landroid/text/style/ForegroundColorSpan;
    .end local v7    # "start":I
    :cond_39
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 40
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method public static setupClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V
    .registers 11
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "fullText"    # Ljava/lang/String;
    .param p2, "linkedText"    # Ljava/lang/String;
    .param p3, "linkOnClickListener"    # Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;

    .prologue
    const/4 v6, -0x1

    .line 52
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 54
    .local v3, "strBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .line 55
    .local v1, "linkIndex":I
    const/4 v0, 0x0

    .line 56
    .local v0, "lastIndex":I
    :cond_8
    :goto_8
    if-eq v0, v6, :cond_2a

    .line 57
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 59
    if-eq v0, v6, :cond_8

    .line 60
    new-instance v2, Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;

    invoke-direct {v2, v1}, Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;-><init>(I)V

    .line 61
    .local v2, "linkSpan":Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;
    invoke-virtual {v2, p3}, Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;->setOnClickListener(Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    const/16 v5, 0x21

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_8

    .line 67
    .end local v2    # "linkSpan":Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;
    :cond_2a
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 68
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
