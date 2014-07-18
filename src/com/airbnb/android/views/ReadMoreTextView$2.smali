.class Lcom/airbnb/android/views/ReadMoreTextView$2;
.super Ljava/lang/Object;
.source "ReadMoreTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/ReadMoreTextView;->doSecondPass()V
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
    .line 183
    iput-object p1, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 187
    iget-object v10, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    # getter for: Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;
    invoke-static {v10}, Lcom/airbnb/android/views/ReadMoreTextView;->access$000(Lcom/airbnb/android/views/ReadMoreTextView;)Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    move-result-object v10

    sget-object v11, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->SECOND_PASS_SCHEDULED:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    if-eq v10, v11, :cond_b

    .line 225
    :goto_a
    return-void

    .line 191
    :cond_b
    iget-object v10, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v10}, Lcom/airbnb/android/views/ReadMoreTextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    .line 192
    .local v8, "layout":Landroid/text/Layout;
    iget-object v10, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v10}, Lcom/airbnb/android/views/ReadMoreTextView;->getMaxLines()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8}, Landroid/text/Layout;->getLineCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 194
    .local v6, "lastLine":I
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v10

    if-lez v10, :cond_9a

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    add-int v2, v10, v11

    .line 196
    .local v2, "endOfLastLine":I
    :goto_33
    # invokes: Lcom/airbnb/android/views/ReadMoreTextView;->getReadMore()Ljava/lang/CharSequence;
    invoke-static {}, Lcom/airbnb/android/views/ReadMoreTextView;->access$100()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sub-int v5, v2, v10

    .line 200
    .local v5, "indexWithoutReadMore":I
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 201
    .local v9, "startOfLastLine":I
    # invokes: Lcom/airbnb/android/views/ReadMoreTextView;->getReadMore()Ljava/lang/CharSequence;
    invoke-static {}, Lcom/airbnb/android/views/ReadMoreTextView;->access$100()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int v3, v9, v10

    .line 202
    .local v3, "endOfReadMore":I
    invoke-virtual {v8}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lt v10, v3, :cond_d8

    .line 203
    invoke-virtual {v8}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10, v9, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "lastLineText":Ljava/lang/String;
    # invokes: Lcom/airbnb/android/views/ReadMoreTextView;->getReadMore()Ljava/lang/CharSequence;
    invoke-static {}, Lcom/airbnb/android/views/ReadMoreTextView;->access$100()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d8

    .line 205
    iget-object v10, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    sget-object v11, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->ELLIPSIZING_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    # setter for: Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;
    invoke-static {v10, v11}, Lcom/airbnb/android/views/ReadMoreTextView;->access$002(Lcom/airbnb/android/views/ReadMoreTextView;Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;)Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 206
    invoke-virtual {v8}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/airbnb/android/views/ReadMoreTextView;->getReadMore()Ljava/lang/CharSequence;
    invoke-static {}, Lcom/airbnb/android/views/ReadMoreTextView;->access$100()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 208
    .local v4, "indexOfReadMore":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_9f

    .line 210
    iget-object v10, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    iget-object v11, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v11}, Lcom/airbnb/android/views/ReadMoreTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/airbnb/android/views/ReadMoreTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 194
    .end local v2    # "endOfLastLine":I
    .end local v3    # "endOfReadMore":I
    .end local v4    # "indexOfReadMore":I
    .end local v5    # "indexWithoutReadMore":I
    .end local v7    # "lastLineText":Ljava/lang/String;
    .end local v9    # "startOfLastLine":I
    :cond_9a
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    goto :goto_33

    .line 214
    .restart local v2    # "endOfLastLine":I
    .restart local v3    # "endOfReadMore":I
    .restart local v4    # "indexOfReadMore":I
    .restart local v5    # "indexWithoutReadMore":I
    .restart local v7    # "lastLineText":Ljava/lang/String;
    .restart local v9    # "startOfLastLine":I
    :cond_9f
    iget-object v10, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v10}, Lcom/airbnb/android/views/ReadMoreTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 215
    .local v1, "beforeLastLine":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v10}, Lcom/airbnb/android/views/ReadMoreTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v11}, Lcom/airbnb/android/views/ReadMoreTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v10, v4, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 216
    .local v0, "afterLastLine":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/CharSequence;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "\r\n"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v0, v11, v12

    invoke-static {v11}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/airbnb/android/views/ReadMoreTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 222
    .end local v0    # "afterLastLine":Ljava/lang/CharSequence;
    .end local v1    # "beforeLastLine":Ljava/lang/CharSequence;
    .end local v4    # "indexOfReadMore":I
    .end local v7    # "lastLineText":Ljava/lang/String;
    :cond_d8
    iget-object v10, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    sget-object v11, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->SECOND_PASS_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    # setter for: Lcom/airbnb/android/views/ReadMoreTextView;->mStatus:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;
    invoke-static {v10, v11}, Lcom/airbnb/android/views/ReadMoreTextView;->access$002(Lcom/airbnb/android/views/ReadMoreTextView;Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;)Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 224
    iget-object v10, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/CharSequence;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/airbnb/android/views/ReadMoreTextView$2;->this$0:Lcom/airbnb/android/views/ReadMoreTextView;

    invoke-virtual {v13}, Lcom/airbnb/android/views/ReadMoreTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    # invokes: Lcom/airbnb/android/views/ReadMoreTextView;->getReadMore()Ljava/lang/CharSequence;
    invoke-static {}, Lcom/airbnb/android/views/ReadMoreTextView;->access$100()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/airbnb/android/views/ReadMoreTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a
.end method
