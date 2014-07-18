.class Lcom/airbnb/android/views/ReadMoreTextView$1;
.super Ljava/lang/Object;
.source "ReadMoreTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/ReadMoreTextView;->doFirstPass()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/ReadMoreTextView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/ReadMoreTextView;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 143
    iget-object v4, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    # getter for: Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;
    invoke-static {v4}, Lcom/airbnb/android/views/ReadMoreTextView;->access$000(Lcom/airbnb/android/views/ReadMoreTextView;)Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    move-result-object v4

    sget-object v5, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->FIRST_PASS_SCHEDULED:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    if-eq v4, v5, :cond_c

    .line 177
    :goto_b
    return-void

    .line 147
    :cond_c
    iget-object v4, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/ReadMoreTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 148
    .local v3, "layout":Landroid/text/Layout;
    iget-object v4, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/ReadMoreTextView;->getMaxLines()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 150
    .local v1, "lastLine":I
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    iget-object v5, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v5}, Lcom/airbnb/android/views/ReadMoreTextView;->getMaxLines()I

    move-result v5

    if-lt v4, v5, :cond_42

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    iget-object v5, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v5}, Lcom/airbnb/android/views/ReadMoreTextView;->getMaxLines()I

    move-result v5

    if-ne v4, v5, :cond_4b

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-nez v4, :cond_4b

    .line 154
    :cond_42
    iget-object v4, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ReadMoreTextView;->setMaxLines(I)V

    .line 164
    :cond_4b
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 165
    .local v2, "lastLineStart":I
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_90

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    add-int v0, v2, v4

    .line 168
    .local v0, "endOfLastLine":I
    :goto_5b
    iget-object v4, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    sget-object v5, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->NEED_SECOND_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    # setter for: Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;
    invoke-static {v4, v5}, Lcom/airbnb/android/views/ReadMoreTextView;->access$002(Lcom/airbnb/android/views/ReadMoreTextView;Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;)Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 170
    iget-object v4, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v6}, Lcom/airbnb/android/views/ReadMoreTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6, v7, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    # invokes: Lcom/airbnb/android/views/ReadMoreTextView;->getReadMore()Ljava/lang/CharSequence;
    invoke-static {}, Lcom/airbnb/android/views/ReadMoreTextView;->access$100()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v7}, Lcom/airbnb/android/views/ReadMoreTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ReadMoreTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 165
    .end local v0    # "endOfLastLine":I
    :cond_90
    iget-object v4, p0, Lcom/airbnb/android/views/ReadMoreTextView$1;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/ReadMoreTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_5b
.end method
